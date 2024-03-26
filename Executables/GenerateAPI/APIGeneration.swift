import Foundation
import ArgumentParser

@main
struct APIGeneration: AsyncParsableCommand {
    @Argument(help: "The configuration of Godot.\n[float-32, float-64, double-32, double-64]")
    private var buildConfiguration: BuildConfiguration
    
    @Flag(name: .shortAndLong, help: "The generated files are not written to disk.")
    private var noWrite: Bool = false
    
    @Flag(name: .long, help: "Only a small subset of classes are generated.")
    private var subset: Bool = false
    
    func run() async throws {
        let jsonDecoder = JSONDecoder()
        jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
        let fileManager = FileManager.default
        
        guard let apiJsonFileURL = Bundle.module.url(
            forResource: "extension_api",
            withExtension: "json"
        ) else {
            fatalError("Cannot find 'extension_api.json' file.")
        }
        
        let generatedFolderURL = URL(filePath: #file)
            .deletingLastPathComponent()
            .deletingLastPathComponent()
            .deletingLastPathComponent()
            .appendingPathComponent("Sources")
            .appendingPathComponent("Godot")
            .appendingPathComponent("_Generated", isDirectory: true)
        
        let data = try Data(contentsOf: apiJsonFileURL)
        
        var extensionAPI = try jsonDecoder.decode(GodotExtensionAPI.self, from: data)
        
        // Delete _Generated directory if needed before making a new one.
        if !noWrite, fileManager.fileExists(atPath: generatedFolderURL.path) {
            try fileManager.removeItem(atPath: generatedFolderURL.path)
        }
        
        let classTypes = Set(extensionAPI.classes.map { $0.name })
        let builtinClassTypes = Set(extensionAPI.builtinClasses.lazy
            .filter { !$0.isCoveredByStandardLibrary }
            .map { $0.name }
        )
        
        try await GodotType.$godotClassTypes.withValue(classTypes) {
            try await GodotType.$godotBuiltinClassTypes.withValue(builtinClassTypes) {
                if subset {
                    extensionAPI = extensionAPI.subset()
                }
                
                let pool = files(
                    baseURL: generatedFolderURL,
                    extensionAPI: extensionAPI,
                    buildConfiguration: buildConfiguration
                )
                
                try await pool.generateFiles(writeFiles: !noWrite)
            }
        }
    }
    
    private func files(
        baseURL: URL,
        extensionAPI: GodotExtensionAPI,
        buildConfiguration: BuildConfiguration
    ) -> FilePool {
        var pool = FilePool(
            baseURL: baseURL,
            extensionAPI: extensionAPI,
            buildConfiguration: buildConfiguration
        )
        
        pool.append(
            source: ArchitectureRelatedSource(),
            nameURLComponent: "ArchitectureRelated.swift"
        )
        pool.append(
            source: GlobalEnumSource(),
            nameURLComponent: "GlobalEnums.swift"
        )
        pool.append(
            source: UtilityFunctionsSource(),
            nameURLComponent: "UtilityFunctions+Bindings.swift"
        )
        pool.append(
            source: RegisterGodotClassesSource(),
            nameURLComponent: "RegisterGodotClasses.swift"
        )
        pool.append(
            source: SingletonsSource(),
            nameURLComponent: "Singletons.swift"
        )
        
        for builtinClass in extensionAPI.builtinClasses {
            pool.append(
                source: builtinClass,
                nameURLComponent: "Builtin Structs/" + builtinClass.name.syntax() + "+Bindings.swift"
            )
        }
        
        for `class` in extensionAPI.classes {
            pool.append(
                source: `class`,
                nameURLComponent: "Classes/" + `class`.identifier + ".swift"
            )
        }
        
        for nativeStructure in extensionAPI.nativeStructures {
            pool.append(
                source: nativeStructure,
                nameURLComponent: "Native Structs/" + nativeStructure.name + ".swift"
            )
        }
        
        return pool
    }
}

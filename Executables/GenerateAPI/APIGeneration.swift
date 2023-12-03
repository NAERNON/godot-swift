import Foundation
import ArgumentParser

@main
struct APIGeneration: ParsableCommand {
    @Argument(help: "The configuration of Godot.\n[float-32, float-64, double-32, double-64]")
    private var buildConfiguration: BuildConfiguration
    
    @Flag(name: .shortAndLong, help: "The generated files are not written to disk.")
    private var noWrite: Bool = false
    
    @Flag(name: .long, help: "Only a small subset of classes are generated.")
    private var subset: Bool = false
    
    func run() throws {
        let jsonDecoder = JSONDecoder()
        jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
        let fileManager = FileManager.default
        
        guard let apiJsonFileURL = Bundle.module.url(
            forResource: "extension_api",
            withExtension: "json"
        ) else {
            fatalError("Cannot find 'extension_api.json' file")
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
        
        GodotType.godotClassTypes = Set(extensionAPI.classes.map { $0.name })
        GodotType.godotBuiltinClassTypes = Set(extensionAPI.builtinClassesToGenerate().map { $0.name })
        
        if subset {
            extensionAPI = extensionAPI.subset()
        }
        
        // MARK: Generate files
        
        // Delete _Generated directory if needed before making a new one.
        if !noWrite, fileManager.fileExists(atPath: generatedFolderURL.path) {
            try fileManager.removeItem(atPath: generatedFolderURL.path)
        }
        
        let godotFiles = [
            GeneratedFile.globalEnum(extensionAPI),
            GeneratedFile.real(type: buildConfiguration.floatingPointType),
            GeneratedFile.variantSize(extensionAPI, with: buildConfiguration),
            GeneratedFile.utilityFunctions(extensionAPI),
            GeneratedFile.registerGodotClasses(extensionAPI),
            GeneratedFile.singletons(extensionAPI),
        ] + extensionAPI.builtinClassesToGenerate().map {
            GeneratedFile.builtinClass(extensionAPI, for: $0, with: buildConfiguration)
        } + extensionAPI.classes.map {
            GeneratedFile.class(extensionAPI, for: $0)
        } + extensionAPI.nativeStructures.map {
            GeneratedFile.nativeStructure(extensionAPI, for: $0)
        }
        
        print("Generating files...")
        let generationStart = Date()
        
        for (index, file) in godotFiles.enumerated() {
            let printedText = "[\(index+1)/\(godotFiles.count)] Generating \(file.name)"
            print("\u{1B}[K" + printedText, terminator: "\r")
            if index < godotFiles.count-1 {
                fflush(stdout)
            } else {
                print("")
            }
            
            try process(
                file: file,
                fileManager: fileManager,
                at: generatedFolderURL)
        }
        
        let generationDuration = Date.now.timeIntervalSince(generationStart)
        
        print("Files generated! (\(String(format: "%.2f", generationDuration))s)")
    }
    
    // MARK: Process file
    
    private enum ProcessError: Error {
        case cannotGenerateDataFromCode
    }

    private func process(
        file: GeneratedFile,
        fileManager: FileManager,
        at url: URL
    ) throws {
        let fileURL = url.appending(path: file.path)
        
        guard !noWrite else {
            _ = try file.code()
            return
        }
        
        let filePathWithoutFileName = fileURL.deletingLastPathComponent()
        if !fileManager.fileExists(atPath: filePathWithoutFileName.path) {
            try fileManager.createDirectory(atPath: filePathWithoutFileName.path, withIntermediateDirectories: true)
        }
        
        guard let data = try file.code().data(using: .utf8) else {
            throw ProcessError.cannotGenerateDataFromCode
        }
        
        try data.write(to: fileURL)
    }
}

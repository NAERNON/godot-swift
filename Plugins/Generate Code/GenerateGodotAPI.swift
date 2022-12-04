import PackagePlugin
import Foundation

@main
struct GenerateGodotAPI: CommandPlugin {
    func performCommand(context: PackagePlugin.PluginContext, arguments: [String]) async throws {
        guard let godotExtensionHeadersTarget = try context.package.targets(named: ["GodotExtensionHeaders"]).first,
              let godotExtensionTarget = try context.package.targets(named: ["GodotExtension"]).first,
              let godotTarget = try context.package.targets(named: ["Godot"]).first else {
            return
        }

        let extensionApiFilePath = godotExtensionHeadersTarget.directory.appending(["include", "extension_api.json"])
        let extensionApiFileUrl = URL(fileURLWithPath: extensionApiFilePath.string)
        let data = try Data(contentsOf: extensionApiFileUrl)
        
        let jsonDecoder = JSONDecoder()
        let extensionApi = try jsonDecoder.decode(ExtensionApi.self, from: data)
        
        // MARK: Generate files
        
        let options = try Options(arguments: arguments)
        let codeFormatter = CodeFormatter()
        
        // Delete _Generated directories if needed before making new ones.
        if options.writesFiles {
            try godotTarget.removeGeneratedDirectoryIfNecessary()
            try godotExtensionTarget.removeGeneratedDirectoryIfNecessary()
        }
        
        let (godotFiles, godotExtensionFiles) = generateGododFiles(withExtensionApi: extensionApi,
                                                                   codeFormatter: codeFormatter,
                                                                   buildConfiguration: options.buildConfiguration,
                                                                   translatesCode: options.translatesCode)
        
        for file in godotFiles {
            try saveFile(file, withFormatter: codeFormatter, options: options, at: godotTarget.generatedPath)
        }

        for file in godotExtensionFiles {
            try saveFile(file, withFormatter: codeFormatter, options: options, at: godotExtensionTarget.generatedPath)
        }
    }
    
    // MARK: Generate code
    
    private func generateGododFiles(withExtensionApi extensionApi: ExtensionApi,
                                    codeFormatter: CodeFormatter,
                                    buildConfiguration: BuildConfiguration,
                                    translatesCode: Bool) -> (godotFiles: [any SwiftFile], godotExtensionFiles: [any SwiftFile]) {
        let builtinClassSizes = extensionApi.builtinClassSizes.first { $0.buildConfiguration == buildConfiguration.rawValue }!
        let memberOffsets = extensionApi.builtinClassMemberOffsets.first { $0.buildConfiguration == buildConfiguration.rawValue }!
        let builtinClassesToGenerate = extensionApi.builtinClasses.filter({ !ExtensionApi.isSwiftBaseType($0.name) })
        
        let utilityFiles: [any SwiftFile] = [
            GlobalEnumsFile(enums: extensionApi.globalEnums, translated: translatesCode),
            UtilityFunctionsFile(functions: extensionApi.utilityFunctions, translated: translatesCode)
        ]
        
        let classesFiles: [any SwiftFile] = extensionApi.classes.map({ `class` in
            ClassFile(class: `class`, translated: translatesCode)
                .insideDirectory(NamingConvention.snake.convert(string: `class`.apiType, to: .pascal))
                .insideDirectory("Classes")
        })
        
        let builtinClassesFiles: [any SwiftFile] = builtinClassesToGenerate.map({ builtinClass in
            BuiltinClassFile(builtinClass: builtinClass,
                             builtinClassSizes: builtinClassSizes,
                             builtinClassMemberOffset: memberOffsets,
                             translated: translatesCode)
                .insideDirectory("Builtin Structs")
        })
        
        let setBindingsFiles: [any SwiftFile] = [
            SetBindingsFile(builtinClasses: builtinClassesToGenerate)
        ]
        
        return (utilityFiles /*+ classesFiles */+ builtinClassesFiles,
                setBindingsFiles)
    }
    
    @CodeBuilder
    private func prefixedCode(_ code: some SwiftCode) -> some SwiftCode {
        Comment(style: .line) {
            "THIS FILE IS GENERATED. EDITS WILL BE LOST."
        }
        
        Spacer()
        
        code
    }
    
    // MARK: Save file
    
    private func saveFile(_ file: some SwiftFile,
                          withFormatter codeFormatter: CodeFormatter,
                          options: Options,
                          at path: Path) throws {
        Diagnostics.remark("Generating file named \"\(file.name())\".")
        
        let code = prefixedCode(file.code)
        
        print("Generating \(file.path.components(separatedBy: "/").last ?? file.path)")
        let codeString = codeFormatter.codeString(from: code)
        
        if options.print {
            print("-----BEGIN PRINT \"\(file.name())\"-----")
            print(codeString)
            print("-----END PRINT \"\(file.name())\"-----")
        }
        
        guard options.writesFiles else {
            return
        }
        
        let data = codeString.data(using: .utf8)!
        
        let fileManager = FileManager.default
        let filePath = path.appending([file.path])
        
        let filePathWithoutFileName = filePath.removingLastComponent()
        if !fileManager.fileExists(atPath: filePathWithoutFileName.string) {
            try fileManager.createDirectory(atPath: filePathWithoutFileName.string, withIntermediateDirectories: true)
        }
        
        try data.write(to: URL(fileURLWithPath: filePath.string))
    }
}

private extension Target {
    var generatedPath: Path {
        self.directory.appending(["_Generated"])
    }
    
    var generatedURL: URL {
        URL(fileURLWithPath: generatedPath.string, isDirectory: true)
    }
    
    func removeGeneratedDirectoryIfNecessary() throws {
        if FileManager.default.fileExists(atPath: self.generatedURL.path) {
            try FileManager.default.removeItem(atPath: self.generatedURL.path)
        }
    }
}

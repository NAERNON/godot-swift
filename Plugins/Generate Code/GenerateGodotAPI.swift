import PackagePlugin
import Foundation

@main
struct GenerateGodotAPI: CommandPlugin {
    func performCommand(context: PackagePlugin.PluginContext, arguments: [String]) async throws {
        guard let extensionHeaderTarget = try context.package.targets(named: ["GodotExtensionHeaders"]).first,
              let godotTarget = try context.package.targets(named: ["Godot"]).first else {
            return
        }

        let extensionApiFilePath = extensionHeaderTarget.directory.appending(["include", "extension_api.json"])
        let extensionApiFileUrl = URL(fileURLWithPath: extensionApiFilePath.string)
        let data = try Data(contentsOf: extensionApiFileUrl)
        
        let jsonDecoder = JSONDecoder()
        let extensionApi = try jsonDecoder.decode(ExtensionApi.self, from: data)
        
        // MARK: Generate files
        
        let options = try Options(arguments: arguments)
        
        let codeFormatter = CodeFormatter()
        let generatedFilesDirectoryPath = godotTarget.directory.appending(["_Generated"])
        let generatedFilesDirectoryURL = URL(fileURLWithPath: generatedFilesDirectoryPath.string, isDirectory: true)
        
        if options.writesFiles,
           FileManager.default.fileExists(atPath: generatedFilesDirectoryURL.path) {
            try FileManager.default.removeItem(atPath: generatedFilesDirectoryURL.path)
        }
        
        for generatedFile in generateAllGododFiles(withExtensionApi: extensionApi,
                                                   codeFormatter: codeFormatter,
                                                   buildConfiguration: options.buildConfiguration,
                                                   translatesCode: options.translatesCode) {
            try saveFile(generatedFile, withFormatter: codeFormatter, options: options, at: generatedFilesDirectoryPath)
        }
    }
    
    // MARK: Generate code
    
    private func generateAllGododFiles(withExtensionApi extensionApi: ExtensionApi,
                                       codeFormatter: CodeFormatter,
                                       buildConfiguration: BuildConfiguration,
                                       translatesCode: Bool) -> [any SwiftFile] {
        let builtinClassSizes = extensionApi.builtinClassSizes.first { $0.buildConfiguration == buildConfiguration.rawValue }!
        let memberOffsets = extensionApi.builtinClassMemberOffsets.first { $0.buildConfiguration == buildConfiguration.rawValue }!
        
        return [
            GlobalEnumsFile(enums: extensionApi.globalEnums, translated: translatesCode),
            UtilityFunctionsFile(functions: extensionApi.utilityFunctions, translated: translatesCode)
        ]
        +
        extensionApi.classes.map({ `class` in
            ClassFile(class: `class`, translated: translatesCode)
                .insideDirectory(NamingConvention.snake.convert(string: `class`.apiType, to: .pascal))
                .insideDirectory("Classes")
        extensionApi.builtinClasses.filter({ !$0.isPodType }).map({ builtinClass in
            BuiltinClassFile(builtinClass: builtinClass,
                             builtinClassSizes: builtinClassSizes,
                             builtinClassMemberOffset: memberOffsets,
                             translated: translatesCode)
                .insideDirectory("Builtin Classes")
        })
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

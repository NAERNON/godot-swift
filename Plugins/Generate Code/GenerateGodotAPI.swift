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
        let generatedFilesPath = godotTarget.directory.appending(["_Generated"])
        
        if FileManager.default.fileExists(atPath: generatedFilesPath.string) {
            try FileManager.default.removeItem(atPath: generatedFilesPath.string)
        }
        
        let file = GlobalEnumsFile(enums: extensionApi.globalEnums, translated: options.translatesCode)
        try saveFile(file, withFormatter: codeFormatter, options: options, at: generatedFilesPath)
    }
    
    private func saveFile(_ file: some SwiftFile,
                          withFormatter codeFormatter: CodeFormatter,
                          options: Options,
                          at path: Path) throws {
        Diagnostics.remark("Generating file named named \"\(file.name)\".")
        
        let code = prefixedCode(file.code)
        let codeString = codeFormatter.codeString(from: code)
        
        guard !options.printInsteadOfSave else {
            print("-----BEGIN PRINT \"\(file.name)\"-----")
            print(codeString)
            print("-----END PRINT \"\(file.name)\"-----")
            return
        }
        
        let data = codeString.data(using: .utf8)!
        
        let fileManager = FileManager.default
        let filePath = path.appending([file.name])
        if !fileManager.fileExists(atPath: path.string) {
            try fileManager.createDirectory(atPath: path.string, withIntermediateDirectories: true)
        }
        
        if !fileManager.createFile(atPath: filePath.string, contents: data) {
            Diagnostics.error("Cannot save file named \"\(file.name)\".")
        }
    }
    
    @CodeBuilder
    private func prefixedCode(_ code: some SwiftCode) -> some SwiftCode {
        Comment(style: .line) {
            "THIS FILE IS GENERATED. EDITS WILL BE LOST."
        }
        
        Spacer()
        
        code
    }
}

private struct Options {
    enum InitError: Error {
        case unrecognizedArgument(String)
    }
    
    let translatesCode: Bool
    let printInsteadOfSave: Bool
    
    init(arguments: [String]) throws {
        var translatesCode = true
        var printInsteadOfSave = false
        
        var index = 0
        while index < arguments.count {
            let argument = arguments[index]
            switch argument {
            case "--untranslated":
                translatesCode = false
                index += 1
            case "--print":
                printInsteadOfSave = true
                index += 1
            default:
                throw InitError.unrecognizedArgument(argument)
            }
        }
        
        self.translatesCode = translatesCode
        self.printInsteadOfSave = printInsteadOfSave
    }
}

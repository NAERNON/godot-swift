import PackagePlugin
import Foundation

@main
struct GenerateGodotAPI: CommandPlugin {
#warning("Use arguments to define translation and indentation")
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
        
        let codeFormatter = CodeFormatter(indentationWidth: 4)
        let generatedFilesPath = godotTarget.directory.appending(["_Generated"])
        
        try FileManager.default.removeItem(atPath: generatedFilesPath.string)
        
        let file = GlobalEnumsFile(enums: extensionApi.globalEnums, translated: true)
        try saveFile(file, withFormatter: codeFormatter, at: generatedFilesPath)
    }
    
    private func saveFile(_ file: some SwiftFile,
                          withFormatter codeFormatter: CodeFormatter,
                          at path: Path) throws {
        Diagnostics.remark("Generating file named named \"\(file.name)\".")
#warning("Comments on top of file")
        let code = file.code
        let codeString = codeFormatter.codeString(from: code)
        
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
}

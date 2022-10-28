import PackagePlugin
import Foundation

@main
struct GenerateGodotAPI: CommandPlugin {
    
#warning("Use arguments to define translation and indentation")
    func performCommand(context: PackagePlugin.PluginContext, arguments: [String]) async throws {
        guard let extensionHeaderTarget = try context.package.targets(named: ["GodotExtensionHeaders"]).first else {
            return
        }

        let extensionApiFilePath = extensionHeaderTarget.directory.appending(["include", "extension_api.json"])
        let extensionApiFileUrl = URL(fileURLWithPath: extensionApiFilePath.string)
        let data = try Data(contentsOf: extensionApiFileUrl)
        
        let jsonDecoder = JSONDecoder()
        let extensionApi = try jsonDecoder.decode(ExtensionApi.self, from: data)
        
        let codeFormatter = CodeFormatter(indentationWidth: 4)
        
        let file = GlobalEnumsFile(enums: extensionApi.globalEnums, translated: true)
        saveFile(file, withFormatter: codeFormatter)
        
        Diagnostics.error("swift-format invocation failed:")
    }
    
    private func saveFile(_ file: some SwiftFile, withFormatter codeFormatter: CodeFormatter) {
        let code = file.code
        let codeString = codeFormatter.codeString(from: code)
        
        #warning("Save file")
        print(codeString)
    }
    
}

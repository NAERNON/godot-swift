import SwiftSyntax

struct SingletonsSource: FileSource {
    func fileCodeContent(
        for extensionAPI: GodotExtensionAPI,
        with configuration: BuildConfiguration
    ) throws -> CodeBlockItemListSyntax {
        "import GodotExtensionHeaders"
        
        for singleton in extensionAPI.singletons {
            singleton.syntax()
        }
    }
}

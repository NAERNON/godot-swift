import SwiftSyntax

struct UtilityFunctionsSource: FileSource {
    func fileCodeContent(
        for extensionAPI: GodotExtensionAPI,
        with configuration: BuildConfiguration
    ) throws -> CodeBlockItemListSyntax {
        "import GodotExtensionHeaders"
        
        for function in extensionAPI.utilityFunctions {
            function.bindingDeclSyntax()
            try function.declSyntax()
        }
    }
}

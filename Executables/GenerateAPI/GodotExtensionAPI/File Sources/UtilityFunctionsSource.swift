
struct UtilityFunctionsSource: FileSource {
    func fileCodeContent(
        for extensionAPI: GodotExtensionAPI,
        with configuration: BuildConfiguration
    ) throws -> Syntax {
        Syntax(separator: .newlines(2)) {
            "import GodotExtensionHeaders"
            
            for function in extensionAPI.utilityFunctions {
                function.bindingDeclSyntax()
                function.declSyntax()
            }
        }
    }
}

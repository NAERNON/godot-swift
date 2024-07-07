
struct SingletonsSource: FileSource {
    func fileCodeContent(
        for extensionAPI: GodotExtensionAPI,
        with configuration: BuildConfiguration
    ) throws -> Syntax {
        Syntax(separator: .newlines(2)) {
            "import GodotExtensionHeaders"
            
            for singleton in extensionAPI.singletons {
                singleton.declSyntax()
            }
        }
    }
}

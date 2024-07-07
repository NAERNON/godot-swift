
struct GlobalEnumSource: FileSource {
    func fileCodeContent(
        for extensionAPI: GodotExtensionAPI,
        with configuration: BuildConfiguration
    ) throws -> Syntax {
        Syntax(separator: .newlines(2)) {
            for enumValue in extensionAPI.globalEnums {
                if let scope = enumValue.name.scopes().first {
                    // We do not generate the enums for the Variant type since
                    // they are already generated.
                    if scope != "Variant" {
                        """
                        extension \(scope) {
                            \(enumValue.declSyntax())
                        }
                        """
                    }
                } else {
                    enumValue.declSyntax()
                }
            }
        }
    }
}

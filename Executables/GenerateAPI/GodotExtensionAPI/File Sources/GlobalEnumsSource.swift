import SwiftSyntax

struct GlobalEnumSource: FileSource {
    func fileCodeContent(
        for extensionAPI: GodotExtensionAPI,
        with configuration: BuildConfiguration
    ) throws -> CodeBlockItemListSyntax {
        for enumValue in extensionAPI.globalEnums {
            if let scope = enumValue.name.scope() {
                // We do not generate the enums for the Variant type since
                // they are already generated.
                if scope != .variant {
                    try ExtensionDeclSyntax("extension \(raw: scope.syntax())") {
                        try enumValue.syntax()
                    }
                }
            } else {
                try enumValue.syntax()
            }
        }
    }
}

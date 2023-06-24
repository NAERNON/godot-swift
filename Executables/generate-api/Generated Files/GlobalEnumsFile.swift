import SwiftSyntax

extension GeneratedFile {
    static func globalEnum(_ extensionAPI: GodotExtensionAPI) -> GeneratedFile {
        .init(path: "GlobalEnums.swift") {
            for enumValue in extensionAPI.globalEnums {
                if let scope = enumValue.name.scope() {
                    // We do not generate the enums for the Variant type since
                    // they are already generated.
                    if scope != .variant {
                        try ExtensionDeclSyntax("extension \(raw: scope.syntax())") {
                            enumValue.syntax().with(\.trailingTrivia, .newlines(2))
                        }
                    }
                } else {
                    enumValue.syntax().with(\.trailingTrivia, .newlines(2))
                }
            }
        }
    }
}

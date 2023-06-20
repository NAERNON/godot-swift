import SwiftSyntax

extension GodotExtensionApi {
    func globalEnumFile() throws -> GeneratedFile {
        try .init(path: "GlobalEnums.swift") {
            for enumValue in globalEnums {
                if let scope = enumValue.name.scope() {
                    // We do not generate the enums for the Variant type since
                    // they are already generated.
                    if try scope != .init(cTypeSyntax: "Variant") {
                        try ExtensionDeclSyntax("extension \(raw: scope.syntax())") {
                            enumValue.syntax()
                        }
                    }
                } else {
                    enumValue.syntax()
                }
            }
        }
    }
}

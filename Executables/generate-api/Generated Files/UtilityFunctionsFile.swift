import SwiftSyntax

extension GeneratedFile {
    static func utilityFunctions(_ extensionAPI: GodotExtensionAPI) -> GeneratedFile {
        return .init(path: "UtilityFunctions.swift") {
            DeclSyntax("import GodotExtensionHeaders")
            
            for function in extensionAPI.utilityFunctions {
                function.extensionFunctionPointerSyntax()
                try function.syntax()
                    .with(\.trailingTrivia, .newlines(2))
            }
        }
    }
}

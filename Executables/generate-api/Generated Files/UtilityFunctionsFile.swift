import SwiftSyntax

extension GeneratedFile {
    static func utilityFunctions(_ extensionAPI: GodotExtensionAPI) -> GeneratedFile {
        return .init(path: "UtilityFunctions+Bindings.swift") {
            "import GodotExtensionHeaders"
            
            for function in extensionAPI.utilityFunctions {
                function.extensionFunctionPointerSyntax()
                try function.syntax()
                    .with(\.trailingTrivia, .newlines(2))
            }
        }
    }
}

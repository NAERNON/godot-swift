import SwiftSyntax

extension GeneratedFile {
    static func singletons(_ extensionAPI: GodotExtensionAPI) -> GeneratedFile {
        return .init(path: "Singletons.swift") {
            "import GodotExtensionHeaders"
            
            for singleton in extensionAPI.singletons {
                singleton.syntax()
                    .with(\.trailingTrivia, .newlines(2))
            }
        }
    }
}

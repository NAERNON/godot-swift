import SwiftSyntax
import SwiftSyntaxBuilder

// TODO: isRefcounted and isInstantiable, isVararg, isVirtual not used from ExtensionApi.Class. Is it ok or am I dumb ?
extension GeneratedFile {
    static func `class`(
        _ extensionAPI: GodotExtensionAPI,
        for `class`: GodotClass
    ) -> GeneratedFile {
        .init(path: "Classes/" + `class`.identifier + ".swift") {
            try ClassDeclSyntax("\(raw: classHeader(for: `class`))") {
                try `class`.initializerSyntax()
                    .with(\.leadingTrivia, .newline)
                    .with(\.trailingTrivia, .newlines(2))
                
                try `class`.instanceBindingsSyntax()
                    .with(\.leadingTrivia, .newline)
                    .with(\.trailingTrivia, .newlines(2))
                
                `class`.enumSyntax()
                    .with(\.leadingTrivia, .newline)
                    .with(\.trailingTrivia, .newlines(2))
                
                try `class`.methodsSyntax()
                    .with(\.leadingTrivia, .newline)
                    .with(\.trailingTrivia, .newlines(2))
            }
        }
    }
    
    private static func classHeader(for `class`: GodotClass) -> String {
        var header = "open class \(`class`.identifier)"
        if let superclass = `class`.inherits {
            header += ": \(superclass.syntax())"
        }
        return header
    }
}

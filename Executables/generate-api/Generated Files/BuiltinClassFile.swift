import SwiftSyntax
import SwiftSyntaxBuilder

extension GeneratedFile {
    static func builtinClass(
        _ extensionAPI: GodotExtensionAPI,
        for builtinClass: GodotBuiltinClass,
        with configuration: BuildConfiguration
    ) -> GeneratedFile {
        .init(path: "Builtin Structs/" + builtinClass.identifier + "+Bindings.swift") {
            let classSize = extensionAPI.builtinClassSizes.size(ofClass: builtinClass.name, for: configuration)!
            
            DeclSyntax("import GodotExtensionHeaders")
            
            try ExtensionDeclSyntax("public extension \(raw: builtinClass.identifier)") {
                builtinClass.constantsSyntax()
                    .with(\.leadingTrivia, .newline)
                    .with(\.trailingTrivia, .newlines(2))
                
                builtinClass.enumSyntax()
                    .with(\.leadingTrivia, .newline)
                    .with(\.trailingTrivia, .newlines(2))
                
                try builtinClass.constructorsSyntax(classSize: classSize)
                    .with(\.leadingTrivia, .newline)
                    .with(\.trailingTrivia, .newlines(2))
                
                try builtinClass.operatorsSyntax()
                    .with(\.leadingTrivia, .newline)
                    .with(\.trailingTrivia, .newlines(2))
                
                try builtinClass.getterSetterSyntax()
                    .with(\.leadingTrivia, .newline)
                    .with(\.trailingTrivia, .newlines(2))
                
                builtinClass.keyGetterSetterSyntax()
                    .with(\.leadingTrivia, .newline)
                    .with(\.trailingTrivia, .newlines(2))
                
                try builtinClass.methodsSyntax()
                    .with(\.leadingTrivia, .newline)
                    .with(\.trailingTrivia, .newlines(2))
            }
            
            DeclSyntax("""
            extension \(raw: builtinClass.name.syntax()): CustomDebugStringConvertible {
                public var debugDescription: String {
                    Variant(self).debugDescription
                }
            }
            """).with(\.leadingTrivia, .newlines(2))
        }
    }
}

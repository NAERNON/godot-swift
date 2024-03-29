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
            
            "import GodotExtensionHeaders"
            
            try ExtensionDeclSyntax("extension \(raw: builtinClass.identifier)") {
                builtinClass.constantsSyntax()
                    .with(\.trailingTrivia, .newlines(2))
                
                try builtinClass.enumSyntax()
                    .with(\.trailingTrivia, .newlines(2))
                
                try builtinClass.constructorsSyntax(classSize: classSize)
                    .with(\.trailingTrivia, .newlines(2))
                
                try builtinClass.operatorsSyntax()
                    .with(\.trailingTrivia, .newlines(2))
                
                try builtinClass.getterSetterSyntax()
                    .with(\.trailingTrivia, .newlines(2))
                
                builtinClass.keyGetterSetterSyntax()
                    .with(\.trailingTrivia, .newlines(2))
                
                try builtinClass.methodsSyntax()
                    .with(\.trailingTrivia, .newlines(2))
            }
            
            """
            extension \(raw: builtinClass.name.syntax()): CustomDebugStringConvertible {
                public var debugDescription: String {
                    Variant(self).debugDescription
                }
            }
            """
        }
    }
}

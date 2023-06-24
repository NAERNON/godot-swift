import SwiftSyntax
import SwiftSyntaxBuilder

extension GeneratedFile {
    static func builtinClass(
        _ extensionAPI: GodotExtensionAPI,
        for builtinClass: GodotBuiltinClass,
        with configuration: BuildConfiguration
    ) -> GeneratedFile {
        .init(path: "Builtin Structs/" + builtinClass.identifier + "+Bindings.swift") {
            let useOpaque = extensionAPI.typeIsBuiltinGodotClassWithOpaque(builtinClass.name)
            let classSize = extensionAPI.builtinClassSizes.size(ofClass: builtinClass.name, for: configuration)!
            
            if useOpaque {
                try StructDeclSyntax("public struct \(raw: builtinClass.identifier)") {
                    try bodySyntax(
                        builtinClass: builtinClass,
                        useOpaque: useOpaque,
                        classSize: classSize,
                        extensionAPI: extensionAPI
                    )
                }
            } else {
                try ExtensionDeclSyntax("public extension \(raw: builtinClass.identifier)") {
                    try bodySyntax(
                        builtinClass: builtinClass,
                        useOpaque: useOpaque,
                        classSize: classSize,
                        extensionAPI: extensionAPI
                    )
                }
            }
            
            DeclSyntax("""
            extension \(raw: builtinClass.name.syntax()): CustomDebugStringConvertible {
                public var debugDescription: Swift.String {
                    Variant(self).debugDescription
                }
            }
            """).with(\.leadingTrivia, .newlines(2))
        }
    }
    
    @MemberDeclListBuilder
    private static func bodySyntax(
        builtinClass: GodotBuiltinClass,
        useOpaque: Bool,
        classSize: Int,
        extensionAPI: GodotExtensionAPI
    ) throws -> MemberDeclListSyntax {
        let options: GodotTypeSyntaxOptions = if builtinClass.name == "Color" {
            []
        } else if useOpaque {
            [.floatAsDouble]
        } else {
            [.floatAsReal]
        }
        
        builtinClass.constantsSyntax()
            .with(\.leadingTrivia, .newline)
            .with(\.trailingTrivia, .newlines(2))
        
        builtinClass.enumSyntax()
            .with(\.leadingTrivia, .newline)
            .with(\.trailingTrivia, .newlines(2))
        
        try builtinClass.constructorsSyntax(useOpaque: useOpaque, classSize: classSize, options: options)
            .with(\.leadingTrivia, .newline)
            .with(\.trailingTrivia, .newlines(2))
        
        try builtinClass.operatorsSyntax(options: options)
            .with(\.leadingTrivia, .newline)
            .with(\.trailingTrivia, .newlines(2))
        
        try builtinClass.getterSetterSyntax(useOpaque: useOpaque, options: options)
            .with(\.leadingTrivia, .newline)
            .with(\.trailingTrivia, .newlines(2))
        
        try builtinClass.methodsSyntax(extensionAPI: extensionAPI, options: options)
            .with(\.leadingTrivia, .newline)
            .with(\.trailingTrivia, .newlines(2))
        
        builtinClass.propertiesBindingsSyntax()
            .with(\.leadingTrivia, .newline)
            .with(\.trailingTrivia, .newlines(2))
        
        try builtinClass.setInitializersBindingsSyntax()
            .with(\.leadingTrivia, .newline)
            .with(\.trailingTrivia, .newlines(2))
        
        try builtinClass.setFunctionBindingsSyntax()
            .with(\.leadingTrivia, .newline)
            .with(\.trailingTrivia, .newlines(2))
        
        if extensionAPI.typeIsBuiltinGodotClassWithOpaque(builtinClass.name) {
            builtinClass.opaqueValueSyntax()
        }
    }
}

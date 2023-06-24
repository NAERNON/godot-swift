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
        }
    }
    
    @MemberDeclListBuilder
    private static func bodySyntax(
        builtinClass: GodotBuiltinClass,
        useOpaque: Bool,
        classSize: Int,
        extensionAPI: GodotExtensionAPI
    ) throws -> MemberDeclListSyntax {
        builtinClass.constantsSyntax()
            .with(\.leadingTrivia, .newline)
            .with(\.trailingTrivia, .newlines(2))
        
        builtinClass.enumSyntax()
            .with(\.leadingTrivia, .newline)
            .with(\.trailingTrivia, .newlines(2))
        
        try builtinClass.constructorsSyntax(useOpaque: useOpaque, classSize: classSize)
            .with(\.leadingTrivia, .newline)
            .with(\.trailingTrivia, .newlines(2))
        
        try builtinClass.operatorsSyntax()
            .with(\.leadingTrivia, .newline)
            .with(\.trailingTrivia, .newlines(2))
        
        try builtinClass.getterSetterSyntax()
            .with(\.leadingTrivia, .newline)
            .with(\.trailingTrivia, .newlines(2))
        
        try builtinClass.methodsSyntax(extensionAPI: extensionAPI)
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
    }
}

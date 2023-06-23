import SwiftSyntax

extension GeneratedFile {
    static func builtinClass(
        _ extensionAPI: GodotExtensionAPI,
        for builtinClass: GodotBuiltinClass,
        with configuration: BuildConfiguration
    ) throws -> GeneratedFile {
        try .init(path: "Builtin Structs/" + builtinClass.identifier + "+Bindings.swift") {
            let usesOpaque = extensionAPI.typeIsBuiltinGodotClassWithOpaque(builtinClass.name)
            
            try builtinClass.syntax(
                extensionInsteadOfStructDecl: !usesOpaque,
                useOpaque: usesOpaque,
                classSize: extensionAPI.builtinClassSizes.size(ofClass: builtinClass.name, for: configuration)!
            )
        }
    }
}

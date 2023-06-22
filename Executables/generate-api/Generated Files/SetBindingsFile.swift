import SwiftSyntax

private let baseTypes: Set<GodotType> = [
    "Nil",
    "bool",
    "int",
    "float",
]

extension GeneratedFile {
    static func setBindings(_ extensionAPI: GodotExtensionAPI) throws -> GeneratedFile {
        try .init(path: "SetBindings.swift") {
            try ExtensionDeclSyntax("internal extension GodotExtension") {
                try FunctionDeclSyntax("static func setBuiltinStructsBindings()") {
                    for builtinClass in extensionAPI.builtinClasses {
                        if builtinClassHasBindings(builtinClass) {
                            DeclSyntax("\(raw: builtinClass.identifier).setInitBindings()")
                        }
                    }
                    
                    for builtinClass in extensionAPI.builtinClasses {
                        if builtinClassHasBindings(builtinClass) {
                            DeclSyntax("\(raw: builtinClass.identifier).setFunctionBindings()")
                        }
                    }
                }.with(\.trailingTrivia, .newlines(2))
                
                try FunctionDeclSyntax("static func registerGodotClasses()") {
                    for `class` in extensionAPI.classes {
                        DeclSyntax("\(raw: `class`.identifier)._gd_exposeToGodot()")
                    }
                }
            }
        }
    }
    
    static func builtinClassHasBindings(_ builtinClass: GodotBuiltinClass) -> Bool {
        !baseTypes.contains(builtinClass.name)
    }
}

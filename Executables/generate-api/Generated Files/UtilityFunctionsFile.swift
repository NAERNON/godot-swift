import SwiftSyntax

extension GeneratedFile {
    static func utilityFunctions(_ extensionAPI: GodotExtensionAPI) throws -> GeneratedFile {
        return try .init(path: "UtilityFunctions.swift") {
            for function in extensionAPI.utilityFunctions {
                try functionSyntax(function, extensionAPI: extensionAPI)
                    .with(\.trailingTrivia, .newlines(2))
            }
            
            try EnumDeclSyntax("enum UtilityFunctions") {
                try FunctionDeclSyntax("static func setBindings()") {
                    DeclSyntax("var _function_name: StringName!")
                    for function in extensionAPI.utilityFunctions {
                        ExprSyntax("""
                        _function_name = "\(raw: function.baseName)"
                        withUnsafeGodotMutableAccessPointer(to: &_function_name) { __ptr__function_name in
                            \(raw: function.functionPtrSyntax) = GodotExtension.interface.variant_get_ptr_utility_function(__ptr__function_name, \(raw: function.hash))
                        }
                        """)
                    }
                }.with(\.trailingTrivia, .newlines(2))
                
                for function in extensionAPI.utilityFunctions {
                    DeclSyntax("fileprivate static var \(raw: function.functionPtrSyntax): GDExtensionPtrUtilityFunction!")
                }
            }
        }
    }
    
    private static func functionSyntax(
        _ function: GodotUtilityFunction,
        extensionAPI: GodotExtensionAPI) throws -> FunctionDeclSyntax {
        let options: GodotTypeSyntaxOptions = .floatAsDouble
        
        return try function.declSyntax(options: options) {
            if let returnType = function.returnType {
                try returnType.instantiationSyntax(
                    isGodotObject: extensionAPI.typeIsGodotClass(returnType),
                    options: options
                ) { instanceName in
                    try function.argumentsPackPointerAccessSyntax { packName in
                        try returnType.pointerAccessSyntax(
                            instanceName: instanceName,
                            mutability: .mutable
                        ) { instancePointerName in
                            DeclSyntax("""
                            UtilityFunctions.\(raw: function.functionPtrSyntax)(\(raw: instancePointerName), \(raw: packName), \(raw: function.argumentsCountSyntax))
                            """)
                        }
                    }
                }
            } else {
                try function.argumentsPackPointerAccessSyntax { packName in
                    DeclSyntax("""
                    UtilityFunctions.\(raw: function.functionPtrSyntax)(nil, \(raw: packName), \(raw: function.argumentsCountSyntax))
                    """)
                }
            }
        }
        .addModifier(.init(name: .keyword(.public)))
    }
}

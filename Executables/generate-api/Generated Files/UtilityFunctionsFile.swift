import SwiftSyntax

extension GeneratedFile {
    static func utilityFunctions(_ extensionAPI: GodotExtensionAPI) -> GeneratedFile {
        return .init(path: "UtilityFunctions.swift") {
            DeclSyntax("import GodotExtensionHeaders")
            
            for function in extensionAPI.utilityFunctions {
                try functionSyntax(function)
                    .with(\.trailingTrivia, .newlines(2))
            }
            
            try EnumDeclSyntax("enum UtilityFunctions") {
                try FunctionDeclSyntax("static func setBindings()") {
                    DeclSyntax("var _function_name: StringName!")
                    for function in extensionAPI.utilityFunctions {
                        ExprSyntax("""
                        _function_name = "\(raw: function.baseName)"
                        _function_name.withUnsafeRawPointer { __ptr__function_name in
                            \(raw: function.functionPtrSyntax) = gdextension_interface_variant_get_ptr_utility_function(__ptr__function_name, \(raw: function.hash))
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
    
    private static func functionSyntax(_ function: GodotUtilityFunction) throws -> FunctionDeclSyntax {
        let options: GodotTypeSyntaxOptions = .floatAsDouble
        
        return try function.declSyntax(options: options) {
            if let returnType = function.returnType {
                try returnType.instantiationSyntax(options: options) { instanceType, instanceName in
                    try function.argumentsPackPointerAccessSyntax { packName in
                        try instanceType.pointerAccessSyntax(
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

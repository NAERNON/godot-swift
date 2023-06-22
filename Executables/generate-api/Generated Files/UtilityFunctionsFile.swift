import SwiftSyntax

extension GeneratedFile {
    static func utilityFunctions(_ functions: [GodotUtilityFunction]) throws -> GeneratedFile {
        return try .init(path: "UtilityFunctions.swift") {
            for function in functions {
                try functionSyntax(function)
                    .with(\.trailingTrivia, .newlines(2))
            }
            
            try EnumDeclSyntax("enum UtilityFunctions") {
                try FunctionDeclSyntax("static func setBindings()") {
                    DeclSyntax("var _function_name: StringName!")
                    for function in functions {
                        ExprSyntax("""
                        _function_name = "\(raw: function.name)"
                        withUnsafeGodotMutableAccessPointer(to: &_function_name) { __ptr__function_name in
                            \(raw: function.functionPtrSyntax) = GodotExtension.interface.variant_get_ptr_utility_function(__ptr__function_name, \(raw: function.hash))
                        }
                        """)
                    }
                }.with(\.trailingTrivia, .newlines(2))
                
                for function in functions {
                    DeclSyntax("fileprivate static var \(raw: function.functionPtrSyntax): GDExtensionPtrUtilityFunction!")
                }
            }
        }
    }
    
    private static func functionSyntax(_ function: GodotUtilityFunction) throws -> FunctionDeclSyntax {
        let options: GodotSyntaxOptions = .floatAsDouble
        
        let countString = String(function.arguments?.count ?? 0)
        
        return try function.declSyntax(options: options) {
            if let returnType = function.returnType {
                try returnType.instantiationSyntax(options: options) { instanceName in
                    try function.argumentsPackPointerAccessSyntax { packName in
                        try returnType.pointerAccessSyntax(
                            instanceName: instanceName,
                            mutability: .mutable
                        ) { instancePointerName in
                            DeclSyntax("""
                            UtilityFunctions.\(raw: function.functionPtrSyntax)(\(raw: instancePointerName), \(raw: packName), \(raw: countString))
                            """)
                        }
                    }
                }
            }
        }
        .addModifier(.init(name: .keyword(.public)))
    }
}

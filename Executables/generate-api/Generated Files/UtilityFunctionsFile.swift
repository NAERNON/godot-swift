import SwiftSyntax

extension GeneratedFile {
    static func utilityFunctions(_ functions: [GodotUtilityFunction]) throws -> GeneratedFile {
        return try .init(path: "UtilityFunctions.swift") {
            for function in functions {
                try function.declSyntax(options: .floatAsDouble) {
                    
                }
                .addModifier(.init(name: .keyword(.public)))
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
}

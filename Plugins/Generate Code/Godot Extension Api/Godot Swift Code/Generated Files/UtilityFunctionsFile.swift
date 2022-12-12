import Foundation

struct UtilityFunctionsFile: GeneratedSwiftFile {
    let path = "UtilityFunctions.swift"
    let functions: [ExtensionApi.UtilityFunction]
    
    init(functions: [ExtensionApi.UtilityFunction]) {
        self.functions = functions
    }
    
    var code: some SwiftCode {
        Import.foundation
        Import.godotExtensionHeaders
        
        Spacer()
        
        for function in functions {
            function.code()
            Spacer()
        }
        
        Mark(text: "Bindings", isSeparator: true)
        
        Spacer()
        
        Enum("UtilityFunctions") {
            Func(name: "setBindings") {
                Property("_function_name").varDefined().type("StringName!")
                Spacer()
                
                for function in functions {
                    Property("_function_name").assign(value: "\"\(function.name.godotName)\"")
                    "_function_name.withUnsafeNativePointer { _name_ptr in"
                    Property(function.godotFunctionPtrName)
                        .assign(value: "GodotInterface.native.variant_get_ptr_utility_function(_name_ptr, \(function.hash))")
                        .indentation()
                    "}"
                }
            }.internal().static()
            
            Spacer()
            
            for function in functions {
                Property(function.godotFunctionPtrName).varDefined().fileprivate().static()
                    .type("GDNativePtrUtilityFunction!")
            }
        }.internal()
    }
}


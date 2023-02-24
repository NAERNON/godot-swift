import Foundation
import CodeGenerator

struct UtilityFunctionsFile: GeneratedFile {
    let path = "UtilityFunctions.swift"
    let functions: [ExtensionApi.UtilityFunction]
    
    init(functions: [ExtensionApi.UtilityFunction]) {
        self.functions = functions
    }
    
    var code: some Code {
        Import.foundation
        Import.godotExtensionHeaders
        
        for function in functions {
            function.code()
        }
        
        Mark("Bindings", isSeparator: true)
        
        Enum("UtilityFunctions") {
            Func(name: "setBindings") {
                Var("_function_name").typed("StringName!")
                
                for function in functions {
                    Property("_function_name").assign("\"\(function.name.godotName)\"")
                    Property("_function_name").pointerAccess(type: .stringName, mutability: .mutable) { functionNamePointer in
                        Property(function.godotFunctionPtrName)
                            .assign("GodotInterface.native.variant_get_ptr_utility_function(\(functionNamePointer), \(function.hash))")
                    }
                }
            }.internal().static()
            
            for function in functions {
                Var(function.godotFunctionPtrName).fileprivate().static()
                    .typed("GDNativePtrUtilityFunction!")
            }
        }.internal()
    }
}


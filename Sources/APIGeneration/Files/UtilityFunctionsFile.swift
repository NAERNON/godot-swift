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
        
        Space()
        
        Stack {
            for function in functions {
                function.code()
            }
            
            Mark("Bindings", isSeparator: true)
            
            bindingCode
        }
    }
    
    private var bindingCode: some Code {
        Enum("UtilityFunctions") {
            Func(name: "setBindings") {
                Var("_function_name").typed("StringName!").padding(.bottom)
                
                for function in functions {
                    Property("_function_name").assign("\"\(function.name.baseName)\"")
                    Property("_function_name").pointerAccess(type: .stringName, mutability: .mutable) { functionNamePointer in
                        Property(function.godotFunctionPtrName)
                            .assign("GodotExtension.shared.interface.variant_get_ptr_utility_function(\(functionNamePointer), \(function.hash))")
                    }
                }
            }.static().internal()
            
            Space()
            
            for function in functions {
                Var(function.godotFunctionPtrName).static().fileprivate()
                    .typed("GDNativePtrUtilityFunction!")
            }
        }.internal()
    }
}


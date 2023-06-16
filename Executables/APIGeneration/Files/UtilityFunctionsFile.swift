import Foundation
import CodeGenerator

struct UtilityFunctionsFile: File {
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
            ForEach(functions) { function in
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
                
                ForEach(functions) { function in
                    Property("_function_name").assign("\"\(function.name.baseName)\"")
                    Property("_function_name").pointerAccess(type: .stringName, mutability: .mutable) { functionNamePointer in
                        Property(function.godotFunctionPtrName)
                            .assign("GodotExtension.interface.variant_get_ptr_utility_function(\(functionNamePointer), \(function.hash))")
                    }
                }
            }.static().internal()
            
            Space()
            
            ForEach(functions) { function in
                Var(function.godotFunctionPtrName).static().fileprivate()
                    .typed("GDExtensionPtrUtilityFunction!")
            }
        }.internal()
    }
}


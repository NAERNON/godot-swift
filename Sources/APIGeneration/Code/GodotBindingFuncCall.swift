import Foundation
import CodeGenerator

/// A `GodotBindingFuncCall` is a shortcut to a function with many translation being done for Godot.
struct GodotBindingFuncCall<Function>: Code where Function: GodotBindingFuncDefinition {
    let godotFunction: Function
    let type: InstanceType?
    
    init(_ godotFunction: Function,
         type: InstanceType?) {
        self.godotFunction = godotFunction
        self.type = type
    }
    
    var body: some Code {
        let (name, parameters) = translatedNameAndParameters
        
        name
    }
    
    private var arguments: [ExtensionApi.Argument] {
        godotFunction.bindingArguments ?? []
    }
    
    private var returnType: InstanceType? {
        godotFunction.bindingReturnType
    }
    
    private var returnTypeString: String? {
        returnType?.optional(returnType?.isGodotClassType == true)
            .toSwift(definedInside: type)
    }
    
    private var translatedNameAndParameters: (name: String, parameters: [FunctionParameter]) {
        var (translatedName, translatedParameters) = godotFunction.bindingName.toSwift(withType: type, arguments: arguments)
        
        if godotFunction.isVararg {
            translatedParameters.append(.named("rest", type: InstanceType.variant.toSwift(), isVararg: true))
        }
        
        return (translatedName, translatedParameters)
    }
}

import Foundation

struct FunctionName {
    var godotName: String
    
    func toSwift(withType type: InstanceType?,
                 arguments: [ExtensionApi.Argument]?) -> (name: String,
                                                          parameters: [FunctionParameter]) {
        let (translatedName, translatedParameters) = CodeLanguage.c.translateFunction(
            name: godotName,
            parameters: arguments?.map({ .init(name: $0.name.replacingOccurrences(of: " ", with: ""),
                                               label: nil,
                                               isLabelHidden: false) }) ?? [],
            to: .swift)
        
        let functionName = CodeLanguage.swift.protectNameIfKeyword(for: customName() ?? translatedName)
        let functionParameters = functionParameters(translatedParameters: translatedParameters, type: type, arguments: arguments)
        return (functionName, functionParameters)
    }
    
    /// Returns `true` if the function should not be a function but a var.
    func shouldBeVar() -> Bool {
        switch godotName {
        case "unary-": return true
        case "unary+": return false
        case "hash": return true
        case "size": return true
        case "isEmpty": return true
        default: return false
        }
    }
    
    /// A custom name for the function.
    private func customName() -> String? {
        switch godotName {
        case "unary-": return "negative"
        case "unary+": return "positive"
        case "hash": return "hashValue"
        case "size": return "count"
        default: return nil
        }
    }
    
    private func functionParameters(translatedParameters: [CodeLanguage.FunctionParameter],
                                    type: InstanceType?,
                                    arguments: [ExtensionApi.Argument]?) -> [FunctionParameter] {
        guard let arguments else {
            return []
        }
        
        var parameters = [FunctionParameter]()
        for (index, argument) in arguments.enumerated() {
            let translatedParameter = translatedParameters[index]
            let parameter = functionParameter(translatedParameter: translatedParameter,
                                              type: type,
                                              argument: argument)
            
            parameters.append(parameter)
        }
        
        return parameters
    }
    
    private func functionParameter(translatedParameter: CodeLanguage.FunctionParameter,
                                   type: InstanceType?,
                                   argument: ExtensionApi.Argument) -> FunctionParameter {
        let type = argument.type.toSwift(scopeType: type)
        let defaultParameterValue: FunctionParameter.DefaultValue
        if let defaultValue = argument.defaultValue {
            defaultParameterValue = .codeString(defaultValue.toSwift(forType: argument.type))
        } else {
            defaultParameterValue = .none
        }
        
        return .named(translatedParameter.name,
                      type: type,
                      defaultValue: defaultParameterValue,
                      label: translatedParameter.functionParameterLabel)
    }
    
    /// Godot operators might not be correct operators in Swift.
    /// In this case, we make it a member function, and not a static function.
    ///
    /// For instance, the `in` operator in Godot should be a member function: `value.in(_ other: )`.
    var isImpossibleOperator: Bool {
        switch godotName {
        case "unary-",
            "unary+",
            "in": return true
        default: return false
        }
    }
    
    /// The name of the operation (if applies).
    var operationName: String? {
        switch godotName {
        case "==": return "EQUAL"
        case "!=": return "NOT_EQUAL"
        case "<": return "LESS"
        case "<=": return "LESS_EQUAL"
        case ">": return "GREATER"
        case ">=": return "GREATER_EQUAL"
            
            // mathematic
        case "+": return "ADD"
        case "-": return "SUBTRACT"
        case "*": return "MULTIPLY"
        case "/": return "DIVIDE"
        case "unary-": return "NEGATE"
        case "unary+": return "POSITIVE"
        case "%": return "MODULE"
            
            // bitwise
        case "<<": return "SHIFT_LEFT"
        case ">>": return "SHIFT_RIGHT"
        case "&": return "BIT_AND"
        case "|": return "BIT_OR"
        case "^": return "BIT_XOR"
        case "~": return "BIT_NEGATE"
            
            // containment
        case "in": return "IN"
        default: return nil
        }
    }
}

extension FunctionName: Decodable {
    init(from decoder: Decoder) throws {
        godotName = try String(from: decoder)
    }
}

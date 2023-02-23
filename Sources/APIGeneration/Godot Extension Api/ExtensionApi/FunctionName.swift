import Foundation

struct FunctionName {
    var godotName: String
    
    init(godotName: String) {
        self.godotName = godotName
    }
    
    private var isUnderscored: Bool? = nil
    
    var correctUnderscoredName: String {
        if let isUnderscored {
            if isUnderscored {
                return godotName.first == "_" ? godotName : "_" + godotName
            } else {
                return godotName.first == "_" ? String(godotName.dropFirst()) : godotName
            }
        } else {
            return godotName
        }
    }
    
    func toSwift(withType type: InstanceType?,
                 arguments: [ExtensionApi.Argument]?) -> (name: String,
                                                          parameters: [FunctionParameter]) {
        let (translatedName, translatedParameters) = CodeLanguage.c.translateFunction(
            name: correctUnderscoredName,
            parameters: arguments?.map({ .init(name: $0.name.replacingOccurrences(of: " ", with: ""),
                                               label: nil,
                                               isLabelHidden: false) }) ?? [],
            to: .swift)
        
        let functionName = CodeLanguage.swift.protectNameIfKeyword(for: customName() ?? translatedName)
        let functionParameters = functionParameters(translatedParameters: translatedParameters, type: type, arguments: arguments)
        return (functionName, functionParameters)
    }
    
    /// A custom name for the function.
    private func customName() -> String? {
        if correctUnderscoredName == "init" {
            return "initialize"
        }
        
        return nil
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
        let defaultParameterValue: FunctionParameter.DefaultValue
        if let defaultValue = argument.defaultValue {
            defaultParameterValue = .codeString(argument.type.instantationCode(forValue: defaultValue))
        } else {
            defaultParameterValue = .none
        }
        
        return .named(CodeLanguage.swift.protectNameIfKeyword(for: translatedParameter.name),
                      type: argument.type.optional(argument.type.isGodotClassType).toSwift(definedInside: type),
                      defaultValue: defaultParameterValue,
                      label: translatedParameter.functionParameterLabel)
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
    
    func underscored(_ state: Bool = true) -> FunctionName {
        var new = self
        new.isUnderscored = state
        return new
    }
    
    static func == (lhs: FunctionName, rhs: FunctionName) -> Bool {
        lhs.correctUnderscoredName == rhs.correctUnderscoredName
    }
}

extension FunctionName: Decodable {
    init(from decoder: Decoder) throws {
        godotName = try String(from: decoder)
    }
}

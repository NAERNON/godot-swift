import Foundation

extension CodeLanguage {
    public struct FunctionParameter {
        let name: String
        let label: String?
        let isLabelHidden: Bool
    }
    
    public func translateFunction(name: String,
                                  parameters: [FunctionParameter],
                                  to language: CodeLanguage) -> (name: String, parameters: [FunctionParameter]) {
        switch self {
        case .swift:
            switch language {
            case .swift:
                return (name, parameters)
            case .c:
                return CodeLanguage.translateFunctionFromSwiftToC(name: name, parameters: parameters)
            }
        case .c:
            switch language {
            case .swift:
                return CodeLanguage.translateFunctionFromCToSwift(name: name, parameters: parameters)
            case .c:
                return (name, parameters)
            }
        }
    }
    
    private static func translateFunctionFromCToSwift(
        name: String,
        parameters: [FunctionParameter]
    ) -> (name: String, parameters: [FunctionParameter]) {
        let translatedName = NamingConvention.snake.convert(string: name, to: .camel)
        
        var translatedParameters = [FunctionParameter]()
        var isLabelHidden = true
        for parameter in parameters {
            // If the previous label is hidden and that either :
            // - the next parameter is made of only one character
            // - there is only one character
            // then the label is hidden.
            isLabelHidden = isLabelHidden && (parameter.name.count == 1 || parameters.count == 1)
            translatedParameters.append(
                FunctionParameter(name: NamingConvention.snake.convert(string: parameter.name, to: .camel),
                                  label: nil,
                                  isLabelHidden: isLabelHidden))
        }
        
        return (translatedName, translatedParameters)
    }
    
    private static func translateFunctionFromSwiftToC(
        name: String,
        parameters: [FunctionParameter]
    ) -> (name: String, parameters: [FunctionParameter]) {
        var nameComponents = NamingConvention.camel.decompose(string: name)
        
        // If there is only one parameter, we will use its label to add to the name
        // Example: doSomething(withVariable variable) -> do_something_with_variable(variable)
        if parameters.count == 1,
           let parameter = parameters.first,
           let label = parameter.label {
            let labelComponents = NamingConvention.camel.decompose(string: label)
            // We want at least one word after the keyword ("withVariable" and not just "with")
            if labelComponents.count > 1 {
                let acceptedKeywords = Set(["with", "for"])
                if acceptedKeywords.contains(labelComponents[0]) {
                    nameComponents += labelComponents
                }
            }
        }
        
        let translatedName = NamingConvention.snake.recompose(components: nameComponents)
        let translatedParameters = parameters.map { parameter in
            FunctionParameter(name: NamingConvention.camel.convert(string: parameter.name, to: .snake),
                              label: nil,
                              isLabelHidden: false)
        }
        
        return (translatedName, translatedParameters)
    }
}

extension CodeLanguage.FunctionParameter {
    var functionParameterLabel: FunctionParameter.Label {
        if isLabelHidden {
            return .hidden
        }
        if let label {
            return .name(label)
        }
        return .none
    }
}

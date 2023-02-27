import Foundation

public struct FunctionParameter {
    public var name: String
    public var label: String?
    public var isLabelHidden: Bool
    
    public init(name: String, label: String? = nil, isLabelHidden: Bool) {
        self.name = name
        self.label = label
        self.isLabelHidden = isLabelHidden
    }
}

extension CodeLanguage {
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
        let decomposedFunctionName = NamingConvention.snake.decompose(string: name)
        let translatedName = NamingConvention.camel.recompose(decomposedFunctionName)
        
        var translatedParameters = [FunctionParameter]()
        for (index, parameter) in parameters.enumerated() {
            let decomposedParameterLabel = NamingConvention.snake.decompose(string: parameter.name)
            let firstParameterComponentIsKeyword = decomposedParameterLabel.count > 1
            && preParameterNameKeywords.contains { keyword in
                decomposedParameterLabel[0].caseInsensitiveCompare(keyword) == .orderedSame
            }
            let decomposedParameterName = firstParameterComponentIsKeyword ? Array(decomposedParameterLabel.dropFirst()) : decomposedParameterLabel
            
            let translatedLabel = NamingConvention.camel.recompose(decomposedParameterLabel)
            let translatedName = NamingConvention.camel.recompose(decomposedParameterName)
            
            var isLabelHidden = false
            
            // We check that the name of the parameter is not redundant with the function name
            if index == 0 {
                var isParameterNameRedundant = true
                for (index, parameterNameComponent) in decomposedParameterName.reversed().enumerated() {
                    let functionNameComponentIndex = decomposedFunctionName.count - 1 - index
                    guard functionNameComponentIndex >= 0 else { break }
                    
                    let functionNameComponent = decomposedFunctionName[functionNameComponentIndex]
                    if functionNameComponent.caseInsensitiveCompare(parameterNameComponent) != .orderedSame {
                        isParameterNameRedundant = false
                    }
                }
                
                if isParameterNameRedundant {
                    isLabelHidden = true
                }
            }
            
            // We check that the name of the parameter is not made of one character
            if parameter.name.count == 1 && parameters.count == 1 {
                isLabelHidden = true
            }
            
            translatedParameters.append(
                FunctionParameter(name: translatedName,
                                  label: translatedLabel,
                                  isLabelHidden: isLabelHidden))
        }
        
        // Because we might have removed the pre parameter keyword (such as for or in),
        // we need to check that two parameters don't share the same name
        // For instance, a function with "fromTexture" and "toTexture" parameters
        // now have two "texture" parameters.
        //
        // Additionally, if the name starts with a number, it should also use the label.
        //
        // If that is the case, we use the label value as the name value.
        var parametersIndexToUseLabelAsName = Set<Int>()
        for index in 0..<translatedParameters.count {
            if translatedParameters[index].name.first?.isNumber == true {
                parametersIndexToUseLabelAsName.insert(index)
            }
            
            for comparedIndex in (index+1)..<translatedParameters.count {
                if translatedParameters[index].name == translatedParameters[comparedIndex].name {
                    parametersIndexToUseLabelAsName.insert(index)
                    parametersIndexToUseLabelAsName.insert(comparedIndex)
                }
            }
        }
        for index in parametersIndexToUseLabelAsName {
            translatedParameters[index].name = translatedParameters[index].label!
        }
        
        // Finally, some function parameters might have the same label and name.
        // If that is the case, the label should be hidden.
        for (index, parameter) in translatedParameters.enumerated() {
            if parameter.label == parameter.name {
                translatedParameters[index].label = nil
            }
        }
        
        return (translatedName, translatedParameters)
    }
    
    private static func translateFunctionFromSwiftToC(
        name: String,
        parameters: [FunctionParameter]
    ) -> (name: String, parameters: [FunctionParameter]) {
        var nameDecomposition = NamingConvention.camel.decompose(string: name)
        
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
                    nameDecomposition = nameDecomposition + labelComponents
                }
            }
        }
        
        let translatedName = NamingConvention.snake.recompose(nameDecomposition)
        let translatedParameters = parameters.map { parameter in
            FunctionParameter(name: NamingConvention.camel.convert(parameter.name, to: .snake),
                              label: nil,
                              isLabelHidden: false)
        }
        
        return (translatedName, translatedParameters)
    }
}

/// Some parameters might start with a special keyword that should not be visible in the parameter name.
private let preParameterNameKeywords: Set<String> = [
    "for", "from", "to", "in", "by", "at", "with"
]

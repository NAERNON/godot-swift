import Utils

struct GodotTranslatedFunction<Source>: GodotFunction where Source : GodotFunction {
    let source: Source
    let translateName: Bool
    let translateArguments: Bool
    let typeName: String?
    
    init(
        _ source: Source,
        translateName: Bool,
        translateArguments: Bool,
        typeName: String? = nil
    ) {
        self.source = source
        self.translateName = translateName
        self.translateArguments = translateArguments
        self.typeName = typeName
    }
    
    private func translatedFunction() -> (name: String, parameters: [FunctionParameter]) {
        var functionName = source.name
        
        if functionName.hasPrefix("get_"),
           functionName.count > 4,
           !functionName[functionName.index(functionName.startIndex, offsetBy: 4)].isNumber
        {
            functionName = String(functionName.dropFirst(4))
        }
        
        return generate_api.translatedFunction(
            name: functionName,
            parameters: (source.arguments ?? []).map { .init(
                name: $0.name,
                label: nil,
                isLabelHidden: $0.isLabelHidden
            )},
            typeName: typeName
        )
    }
    
    var name: String {
        if translateName {
            translatedFunction().name
        } else {
            source.name
        }
    }
    
    var arguments: [GodotArgument]? {
        if translateArguments {
            guard var arguments = source.arguments else { return [] }
            
            let parameters = translatedFunction().parameters
            
            for (index, argument) in arguments.enumerated() {
                var argument = argument
                argument.name = parameters[index].name
                argument.label = parameters[index].label
                argument.isLabelHidden = parameters[index].isLabelHidden
                
                arguments[index] = argument
            }
            
            return arguments
        } else {
            return source.arguments
        }
    }
    
    var returnType: GodotType? { source.returnType }
    
    var isVararg: Bool { source.isVararg }
    var usesVariantGeneric: Bool { source.usesVariantGeneric }
    var convertsAllParameterToVariant: Bool { source.convertsAllParameterToVariant }
    var isStatic: Bool { source.isStatic }
    var isConst: Bool { source.isConst }
    var isMutating: Bool { source.isMutating }
}

extension GodotFunction {
    var translated: GodotTranslatedFunction<Self> {
        GodotTranslatedFunction(self, translateName: true, translateArguments: true)
    }
    
    func translated(typeName: String) -> GodotTranslatedFunction<Self> {
        GodotTranslatedFunction(self, translateName: true, translateArguments: true, typeName: typeName)
    }
    
    var translatedName: GodotTranslatedFunction<Self> {
        GodotTranslatedFunction(self, translateName: true, translateArguments: false)
    }
    
    var translatedArguments: GodotTranslatedFunction<Self> {
        GodotTranslatedFunction(self, translateName: false, translateArguments: true)
    }
}

// MARK: - Translation

private struct FunctionParameter {
    public var name: String
    public var label: String?
    public var isLabelHidden: Bool
    
    public init(name: String, label: String? = nil, isLabelHidden: Bool) {
        self.name = name
        self.label = label
        self.isLabelHidden = isLabelHidden
    }
}

/// Some parameters might start with a special keyword that should not be visible in the parameter name.
private let preParameterNameKeywords: Set<String> = [
    "for", "from", "to", "in", "by", "at", "with", "of"
]

private func translatedFunction(
    name: String,
    parameters: [FunctionParameter],
    typeName: String?
) -> (name: String, parameters: [FunctionParameter]) {
    var decomposedFunctionName = NamingConvention.snake.decompose(string: name)
    let decomposedTypeName = NamingConvention.pascal.decompose(string: typeName ?? "")
    
    var translatedParameters = [FunctionParameter]()
    for (index, parameter) in parameters.enumerated() {
        var decomposedParameterLabel = NamingConvention.snake.decompose(string: parameter.name)
        
        let firstParameterComponentIsKeyword = decomposedParameterLabel.count > 1
        && preParameterNameKeywords.contains { keyword in
            decomposedParameterLabel[0].caseInsensitiveCompare(keyword) == .orderedSame
        }
        
        let decomposedParameterName: [String]
        if firstParameterComponentIsKeyword {
            decomposedParameterName = Array(decomposedParameterLabel.dropFirst())
            let sameTypeName = isDecomposition(
                decomposedParameterName,
                caseInsensitiveSameAs: decomposedTypeName
            )
            if sameTypeName {
                decomposedParameterLabel.removeLast(decomposedParameterLabel.count - 1)
            }
        } else {
            decomposedParameterName = decomposedParameterLabel
        }
        
        var isLabelHidden = parameter.isLabelHidden
        
        // Check that the name of the parameter is not redundant with the function name
        if index == 0 {
            var isParameterNameRedundant = true
            for (index, parameterNameComponent) in decomposedParameterName.reversed().enumerated() {
                let functionNameComponentIndex = decomposedFunctionName.count - 1 - index
                guard functionNameComponentIndex >= 0 else { break }
                
                let functionNameComponent = decomposedFunctionName[functionNameComponentIndex].drop { $0 == "_" }
                if functionNameComponent.caseInsensitiveCompare(parameterNameComponent) != .orderedSame {
                    isParameterNameRedundant = false
                }
            }
            
            if isParameterNameRedundant {
                isLabelHidden = true
            }
        }
        
        // Check that the name of the parameter is not made of one character
        if parameter.name.count == 1 && parameters.count == 1 {
            isLabelHidden = true
        }
        
        // Check that the label is not the same as the optional typeName
        if index == 0,
            isDecomposition(decomposedParameterLabel, caseInsensitiveSameAs: decomposedTypeName)
        {
            isLabelHidden = true
        }
        
        if index == 0 {
            let functionEndsWithKeyword = preParameterNameKeywords.contains { keyword in
                decomposedFunctionName.last?.caseInsensitiveCompare(keyword) == .orderedSame
            }
            
            if isLabelHidden && functionEndsWithKeyword,
               let lastKeyword = decomposedFunctionName.popLast()
            {
                isLabelHidden = false
                decomposedParameterLabel = [lastKeyword.lowercased()]
            }
        }
        
        let translatedLabel = NamingConvention.camel.recompose(decomposedParameterLabel)
        let translatedName = NamingConvention.camel.recompose(decomposedParameterName)
        
        translatedParameters.append(
            FunctionParameter(
                name: translatedName,
                label: translatedLabel,
                isLabelHidden: isLabelHidden
            )
        )
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
    
    let translatedName = NamingConvention.camel.recompose(decomposedFunctionName)
    
    return (translatedName, translatedParameters)
}

private func isDecomposition(_ lhs: [String], caseInsensitiveSameAs rhs: [String]) -> Bool {
    guard lhs.count == rhs.count else {
        return false
    }
    
    for index in 0..<lhs.count {
        if lhs[index].caseInsensitiveCompare(rhs[index]) != .orderedSame {
            return false
        }
    }
    
    return true
}

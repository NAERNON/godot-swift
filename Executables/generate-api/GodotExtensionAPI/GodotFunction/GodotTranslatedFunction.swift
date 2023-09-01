import Utils

struct GodotTranslatedFunction<Source>: GodotFunction where Source : GodotFunction {
    let source: Source
    let translateName: Bool
    let translateArguments: Bool
    
    init(_ source: Source, translateName: Bool, translateArguments: Bool) {
        self.source = source
        self.translateName = translateName
        self.translateArguments = translateArguments
    }
    
    private func translatedFunction() -> (name: String, parameters: [FunctionParameter]) {
        var functionName = source.name
        
        if functionName.hasPrefix("get_"),
           functionName.count > 4,
           !functionName[functionName.index(functionName.startIndex, offsetBy: 4)].isNumber
        {
            functionName = String(functionName.dropFirst(4))
        }
        
        return CodeLanguage.c.translateFunction(
            name: functionName,
            parameters: (source.arguments ?? []).map { .init(name: $0.name, label: nil, isLabelHidden: false) },
            to: .swift
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
    
    var translatedName: GodotTranslatedFunction<Self> {
        GodotTranslatedFunction(self, translateName: true, translateArguments: false)
    }
    
    var translatedArguments: GodotTranslatedFunction<Self> {
        GodotTranslatedFunction(self, translateName: false, translateArguments: true)
    }
}

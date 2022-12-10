import Foundation

/// A `BindingFunc` is a shortcut to a function with many translation being done for Godot.
/// Use the `Formatted` value given with the closure to use the formatted values such as the arguments and the return type.
/// The code can also generate a `var` instead of a `func` when applicable.
struct BindingFunc<Content>: SwiftCode, AccessControlCode where Content: SwiftCode {
    let name: String
    let arguments: [ExtensionApi.Argument]?
    let returnType: String?
    /// The type inside which the function will be.
    let insideType: String
    let translated: Bool
    let content: (Formatted) -> Content
    private var accessControl: AccessControl? = nil
    private var isStatic: Bool = false
    private var isFinal: Bool = false
    
    public init(name: String,
                arguments: [ExtensionApi.Argument]?,
                returnType: String?,
                insideType: String,
                translated: Bool,
                @CodeBuilder content: @escaping (Formatted) -> Content) {
        self.name = name
        self.arguments = arguments
        self.returnType = returnType
        self.insideType = insideType
        self.translated = translated
        self.content = content
    }
    
    var body: some SwiftCode {
        let nameAndParameters = nameAndParameters(translated: translated)
        let convertedFunctionName = convertedFunction(name: nameAndParameters.name, translated: translated)
        let functionParameters = functionParameters(withLanguageParameters: nameAndParameters.parameters, insideType: insideType)
        let returnType = convertedReturnType(insideType: insideType)
        
        if isVarInsteadOfFunc(shouldBeVar: convertedFunctionName.shouldBeVar, translated: translated) {
            Var(convertedFunctionName.name, type: returnType!) {
                content(Formatted(parameters: functionParameters, returnType: returnType))
            }
            .accessControl(accessControl)
            .static(isStatic)
            .final(isFinal)
        } else {
            Func(name: convertedFunctionName.name,
                 parameters: functionParameters,
                 returnType: returnType) {
                content(Formatted(parameters: functionParameters, returnType: returnType))
            }
                 .accessControl(accessControl)
                 .static(isStatic)
                 .final(isFinal)
        }
    }
    
    private func nameAndParameters(translated: Bool) -> (name: String, parameters: [CodeLanguage.FunctionParameter]) {
        CodeLanguage.c.translateFunction(
            name: name,
            parameters: arguments?.map({ .init(name: $0.name, label: nil, isLabelHidden: false) }) ?? [],
            to: translated ? .swift : .c)
    }
    
    private func functionParameters(withLanguageParameters languageParameters: [CodeLanguage.FunctionParameter], insideType: String) -> [FunctionParameter] {
        guard let arguments else {
            return []
        }
        
        var parameters = [FunctionParameter]()
        for (index, argument) in arguments.enumerated() {
            let languageParameter = languageParameters[index]
            parameters.append(argument.functionParameter(withLanguageParameter: languageParameter, insideType: insideType))
        }
        
        return parameters
    }
    
    private func convertedFunction(name: String, translated: Bool) -> (name: String, shouldBeVar: Bool) {
        if translated {
            return ExtensionApi.functionSwiftName(for: name)
        } else {
            return (name, false)
        }
    }
    
    private func isVarInsteadOfFunc(shouldBeVar: Bool, translated: Bool) -> Bool {
        guard translated else {
            return false
        }
        
        let noArguments = arguments == nil || arguments?.isEmpty == true
        let returns = returnType != nil
        return shouldBeVar && noArguments && returns
    }
    
    private func convertedReturnType(insideType: String) -> String? {
        guard let returnType else { return nil }
        
        return ExtensionApi.convert(type: returnType, insideType: insideType)
    }
    
    // MARK: Modifiers
    
    public func accessControl(_ accessControl: AccessControl?) -> BindingFunc {
        var new = self
        new.accessControl = accessControl
        return new
    }
    
    public func `static`(_ state: Bool = true) -> BindingFunc {
        var new = self
        new.isStatic = state
        return new
    }
    
    public func `final`(_ state: Bool = true) -> BindingFunc {
        var new = self
        new.isFinal = state
        return new
    }
}

// MARK: Formatted

extension BindingFunc {
    struct Formatted {
        let parameters: [FunctionParameter]
        let returnType: String?
        
        init(parameters: [FunctionParameter], returnType: String?) {
            self.parameters = parameters
            self.returnType = returnType
        }
        
        var returns: Bool { returnType != nil }
        var parametersCount: Int { parameters.count }
    }
}

// MARK: Argument

private extension ExtensionApi.Argument {
    func functionParameter(withLanguageParameter languageParameter: CodeLanguage.FunctionParameter, insideType: String) -> FunctionParameter {
        let defaultParameterValue: FunctionParameter.DefaultValue
        if let defaultValue {
            defaultParameterValue = .codeString(defaultValue)
        } else {
            defaultParameterValue = .none
        }
        
        return .named(languageParameter.name,
                      type: ExtensionApi.convert(type: type, insideType: insideType),
                      defaultValue: defaultParameterValue,
                      label: languageParameter.functionParameterLabel)
    }
}

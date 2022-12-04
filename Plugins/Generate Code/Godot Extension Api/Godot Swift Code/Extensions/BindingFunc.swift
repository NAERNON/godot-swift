import Foundation

/// A `BindingFunc` is a shortcut to a function with many translation being done for Godot.
/// Use the `Formatted` value given with the closure to use the formatted values such as the arguments and the return type.
struct BindingFunc<Content>: SwiftCode, AccessControlCode where Content: SwiftCode {
    let name: String
    let arguments: [ExtensionApi.Argument]?
    let returnType: String?
    let translated: Bool
    let content: (Formatted) -> Content
    private var accessControl: AccessControl? = nil
    private var isStatic: Bool = false
    private var isFinal: Bool = false
    
    public init(name: String,
                arguments: [ExtensionApi.Argument]?,
                returnType: String?,
                translated: Bool,
                @CodeBuilder content: @escaping (Formatted) -> Content) {
        self.name = name
        self.arguments = arguments
        self.returnType = returnType
        self.translated = translated
        self.content = content
    }
    
    var body: some SwiftCode {
        let nameAndParameters = nameAndParameters(translated: translated)
        let functionParameters = functionParameters(withLanguageParameters: nameAndParameters.parameters)
        
        Func(name: nameAndParameters.name,
             parameters: functionParameters,
             returnType: convertedReturnType) {
            content(Formatted(parameters: functionParameters, returnType: convertedReturnType))
        }
             .accessControl(accessControl)
             .static(isStatic)
             .final(isFinal)
    }
    
    private func nameAndParameters(translated: Bool) -> (name: String, parameters: [CodeLanguage.FunctionParameter]) {
        CodeLanguage.c.translateFunction(
            name: name,
            parameters: arguments?.map({ .init(name: $0.name, label: nil, isLabelHidden: false) }) ?? [],
            to: translated ? .swift : .c)
    }
    
    private func functionParameters(withLanguageParameters languageParameters: [CodeLanguage.FunctionParameter]) -> [FunctionParameter] {
        guard let arguments else {
            return []
        }
        
        var parameters = [FunctionParameter]()
        for (index, argument) in arguments.enumerated() {
            let languageParameter = languageParameters[index]
            parameters.append(argument.functionParameter(withLanguageParameter: languageParameter))
        }
        
        return parameters
    }
    
    private var convertedReturnType: String? {
        guard let returnType else { return nil }
        
        return ExtensionApi.convert(type: returnType)
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
    func functionParameter(withLanguageParameter languageParameter: CodeLanguage.FunctionParameter) -> FunctionParameter {
        let defaultParameterValue: FunctionParameter.DefaultValue
        if let defaultValue {
            defaultParameterValue = .codeString(defaultValue)
        } else {
            defaultParameterValue = .none
        }
        
        return .named(languageParameter.name,
                      type: ExtensionApi.convert(type: type),
                      defaultValue: defaultParameterValue,
                      label: languageParameter.functionParameterLabel)
    }
}

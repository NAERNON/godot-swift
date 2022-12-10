import Foundation

/// A `BindingInit` is a shortcut to an init with many translation being done for Godot.
/// Use the `Formatted` value given with the closure to use the formatted values such as the arguments.
struct BindingInit<Content>: SwiftCode, AccessControlCode where Content: SwiftCode {
    let arguments: [ExtensionApi.Argument]?
    /// The type inside which the init will be.
    let insideType: String
    let translated: Bool
    let content: (Formatted) -> Content
    var accessControl: AccessControl? = nil
    
    public init(arguments: [ExtensionApi.Argument]?,
                insideType: String,
                translated: Bool,
                @CodeBuilder content: @escaping (Formatted) -> Content) {
        self.arguments = arguments
        self.insideType = insideType
        self.translated = translated
        self.content = content
    }
    
    var body: some SwiftCode {
        let parameters = initArguments(translated: translated, insideType: insideType)
        
        Init(parameters: parameters) {
            content(Formatted(parameters: parameters))
        }.accessControl(accessControl)
    }
    
    private func initArguments(translated: Bool, insideType: String) -> [FunctionParameter] {
        guard let arguments else {
            return []
        }
        
        return arguments.map { argument in
            var parameter = argument.functionParameter(translated: translated, insideType: insideType)
            if parameter.name == "from" {
                parameter.name = NamingConvention.pascal.convert(string: parameter.type, to: .camel)
            }
            return parameter
        }
    }
}

// MARK: Formatted

extension BindingInit {
    struct Formatted {
        let parameters: [FunctionParameter]
        
        init(parameters: [FunctionParameter]) {
            self.parameters = parameters
        }
        
        var parametersCount: Int { parameters.count }
    }
}

// MARK: Argument

private extension ExtensionApi.Argument {
    func functionParameter(translated: Bool, insideType: String) -> FunctionParameter {
        let defaultParameterValue: FunctionParameter.DefaultValue
        if let defaultValue {
            defaultParameterValue = .codeString(defaultValue)
        } else {
            defaultParameterValue = .none
        }
        
        let name: String
        if translated {
            name = NamingConvention.snake.convert(string: self.name, to: .camel)
        } else {
            name = self.name
        }
        
        return .named(name,
                      type: ExtensionApi.convert(type: type, insideType: insideType),
                      defaultValue: defaultParameterValue,
                      label: .none)
        
    }
}

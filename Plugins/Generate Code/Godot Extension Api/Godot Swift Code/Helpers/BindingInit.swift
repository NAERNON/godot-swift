import Foundation

/// A `BindingInit` is a shortcut to an init with many translation being done for Godot.
/// Use the `Formatted` value given with the closure to use the formatted values such as the arguments.
struct BindingInit<Content>: SwiftCode, AccessControlCode where Content: SwiftCode {
    let arguments: [ExtensionApi.Argument]?
    let translated: Bool
    let content: (Formatted) -> Content
    private var accessControl: AccessControl? = nil
    
    public init(arguments: [ExtensionApi.Argument]?,
                translated: Bool,
                @CodeBuilder content: @escaping (Formatted) -> Content) {
        self.arguments = arguments
        self.translated = translated
        self.content = content
    }
    
    var body: some SwiftCode {
        let parameters = initArguments(translated: translated)
        
        Init(parameters: parameters) {
            content(Formatted(parameters: parameters))
        }.accessControl(accessControl)
    }
    
    private func initArguments(translated: Bool) -> [FunctionParameter] {
        guard let arguments else {
            return []
        }
        
        return arguments.map { argument in
            var parameter = argument.functionParameter(translated: translated)
            if parameter.name == "from" {
                parameter.name = NamingConvention.pascal.convert(string: parameter.type, to: .camel)
            }
            return parameter
        }
    }

    
    // MARK: Modifiers
    
    public func accessControl(_ accessControl: AccessControl?) -> BindingInit {
        var new = self
        new.accessControl = accessControl
        return new
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
    func functionParameter(translated: Bool) -> FunctionParameter {
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
                      type: ExtensionApi.convert(type: type),
                      defaultValue: defaultParameterValue,
                      label: .none)
        
    }
}

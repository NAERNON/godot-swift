import Foundation

/// A `BindingInit` is a shortcut to an init with many translation being done for Godot.
/// Use the `Formatted` value given with the closure to use the formatted values such as the arguments.
struct BindingInit<Content>: SwiftCode, AccessControlCode where Content: SwiftCode {
    let type: InstanceType
    let arguments: [ExtensionApi.Argument]?
    let content: ([String]) -> Content
    var accessControl: AccessControl? = nil
    
    public init(type: InstanceType,
                arguments: [ExtensionApi.Argument]?,
                @CodeBuilder content: @escaping ([String]) -> Content) {
        self.type = type
        self.arguments = arguments
        self.content = content
    }
    
    var body: some SwiftCode {
        let translatedParameters = translatedParameters()
        let translatedParametersNames = translatedParameters.map { $0.name }
        
        Init(parameters: translatedParameters) {
            content(translatedParametersNames)
        }.accessControl(accessControl)
    }
    
    private func translatedParameters() -> [FunctionParameter] {
        arguments?.map { argument in
            let name: String
            if argument.name == "from" {
                name = NamingConvention.pascal.convert(string: argument.type.toSwift(usedInside: self.type), to: .camel)
            } else {
                name = NamingConvention.snake.convert(string: argument.name, to: .camel)
            }
            
            let defaultParameterValue: FunctionParameter.DefaultValue
            if let defaultValue = argument.defaultValue {
                defaultParameterValue = .codeString(defaultValue.toSwift(forType: argument.type))
            } else {
                defaultParameterValue = .none
            }
            
            return FunctionParameter.named(name,
                                           type: argument.type.toSwift(usedInside: self.type),
                                           defaultValue: defaultParameterValue,
                                           label: .none)
        } ?? []
    }
}

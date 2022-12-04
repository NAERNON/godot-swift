import Foundation

extension ExtensionApi.Argument {
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

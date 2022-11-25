import Foundation

extension ExtensionApi.Argument {
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

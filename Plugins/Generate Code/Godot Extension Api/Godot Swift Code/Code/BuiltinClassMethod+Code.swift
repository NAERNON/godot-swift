import Foundation

extension ExtensionApi.BuiltinClass.Method {
    func code(methodPointerName: String, className: String, translated: Bool) -> some SwiftCode {
        let nameAndParameters = nameAndParameters(translated: translated)
        let methodParameters = methodParameters(withLanguageParameters: nameAndParameters.parameters)
        
        return Func(name: nameAndParameters.name,
                    parameters: methodParameters,
                    returnType: convertedReturnType) {
            if let convertedReturnType {
                Property("_returnValue").varDefined().type(convertedReturnType + "!")
                Spacer()
            }
            
            ObjectsPointersAccess(parameters: methodParameters, generatePointersArray: true) {
                Spacer()
                
                if let convertedReturnType {
                    Property("_returnValuePtr").letDefined().type("UnsafeMutablePointer<\(convertedReturnType)>")
                        .assign(value: ".allocate(capacity: 1)")
                }
                
                ObjectsPointersAccess(parameters: [.named("self", type: className)]) {
                    if convertedReturnType != nil {
                        "Self.\(methodPointerName)(self_ptr, _accessPtr, _returnValuePtr, \(methodParameters.count))"
                        Property("_returnValue").assign(value: "_returnValuePtr.pointee")
                    } else {
                        "Self.\(methodPointerName)(self_ptr, _accessPtr, nil, \(methodParameters.count))"
                    }
                }
                
                if convertedReturnType != nil {
                    "_returnValuePtr.deinitialize(count: 1)"
                    "_returnValuePtr.deallocate()"
                }
                
                Spacer()
            }
            
            if convertedReturnType != nil {
                Spacer()
                Return("_returnValue")
            }
        }.public()
    }
    
    // MARK: - Naming and translation
    
    private func nameAndParameters(translated: Bool) -> (name: String, parameters: [CodeLanguage.FunctionParameter]) {
        CodeLanguage.c.translateFunction(
            name: name,
            parameters: arguments?.map({ .init(name: $0.name, label: nil, isLabelHidden: false) }) ?? [],
            to: translated ? .swift : .c)
    }
    
    private func methodParameters(withLanguageParameters languageParameters: [CodeLanguage.FunctionParameter]) -> [FunctionParameter] {
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
}

import Foundation

extension ExtensionApi.BuiltinClass.Method {
    func code(methodPointerName: String, className: String, translated: Bool) -> some SwiftCode {
        return BindingFunc(name: name, arguments: arguments, returnType: returnType, translated: translated) { formatted in
            if let returnType = formatted.returnType {
                Property("_returnValue").varDefined().assign(value: returnType + "()")
                Spacer()
            }
            
            ObjectsPointersAccess(parameters: formatted.parameters, generatePointersArray: true) {
                Spacer()
                
                if let returnType = formatted.returnType {
                    ObjectsPointersAccess(parameters: [.named("self", type: className), .named("_returnValue", type: returnType)]) {
                        "Self.\(methodPointerName)(self_ptr, _accessPtr, _returnValue_ptr, \(formatted.parametersCount))"
                    }
                } else {
                    ObjectsPointersAccess(parameters: [.named("self", type: className)]) {
                        "Self.\(methodPointerName)(self_ptr, _accessPtr, nil, \(formatted.parametersCount))"
                    }
                }
                
                Spacer()
            }
            
            if formatted.returns {
                Spacer()
                Return("_returnValue")
            }
        }.public()
    }
}

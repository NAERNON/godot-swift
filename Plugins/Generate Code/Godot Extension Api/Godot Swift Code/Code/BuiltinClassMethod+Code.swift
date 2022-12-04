import Foundation

extension ExtensionApi.BuiltinClass.Method {
    func code(methodPointerName: String, className: String, translated: Bool) -> some SwiftCode {
        return BindingFunc(name: name, arguments: arguments, returnType: returnType, translated: translated) { formatted in
            if let returnType = formatted.returnType {
                Property("_returnValue").varDefined().assign(value: returnType + "()")
                Spacer()
            }
            
            ObjectsPointersAccess(functionParameters: formatted.parameters, generatePointersArray: true) {
                Spacer()
                
                if let returnType = formatted.returnType {
                    ObjectsPointersAccess(parameters: [.init(name: "self", type: className),
                                                       .init(name: "_returnValue", type: returnType, isMutable: true)]) {
                        "Self.\(methodPointerName)(self_ptr, _accessPtr, _returnValue_ptr, \(formatted.parametersCount))"
                    }
                } else {
                    ObjectsPointersAccess(parameters: [.init(name: "self", type: className)]) {
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

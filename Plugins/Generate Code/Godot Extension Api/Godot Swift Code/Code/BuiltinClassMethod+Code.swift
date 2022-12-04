import Foundation

extension ExtensionApi.BuiltinClass.Method {
    func code(methodPointerName: String, className: String, translated: Bool) -> some SwiftCode {
        return BindingFunc(name: name, arguments: arguments, returnType: returnType, translated: translated) { formatted in
            if let returnType = formatted.returnType {
                Property("_returnValue").varDefined().type(returnType + "!")
                Spacer()
            }
            
            ObjectsPointersAccess(parameters: formatted.parameters, generatePointersArray: true) {
                Spacer()
                
                if let returnType = formatted.returnType {
                    Property("_returnValuePtr").letDefined().type("UnsafeMutablePointer<\(returnType)>")
                        .assign(value: ".allocate(capacity: 1)")
                }
                
                ObjectsPointersAccess(parameters: [.named("self", type: className)]) {
                    if formatted.returns {
                        "Self.\(methodPointerName)(self_ptr, _accessPtr, _returnValuePtr, \(formatted.parametersCount))"
                        Property("_returnValue").assign(value: "_returnValuePtr.pointee")
                    } else {
                        "Self.\(methodPointerName)(self_ptr, _accessPtr, nil, \(formatted.parametersCount))"
                    }
                }
                
                if formatted.returns {
                    "_returnValuePtr.deinitialize(count: 1)"
                    "_returnValuePtr.deallocate()"
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

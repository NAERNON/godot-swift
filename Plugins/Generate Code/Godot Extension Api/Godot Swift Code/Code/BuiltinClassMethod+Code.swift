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
                
                ObjectsPointersAccess(parameters: objectsPointerAccessParameters(className: className, returnType: formatted.returnType)) {
                    "Self.\(methodPointerName)(\(selfPointerName), _accessPtr, \(returnValuePointer(returnType: formatted.returnType)), \(formatted.parametersCount))"
                }
                
                Spacer()
            }
            
            if formatted.returns {
                Spacer()
                Return("_returnValue")
            }
        }
        .public()
        .static(isStatic)
    }
    
    private var selfPointerName: String {
        isStatic ? "nil" : "self_ptr"
    }
    
    private func returnValuePointer(returnType: String?) -> String {
        returnType == nil ? "nil" : "_returnValue_ptr"
    }
    
    private func objectsPointerAccessParameters<T: SwiftCode>(className: String, returnType: String?) -> [ObjectsPointersAccess<T>.Parameter] {
        var parameters = [ObjectsPointersAccess<T>.Parameter]()
        if !isStatic {
            parameters.append(.init(name: "self", type: className))
        }
        if let returnType {
            parameters.append(.init(name: "_returnValue", type: returnType, isMutable: true))
        }
        return parameters
    }
}

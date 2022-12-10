import Foundation

extension ExtensionApi.BuiltinClass.Method {
    func code(methodPointerName: String, className: String, translated: Bool) -> some SwiftCode {
        return BindingFunc(name: name,
                           arguments: arguments,
                           returnType: returnType,
                           insideType: className,
                           translated: translated) { formatted in
            if let returnType = formatted.returnType {
                Property("__returnValue").defined(isVar: ExtensionApi.isBaseType(returnType)).assign(value: returnType + "()")
                Spacer()
            }
            
            ObjectsPointersAccess(functionParameters: formatted.parameters,
                                  generatePointersArray: true) { pointerNames in
                
                ObjectsPointersAccess(parameters: returnParameters(className: className,
                                                                   returnType: formatted.returnType)) { returnPointerNames in
                    let selfPointer = isStatic ? "nil" : returnPointerNames.parameters.first!
                    let returnPointer = returnType == nil ? "nil" : returnPointerNames.parameters.last!
                    "Self.\(methodPointerName)(\(selfPointer), \(pointerNames.array!), \(returnPointer), \(formatted.parametersCount))"
                }
                
            }
            
            if formatted.returns {
                Spacer()
                Return("__returnValue")
            }
        }
        .public()
        .static(isStatic)
    }
        
    private func returnParameters<T: SwiftCode>(className: String, returnType: String?) -> [ObjectsPointersAccess<T>.Parameter] {
        var parameters = [ObjectsPointersAccess<T>.Parameter]()
        if !isStatic {
            parameters.append(.named("self", type: className))
        }
        if let returnType {
            parameters.append(.named("__returnValue", type: returnType, isMutable: true))
        }
        return parameters
    }
}

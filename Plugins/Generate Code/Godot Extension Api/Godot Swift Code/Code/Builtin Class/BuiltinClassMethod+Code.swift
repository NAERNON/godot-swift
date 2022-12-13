import Foundation

extension ExtensionApi.BuiltinClass.Method {
    func code(type: InstanceType) -> some SwiftCode {
        BindingFunc(name: name,
                    type: type,
                    arguments: arguments,
                    returnType: returnType) { parameters in
            if isMutating && !type.isValueType {
                "replaceOpaqueValueIfNecessary()"
                Spacer()
            }
            
            if let returnType {
                Property("__returnValue").defined(isVar: returnType.isValueType).assign(value: returnType.toSwift(scopeType: type) + "()")
                Spacer()
            }
            
            ObjectsPointersAccess(parameters: functionParameters(withParameters: parameters),
                                  generatePointersArray: true) { pointerNames in
                
                ObjectsPointersAccess(parameters: returnParameters(type: type, returnType: returnType)) { returnPointerNames in
                    let selfPointer = isStatic ? "nil" : returnPointerNames.parameters.first!
                    let returnPointer = returnType == nil ? "nil" : returnPointerNames.parameters.last!
                    "Self.\(godotMethodPtrName)(\(selfPointer), \(pointerNames.array!), \(returnPointer), \(parameters.count))"
                }
                
            }
            
            if returnType != nil {
                Spacer()
                Return("__returnValue")
            }
        }.public().static(isStatic).mutating(isMutating)
    }
    
    private func functionParameters(withParameters parameters: [String]) -> [ObjectsPointersAccessParameter] {
        var accessParameters = [ObjectsPointersAccessParameter]()
        for index in 0..<parameters.count {
            let accessParameter = ObjectsPointersAccessParameter.named(parameters[index],
                                                                       type: arguments![index].type)
            accessParameters.append(accessParameter)
        }
        return accessParameters
    }
        
    private func returnParameters(type: InstanceType, returnType: InstanceType?) -> [ObjectsPointersAccessParameter] {
        var returnParameters = [ObjectsPointersAccessParameter]()
        if !isStatic {
            returnParameters.append(.named("self", type: type, isMutable: isMutating))
        }
        if let returnType {
            returnParameters.append(.named("__returnValue", type: returnType, isMutable: true))
        }
        return returnParameters
    }
    
    private var isMutating: Bool {
        !isConst && !isStatic
    }
    
    var godotMethodPtrName: String {
        "__method_binding_\(name.godotName)"
    }
}

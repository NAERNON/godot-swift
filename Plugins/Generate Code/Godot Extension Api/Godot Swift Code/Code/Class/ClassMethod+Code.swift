import Foundation

#warning("Not using isVirtual")

extension ExtensionApi.Class.Method {
    func code(type: InstanceType) -> some SwiftCode {
        BindingFunc(name: name,
                    type: type,
                    arguments: arguments,
                    returnType: returnValue?.type) { parameters in
            if let godotMethodPtrName {
                if let returnType = returnValue?.type {
                    Property("__returnValue").defined(isVar: returnType.isValueType).assign(value: returnType.defaultInitializer())
                    Spacer()
                }
                
                ObjectsArrayPointersAccess(parameters: functionParameters(withParameters: parameters)) { pointerNames, arrayName in
                    
                    ObjectsPointersAccess(parameters: returnParameters(type: type, returnType: returnValue?.type)) { returnPointerNames in
                        let selfPointer = isStatic ? "nil" : returnPointerNames.first!
                        let returnPointer = returnValue == nil ? "nil" : returnPointerNames.last!
                        "GodotInterface.native.object_method_bind_ptrcall(Self.\(godotMethodPtrName), \(selfPointer), \(arrayName), \(returnPointer))"
                    }
                }
                
                if let returnType = returnValue?.type {
                    Spacer()
                    if returnType.isEnumType {
                        Return(returnType.toSwift(scopeType: type) + "(rawValue: __returnValue)!")
                    } else if returnType.isBitfieldType {
                        Return(returnType.toSwift(scopeType: type) + "(rawValue: __returnValue)")
                    } else {
                        Return("__returnValue")
                    }
                }
            } else {
#warning("Deal with virtual functions")
                "fatalError()"
            }
        }.public().static(isStatic)
    }
    
    private func functionParameters(withParameters parameters: [String]) -> [ObjectsPointersAccessParameter] {
        var accessParameters = [ObjectsPointersAccessParameter]()
        for index in 0..<parameters.count {
            accessParameters
                .append(.named(parameters[index], type: arguments![index].type, mutability: .const))
        }
        return accessParameters
    }
    
    private func returnParameters(type: InstanceType, returnType: InstanceType?) -> [ObjectsPointersAccessParameter] {
        var returnParameters = [ObjectsPointersAccessParameter]()
        if !isStatic {
            returnParameters.append(.named("self", type: type, mutability: .mutable))
        }
        if let returnType {
            returnParameters.append(.named("__returnValue", type: returnType, mutability: .mutable))
        }
        return returnParameters
    }
    
    private var isMutating: Bool {
        !isConst && !isStatic
    }
    
    var godotMethodPtrName: String? {
        hash != nil ? "__method_binding_\(name.godotName)" : nil
    }
}

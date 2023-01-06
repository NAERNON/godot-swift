import Foundation

#warning("Not using isVirtual")

extension ExtensionApi.Class.Method {
    func code(type: InstanceType, accessControl: AccessControl) -> some SwiftCode {
        BindingFunc(name: name,
                    type: type,
                    arguments: arguments,
                    addVariantVarargs: isVararg,
                    returnType: returnValue?.type) { parameters in
            if let godotMethodPtrName {
                if let returnType = returnValue?.type {
                    returnType.initializerCode(propertyName: "__returnValue", usedInside: type)
                    Spacer()
                }
                
                ObjectsArrayPointersAccess(parameters: self.objectsPointersAccessParameters(named: parameters)) { pointerNames, arrayName, _ in
                    
                    ObjectsPointersAccess(parameters: returnParameters(type: type, returnType: returnValue?.type)) { returnPointerNames in
                        let selfPointer = isStatic ? "nil" : returnPointerNames.first!
                        let returnPointer = returnValue == nil ? "nil" : returnPointerNames.last!
                        "GodotInterface.native.object_method_bind_ptrcall(Self.\(godotMethodPtrName), \(selfPointer), \(arrayName), \(returnPointer))"
                    }
                }
                
                if let returnType = returnValue?.type {
                    Spacer()
                    returnType.returnCode(propertyName: "__returnValue", usedInside: type)
                }
            } else {
#warning("Deal with virtual functions")
                "fatalError()"
            }
        }.accessControl(accessControl).static(isStatic)
    }
    
    private func returnParameters(type: InstanceType, returnType: InstanceType?) -> [ObjectsPointersAccessParameter] {
        var returnParameters = [ObjectsPointersAccessParameter]()
        if !isStatic {
            returnParameters.append(.named("self", type: type, mutability: .mutable))
        }
        if let returnType {
            returnParameters.append(.named("__returnValue", type: returnType.initializerType(), mutability: .mutable))
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

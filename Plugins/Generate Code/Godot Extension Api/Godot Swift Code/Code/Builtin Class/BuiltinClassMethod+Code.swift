import Foundation

extension ExtensionApi.BuiltinClass.Method {
    func code(type: InstanceType) -> some SwiftCode {
        BindingFunc(name: name.underscored,
                    type: type,
                    arguments: arguments,
                    addVariantVarargs: isVararg,
                    returnType: returnType) { parameters in
            if isMutating && !type.isValueType {
                "replaceOpaqueValueIfNecessary()"
                Spacer()
            }
            
            if let returnType {
                returnType.initializerCode(propertyName: "__returnValue", usedInside: type)
                Spacer()
            }
            
            ObjectsArrayPointersAccess(parameters: self.objectsPointersAccessParameters(named: parameters)) { pointerNames, arrayName, argumentsCountName in
                
                ObjectsPointersAccess(parameters: returnParameters(type: type, returnType: returnType)) { returnPointerNames in
                    let selfPointer = isStatic ? "nil" : returnPointerNames.first!
                    let returnPointer = returnType == nil ? "nil" : returnPointerNames.last!
                    "Self.\(godotMethodPtrName)(\(selfPointer), \(arrayName), \(returnPointer), Int32(\(argumentsCountName)))"
                }
                
            }
            
            if let returnType {
                Spacer()
                returnType.returnCode(propertyName: "__returnValue", usedInside: type)
            }
        }.internal().static(isStatic).mutating(isMutating).attributes(isResultDiscardable ? [.discardableResult] : [])
    }
        
    private func returnParameters(type: InstanceType, returnType: InstanceType?) -> [ObjectsPointersAccessParameter] {
        var returnParameters = [ObjectsPointersAccessParameter]()
        if !isStatic {
            returnParameters.append(.named("self", type: type, mutability: isMutating ? .mutable : .constMutablePointer))
        }
        if let returnType {
            returnParameters.append(.named("__returnValue", type: returnType.initializerType(), mutability: .mutable))
        }
        return returnParameters
    }
    
    private var isMutating: Bool {
        !isConst && !isStatic
    }
    
    private var isResultDiscardable: Bool {
        isMutating && returnType != nil
    }
    
    var godotMethodPtrName: String {
        "__method_binding_\(name.godotName)"
    }
}

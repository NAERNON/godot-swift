import Foundation

extension ExtensionApi.BuiltinClass.Method {
    func code(type: InstanceType) -> some SwiftCode {
        BindingFunc(name: name.underscored,
                    type: type,
                    arguments: arguments,
                    returnType: returnType) { parameters in
            if isMutating && !type.isValueType {
                "replaceOpaqueValueIfNecessary()"
                Spacer()
            }
            
            if let returnType {
                Property("__returnValue").defined(isVar: returnType.isValueType)
                    .assign(value: returnType.defaultInitializer(scopeType: type))
                Spacer()
            }
            
            ObjectsArrayPointersAccess(parameters: functionParameters(withParameters: parameters)) { pointerNames, arrayName in
                
                ObjectsPointersAccess(parameters: returnParameters(type: type, returnType: returnType)) { returnPointerNames in
                    let selfPointer = isStatic ? "nil" : returnPointerNames.first!
                    let returnPointer = returnType == nil ? "nil" : returnPointerNames.last!
                    "Self.\(godotMethodPtrName)(\(selfPointer), \(arrayName), \(returnPointer), \(parameters.count))"
                }
                
            }
            
            if let returnType {
                Spacer()
                if returnType.isEnumType {
                    Return(returnType.toSwift(scopeType: type) + "(rawValue: __returnValue)!")
                } else if returnType.isBitfieldType {
                    Return(returnType.toSwift(scopeType: type) + "(rawValue: __returnValue)")
                } else {
                    Return("__returnValue")
                }
            }
        }.internal().static(isStatic).mutating(isMutating).attributes(isResultDiscardable ? [.discardableResult] : [])
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
            returnParameters.append(.named("self", type: type, mutability: isMutating ? .mutable : .constMutablePointer))
        }
        if let returnType {
            returnParameters.append(.named("__returnValue", type: returnType, mutability: .mutable))
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

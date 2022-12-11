import Foundation
import PackagePlugin

extension ExtensionApi.BuiltinClass.Operator {
    @CodeBuilder
    func code(type: InstanceType) -> some SwiftCode {
        let (translatedName, _) = name.toSwift(withType: type, arguments: nil)
        
        if let rightType {
            // If there is a right type, it should be a function.
            
            if isMemberFunction {
                // If the memberFunctionName exists, that means that it should be a
                // member function instead of a static func.
                Func(name: translatedName,
                     parameters: [.named(rightType.toVariableName(scopeType: type),
                                         type: rightType.toSwift(scopeType: type),
                                         label: .hidden)],
                     returnType: returnType.toSwift(scopeType: type)) {
                    
                    functionContentCode(type: type, operatorPtrName: godotOperatorPtrName)
                    
                }.public()
            } else {
                Func(name: translatedName,
                     parameters: [.named("lhs", type: type.toSwift(scopeType: type)),
                                  .named("rhs", type: rightType.toSwift(scopeType: type))],
                     returnType: returnType.toSwift(scopeType: type)) {
                    
                    functionContentCode(type: type, operatorPtrName: godotOperatorPtrName)
                    
                }.static().public()
            }
        } else if isMemberFunction {
            // If there is no right type, it should be a var.
            Var(translatedName, type: returnType.toSwift(scopeType: type)) {
                
                functionContentCode(type: type, operatorPtrName: godotOperatorPtrName)
                
            }.public()
        } else {
            emptyErrorCode()
        }
    }
    
    @CodeBuilder
    private func functionContentCode(type: InstanceType, operatorPtrName: String) -> some SwiftCode {
        Property("__returnValue").defined(isVar: returnType.isValueType).assign(value: returnType.toSwift(scopeType: type) + "()")
        Spacer()
        
        ObjectsPointersAccess(parameters: objectsPointerAccessParameters(type: type)) { pointerNames in
            if rightType != nil {
                let lhsName = pointerNames.parameters[0]
                let rhsName = pointerNames.parameters[1]
                let returnName = pointerNames.parameters[2]
                "Self.\(operatorPtrName)(\(lhsName), \(rhsName), \(returnName))"
            } else {
                let selfName = pointerNames.parameters[0]
                let returnName = pointerNames.parameters[1]
                "Self.\(operatorPtrName)(\(selfName), nil, \(returnName))"
            }
        }
        
        Spacer()
        Return("__returnValue")
    }
    
    private func objectsPointerAccessParameters(type: InstanceType) -> [ObjectsPointersAccessParameter] {
        var parameters = [ObjectsPointersAccessParameter]()
        
        if let rightType {
            if isMemberFunction {
                parameters.append(.named("self", type: type))
                parameters.append(.named(rightType.toVariableName(scopeType: type), type: rightType))
            } else {
                parameters.append(.named("lhs", type: type))
                parameters.append(.named("rhs", type: rightType))
            }
        } else {
            parameters.append(.named("self", type: type))
        }
        
        parameters.append(.named("__returnValue", type: returnType, isMutable: true))
        
        return parameters
    }
    
    private func emptyErrorCode() -> some SwiftCode {
        Diagnostics.error("The operator \"\(name)\" could not be generated.")
        return EmptyCode()
    }
    
    var godotVariantOperation: String? {
        "GDNATIVE_VARIANT_OP_" + name.operationName!
    }
    
    /// Godot operators might not be correct operators in Swift.
    /// In this case, we make it a member function, and not a static function.
    private var isMemberFunction: Bool {
        if rightType == nil {
            return true
        }
        
        return name.isImpossibleOperator
    }
    
    var godotOperatorPtrName: String {
        var name = "__operator_binding_" + name.operationName!
        if let rightType {
            name += "_" + rightType.godotName
        }
        
        return name.lowercased()
    }
}

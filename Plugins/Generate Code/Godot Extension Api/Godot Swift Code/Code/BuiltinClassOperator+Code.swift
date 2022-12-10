import Foundation
import PackagePlugin

extension ExtensionApi.BuiltinClass.Operator {
    @CodeBuilder
    func code(className: String, operatorPtrName: String) -> some SwiftCode {
        if let convertedRightType = convertedRightType(className: className) {
            // If there is a right type, it should be a function.
            
            if isMemberFunction {
                // If the memberFunctionName exists, that means that it should be a
                // member function instead of a static func.
                Func(name: convertedFunctionName,
                     parameters: [.named(parameterName(for: convertedRightType),
                                         type: convertedRightType, label: .hidden)],
                     returnType: convertedReturnType(className: className)) {
                    functionContentCode(className: className, operatorPtrName: operatorPtrName)
                }.public()
            } else {
                Func(name: convertedFunctionName,
                     parameters: [.named("lhs", type: className),
                                  .named("rhs", type: convertedRightType)],
                     returnType: convertedReturnType(className: className)) {
                    functionContentCode(className: className, operatorPtrName: operatorPtrName)
                }.static().public()
            }
        } else if isMemberFunction {
            // If there is no right type, it should be a var.
            Var(convertedFunctionName, type: convertedReturnType(className: className)) {
                functionContentCode(className: className, operatorPtrName: operatorPtrName)
            }.public()
        } else {
            emptyErrorCode()
        }
    }
    
    @CodeBuilder
    private func functionContentCode(className: String, operatorPtrName: String) -> some SwiftCode {
        Property("__returnValue").varDefined().assign(value: convertedReturnType(className: className) + "()")
        Spacer()
        
        ObjectsPointersAccess(parameters: objectsPointerAccessParameters(className: className)) { pointerNames in
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
    
    private func objectsPointerAccessParameters<T: SwiftCode>(className: String) -> [ObjectsPointersAccess<T>.Parameter] {
        var parameters = [ObjectsPointersAccess<T>.Parameter]()
        
        if let convertedRightType = convertedRightType(className: className) {
            if isMemberFunction {
                parameters.append(.named("self", type: className))
                parameters.append(.named(parameterName(for: convertedRightType), type: convertedRightType))
            } else {
                parameters.append(.named("lhs", type: className))
                parameters.append(.named("rhs", type: convertedRightType))
            }
        } else {
            parameters.append(.named("self", type: className))
        }
        
        parameters.append(.named("__returnValue", type: returnType, isMutable: true))

        return parameters
    }
    
    private func emptyErrorCode() -> some SwiftCode {
        Diagnostics.error("The operator \"\(name)\" could not be generated.")
        return EmptyCode()
    }
    
    var operationName: String? {
        switch name {
        case "==": return "EQUAL"
        case "!=": return "NOT_EQUAL"
        case "<": return "LESS"
        case "<=": return "LESS_EQUAL"
        case ">": return "GREATER"
        case ">=": return "GREATER_EQUAL"
            
            // mathematic
        case "+": return "ADD"
        case "-": return "SUBTRACT"
        case "*": return "MULTIPLY"
        case "/": return "DIVIDE"
        case "unary-": return "NEGATE"
        case "unary+": return "POSITIVE"
        case "%": return "MODULE"
            
            // bitwise
        case "<<": return "SHIFT_LEFT"
        case ">>": return "SHIFT_RIGHT"
        case "&": return "BIT_AND"
        case "|": return "BIT_OR"
        case "^": return "BIT_XOR"
        case "~": return "BIT_NEGATE"
            
            // containment
        case "in": return "IN"
        default: return nil
        }
    }
    
    var godotVariantOperation: String? {
        if let operationName {
            return "GDNATIVE_VARIANT_OP_" + operationName
        } else {
            return nil
        }
    }
    
    /// Godot operators might not be correct operators in Swift.
    /// In this case, we make it a member function, and not a static function.
    private var isMemberFunction: Bool {
        if rightType == nil {
            return true
        }
        
        switch name {
        case "unary-",
            "unary+",
            "in": return true
        default: return false
        }
    }
    
    private var convertedFunctionName: String {
        ExtensionApi.functionSwiftName(for: name).name
    }
    
    private func convertedReturnType(className: String) -> String {
        ExtensionApi.convert(type: returnType, insideType: className)
    }
    
    private func parameterName(for name: String) -> String {
        NamingConvention.pascal.convert(string: name, to: .camel)
    }
    
    private func convertedRightType(className: String) -> String? {
        if let rightType {
            return ExtensionApi.convert(type: rightType, insideType: className)
        } else {
            return nil
        }
    }
}

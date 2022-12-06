import Foundation
import PackagePlugin

extension ExtensionApi.BuiltinClass.Operator {
    @CodeBuilder
    func code(className: String, operatorPtrName: String) -> some SwiftCode {
        if let convertedRightType {
            // If there is a right type, it should be a function.
            
            if isMemberFunction {
                // If the memberFunctionName exists, that means that it should be a
                // member function instead of a static func.
                Func(name: convertedFunctionName,
                     parameters: [.named(parameterName(for: convertedRightType),
                                         type: convertedRightType, label: .hidden)],
                     returnType: convertedReturnType) {
                    functionContentCode(className: className, operatorPtrName: operatorPtrName)
                }.public()
            } else {
                Func(name: convertedFunctionName,
                     parameters: [.named("lhs", type: className),
                                  .named("rhs", type: convertedRightType)],
                     returnType: convertedReturnType) {
                    functionContentCode(className: className, operatorPtrName: operatorPtrName)
                }.static().public()
            }
        } else if isMemberFunction {
            // If there is no right type, it should be a var.
            Var(convertedFunctionName, type: convertedReturnType) {
                functionContentCode(className: className, operatorPtrName: operatorPtrName)
            }.public()
        } else {
            emptyErrorCode()
        }
    }
    
    @CodeBuilder
    private func functionContentCode(className: String, operatorPtrName: String) -> some SwiftCode {
        Property("_returnValue").varDefined().assign(value: convertedReturnType + "()")
        Spacer()
        
        ObjectsPointersAccess(parameters: objectsPointerAccessParameters(className: className)) {
            if let convertedRightType {
                let lhsName = isMemberFunction ? "self_ptr" : "lhs_ptr"
                let rhsName = isMemberFunction ? "\(parameterName(for: convertedRightType))_ptr" : "rhs_ptr"
                "Self.\(operatorPtrName)(\(lhsName), \(rhsName), _returnValue_ptr)"
            } else {
                "Self.\(operatorPtrName)(self_ptr, nil, _returnValue_ptr)"
            }
        }
        
        Spacer()
        Return("_returnValue")
    }
    
    private func objectsPointerAccessParameters<T: SwiftCode>(className: String) -> [ObjectsPointersAccess<T>.Parameter] {
        var parameters = [ObjectsPointersAccess<T>.Parameter]()
        
        if let convertedRightType {
            if isMemberFunction {
                parameters.append(.init(name: "self", type: className))
                parameters.append(.init(name: parameterName(for: convertedRightType), type: convertedRightType))
            } else {
                parameters.append(.init(name: "lhs", type: className))
                parameters.append(.init(name: "rhs", type: convertedRightType))
            }
        } else {
            parameters.append(.init(name: "self", type: className))
        }
        
        parameters.append(.init(name: "_returnValue", type: returnType, isMutable: true))

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
    
    private var convertedReturnType: String {
        ExtensionApi.convert(type: returnType)
    }
    
    private func parameterName(for name: String) -> String {
        NamingConvention.pascal.convert(string: name, to: .camel)
    }
    
    private var convertedRightType: String? {
        if let rightType {
            return ExtensionApi.convert(type: rightType)
        } else {
            return nil
        }
    }
}

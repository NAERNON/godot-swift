import Foundation
import CodeGenerator
import CodeTranslator

extension ExtensionApi.BuiltinClass.Operator {
    @CodeBuilder
    func code(type: InstanceType) -> some Code {
        defaultFunctionCode(definedIndise: type) { values in
            if rightType != nil {
                "Self.\(godotOperatorPtrName)(\(values.pointerNames[0]), \(values.pointerNames[1]), \(values.temporaryPointerName))"
            } else {
                "Self.\(godotOperatorPtrName)(\(values.pointerNames[0]), nil, \(values.temporaryPointerName))"
            }
        }.internal()
    }
    
    var godotVariantOperation: String? {
        "GDNATIVE_VARIANT_OP_" + NamingConvention.camel.convert(string: name.operationName!, to: .snake).uppercased()
    }
    
    var godotOperatorPtrName: String {
        var name = "__operator_binding_" + NamingConvention.camel.convert(string: name.operationName!, to: .snake).lowercased()
        if let rightType {
            name += "_" + rightType.code()
        }
        
        return name.lowercased()
    }
}

// MARK: Function conformance

extension ExtensionApi.BuiltinClass.Operator: Function {
    func arguments(definedInside type: InstanceType?) -> [ExtensionApi.Argument] {
        var arguments = [ExtensionApi.Argument]()
        if let type {
            arguments.append(.init(name: "lhs", type: type))
        }
        if let rightType {
            arguments.append(.init(name: "rhs", type: rightType))
        }
        return arguments
    }
    
    func returnType(definedInside type: InstanceType?) -> InstanceType? {
        returnType
    }
    
    func temporaryType(definedInside type: InstanceType?) -> InstanceType? {
        returnType
    }
    
    var functionName: FunctionName {
        .init(string: "operator_" + NamingConvention.camel.convert(string: name.operationName!, to: .snake).lowercased()).underscored()
    }
    
    var isVararg: Bool { false }
    var isStatic: Bool { true }
    var isConst: Bool { false }
    var isMutating: Bool { false }
    
    var usesPointersArray: Bool { false }
    var allParametersHaveHiddenLabels: Bool { true }
}

import Foundation
import CodeGenerator

extension ExtensionApi.BuiltinClass.Constructor {
    func code(type: InstanceType,
              classSize: Int,
              hasDestructor: Bool,
              godotDestructorPtrName: String) -> some Code {
        functionDefinitionCode(definedIndise: type) { parameters in
            if type.isBuiltinOpaqueValueType {
                let destructorString = hasDestructor ? ", destructorPtr: Self.\(godotDestructorPtrName)" : ""
                Var(temporaryValueName).typed("Opaque")
                    .assign(".init(size: \(classSize)\(destructorString))")
            } else {
                temporaryInitializerCode(definedIndise: type)
            }
            
            parametersPointersCode(definedIndise: type) { values in
                "Self." + godotConstructorPtrName + "(\(values.temporaryPointerName), \(values.pointersArrayName))"
            }
            
            if type.isBuiltinOpaqueValueType {
                Return("Self.init(opaque: \(temporaryValueName))")
            } else {
                temporaryReturnCode(definedIndise: type)
            }
        }.internal()
    }
    
    var godotConstructorPtrName: String {
        "__constructor_\(index)"
    }
}

// MARK: Function conformance

extension ExtensionApi.BuiltinClass.Constructor: Function {
    func arguments(definedInside type: InstanceType?) -> [ExtensionApi.Argument] {
        arguments ?? []
    }
    
    func returnType(definedInside type: InstanceType?) -> InstanceType? {
        type
    }
    
    func temporaryType(definedInside type: InstanceType?) -> InstanceType? {
        if type?.isBuiltinOpaqueValueType == true {
            return .opaque
        } else {
            return type
        }
    }
    
    var functionName: FunctionName { "_constructor" }
    
    var isVararg: Bool { false }
    var isStatic: Bool { true }
    var isConst: Bool { true }
    var isMutating: Bool { false }
    
    var usesPointersArray: Bool { true }
    var allParametersHaveHiddenLabels: Bool { false }
}

import Foundation
import CodeGenerator

extension ExtensionApi.BuiltinClass.Constructor {
    func code(type: InstanceType,
              classSize: Int,
              hasDestructor: Bool,
              godotDestructorPtrName: String) -> some Code {
        GodotBindingFunc(self,
                         type: type,
                         overrideReturnType: type,
                         overrideTemporaryType: type.isBuiltinOpaqueValueType ? .opaque : nil,
                         overridesInit: type.isBuiltinOpaqueValueType,
                         overridesReturn: type.isBuiltinOpaqueValueType) { temporaryValueName in
            let destructorString = hasDestructor ? ", destructorPtr: Self.\(godotDestructorPtrName)" : ""
            Var(temporaryValueName).typed("Opaque")
                .assign(".init(size: \(classSize)\(destructorString))")
        } content: { values in
            "Self." + godotConstructorPtrName + "(\(values.temporaryPointerName), \(values.pointersArrayName))"
        } overrideReturnContent: { temporaryValueName in
            Return("Self.init(opaque: \(temporaryValueName))")
        }.internal()
    }
    
    var godotConstructorPtrName: String {
        "__constructor_\(index)"
    }
}

extension ExtensionApi.BuiltinClass.Constructor: GodotBindingFuncDefinition {
    var bindingName: FunctionName {
        FunctionName(godotName: "constructor").underscored()
    }
    
    var bindingArguments: [ExtensionApi.Argument]? {
        arguments
    }
    
    var bindingReturnType: InstanceType? { nil }
    
    var isVararg: Bool { false }
    var isStatic: Bool { true }
    var isConst: Bool { true }
    var isMutating: Bool { false }
}

import Foundation

extension ExtensionApi.BuiltinClass.Method {
    func code(type: InstanceType) -> some SwiftCode {
        GodotBindingFunc(self, type: type) { values in
            "Self.\(godotMethodPtrName)(\(values.selfPointerName), \(values.pointersArrayName), \(values.temporaryPointerName), \(values.pointersCountValue))"
        }.internal().attributes(isResultDiscardable ? [.discardableResult] : [])
    }
    
    private var isResultDiscardable: Bool {
        isMutating && returnType != nil
    }
    
    var godotMethodPtrName: String {
        "__method_binding_\(name.godotName)"
    }
}

extension ExtensionApi.BuiltinClass.Method: GodotBindingFuncDefinition {
    var bindingName: FunctionName {
        name.underscored()
    }
    
    var bindingArguments: [ExtensionApi.Argument]? {
        arguments
    }
    
    var bindingReturnType: InstanceType? {
        returnType
    }
    
    var isMutating: Bool { !isConst && !isStatic }
}

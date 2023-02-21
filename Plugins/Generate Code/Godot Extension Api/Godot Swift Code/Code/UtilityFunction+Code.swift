import Foundation

extension ExtensionApi.UtilityFunction {
    func code() -> some SwiftCode {
        GodotBindingFunc(self, type: nil) { values in
            "UtilityFunctions.\(godotFunctionPtrName)(\(values.temporaryPointerName), \(values.pointersArrayName), \(values.pointersCountValue))"
        }.public()
    }
    
    private var realName: FunctionName {
        var new = name
        // We protect the name print for the Swift print function.
        if name.godotName == "print" {
            new.godotName = "print_variant"
        }
        return new
    }
    
    var godotFunctionPtrName: String {
        "__function_binding_\(name.godotName)"
    }
}

extension ExtensionApi.UtilityFunction: GodotBindingFuncDefinition {
    var bindingName: FunctionName {
        var new = name
        // We protect the name print for the Swift print function.
        if name.godotName == "print" {
            new.godotName = "print_variant"
        }
        return new
    }
    
    var bindingArguments: [ExtensionApi.Argument]? {
        arguments
    }
    
    var bindingReturnType: InstanceType? {
        returnType
    }
    
    var isStatic: Bool { false }
    var isConst: Bool { true }
    var isMutating: Bool { false }
}

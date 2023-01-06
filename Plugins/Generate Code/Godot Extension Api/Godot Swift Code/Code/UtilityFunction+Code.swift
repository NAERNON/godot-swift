import Foundation

extension ExtensionApi.UtilityFunction {
    func code() -> some SwiftCode {
        GodotBindingFunc(self, type: nil) { values in
            "UtilityFunctions.\(godotFunctionPtrName)(\(values.temporaryPointerName), \(values.pointersArrayName), Int32(\(values.pointersCountValue)))"
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

extension ExtensionApi.UtilityFunction: GodotFunction {
    var bindingName: FunctionName {
        var new = name
        // We protect the name print for the Swift print function.
        if name.godotName == "print" {
            new.godotName = "print_variant"
        }
        return new
    }
    
    var isStatic: Bool { false }
    var isConst: Bool { true }
    var isMutating: Bool { false }
}

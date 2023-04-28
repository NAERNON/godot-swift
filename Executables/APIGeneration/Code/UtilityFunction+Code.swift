import Foundation
import CodeGenerator

extension ExtensionApi.UtilityFunction {
    func code() -> some Code {
        defaultFunctionCode(definedIndise: nil) { values in
            "UtilityFunctions.\(godotFunctionPtrName)(\(values.temporaryPointerName), \(values.pointersArrayName), \(values.pointersCountValue))"
        }.public()
    }
    
    var godotFunctionPtrName: String {
        "__function_binding_\(name.baseName)"
    }
}

// MARK: Function conformance

extension ExtensionApi.UtilityFunction: Function {
    func arguments(definedInside type: InstanceType?) -> [ExtensionApi.Argument] {
        arguments ?? []
    }
    
    func returnType(definedInside type: InstanceType?) -> InstanceType? {
        returnType
    }
    
    func temporaryType(definedInside type: InstanceType?) -> InstanceType? {
        returnType
    }
    
    var functionName: FunctionName {
        var new = name
        // We protect the name print for the Swift print function.
        if name.string == "print" {
            new.string = "print_variant"
        }
        return new
    }
    
    var isStatic: Bool { false }
    var isConst: Bool { true }
    var isMutating: Bool { false }
    
    var usesPointersArray: Bool { true }
    var allParametersHaveHiddenLabels: Bool { false }
}

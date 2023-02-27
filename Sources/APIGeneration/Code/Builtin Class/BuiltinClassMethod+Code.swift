import Foundation
import CodeGenerator

extension ExtensionApi.BuiltinClass.Method {
    func code(type: InstanceType) -> some Code {
        underscored.defaultFunctionCode(definedIndise: type) { values in
            "Self.\(godotMethodPtrName)(\(values.selfPointerName), \(values.pointersArrayName), \(values.temporaryPointerName), \(values.pointersCountValue))"
        }.internal().attributes(isResultDiscardable ? [.discardableResult] : [])
    }
    
    private var underscored: Self {
        var method = self
        method.name = name.underscored()
        return method
    }
    
    private var isResultDiscardable: Bool {
        isMutating && returnType != nil
    }
    
    var godotMethodPtrName: String {
        "__method_binding_\(name.baseName)"
    }
}

// MARK: Function conformance

extension ExtensionApi.BuiltinClass.Method: Function {
    func arguments(definedInside type: InstanceType?) -> [ExtensionApi.Argument] {
        arguments ?? []
    }
    
    func returnType(definedInside type: InstanceType?) -> InstanceType? {
        returnType
    }
    
    func temporaryType(definedInside type: InstanceType?) -> InstanceType? {
        returnType
    }
    
    var functionName: FunctionName { name }
    
    var isMutating: Bool { !isConst && !isStatic }
    
    var usesPointersArray: Bool { true }
    var allParametersHaveHiddenLabels: Bool { false }
}

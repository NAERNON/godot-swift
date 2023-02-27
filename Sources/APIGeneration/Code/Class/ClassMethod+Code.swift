import Foundation
import CodeGenerator

extension ExtensionApi.Class.Method {
    @CodeBuilder
    func code(type: InstanceType, accessControl: AccessControl) -> some Code {
        if let godotMethodPtrName {
            defaultFunctionCode(definedIndise: type) { values in
                "GodotInterface.native.object_method_bind_ptrcall(Self.\(godotMethodPtrName), \(values.selfPointerName), \(values.pointersArrayName), \(values.temporaryPointerName))"
            }.accessControl(accessControl)
        } else if isVirtual {
            functionDefinitionCode(definedIndise: type) { _ in
                if let returnType = returnType(definedInside: type) {
                    returnType.defaultValueCode()
                }
            }.accessControl(accessControl).documentation {
"""
This function should only be called by Godot.
Override it to make custom behaviors.
"""
            }
        }
    }
    
    var godotMethodPtrName: String? {
        hash != nil ? "__method_binding_\(name.baseName)" : nil
    }
}

// MARK: Function conformance

extension ExtensionApi.Class.Method: Function {
    func arguments(definedInside type: InstanceType?) -> [ExtensionApi.Argument] {
        arguments?.map { argument in
            var bindingArgument = argument
            
            if bindingArgument.type.isPointer {
                bindingArgument.type = bindingArgument.type.optional()
            }
            
            return bindingArgument
        } ?? []
    }
    
    func returnType(definedInside type: InstanceType?) -> InstanceType? {
        guard let type = returnValue?.type else {
            return nil
        }
        
        if type.isPointer || type.isGodotClassType {
            return type.optional()
        } else {
            return type
        }
    }
    
    func temporaryType(definedInside type: InstanceType?) -> InstanceType? {
        returnValue?.type
    }
    
    var functionName: FunctionName { name }
    
    var isMutating: Bool { false }
    
    var usesPointersArray: Bool { true }
    var allParametersHaveHiddenLabels: Bool { false }
}

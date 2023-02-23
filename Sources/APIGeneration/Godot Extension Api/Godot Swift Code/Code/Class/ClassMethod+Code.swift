import Foundation

extension ExtensionApi.Class.Method {
    @CodeBuilder
    func code(type: InstanceType, accessControl: AccessControl) -> some SwiftCode {
        if let godotMethodPtrName {
            GodotBindingFunc(self, type: type) { values in
                "GodotInterface.native.object_method_bind_ptrcall(Self.\(godotMethodPtrName), \(values.selfPointerName), \(values.pointersArrayName), \(values.temporaryPointerName))"
            }
            .accessControl(accessControl)
        } else if isVirtual {
            Comment(style: .doc) {
"""
This function should only be called by Godot.
Override it to make custom behaviors.
"""
            }
            GodotBindingFunc(self, type: type,
                             overridesInit: true,
                             overridesReturn: true,
                             usePointerAccess: false) { _ in
                if let bindingReturnType {
                    bindingReturnType.defaultValue()
                }
            }
            .accessControl(accessControl)
        }
    }
    
    var godotMethodPtrName: String? {
        hash != nil ? "__method_binding_\(name.godotName)" : nil
    }
}

extension ExtensionApi.Class.Method: GodotBindingFuncDefinition {
    var bindingName: FunctionName {
        name
    }
    
    var bindingReturnType: InstanceType? {
        guard let type = returnValue?.type else {
            return nil
        }
        
        if type.isPointer {
            return type.optional()
        }
        
        return type
    }
    
    var bindingArguments: [ExtensionApi.Argument]? {
        arguments?.map { argument in
            var bindingArgument = argument
            
            if bindingArgument.type.isPointer {
                bindingArgument.type = bindingArgument.type.optional()
            }
            
            return bindingArgument
        }
    }
    
    var isMutating: Bool { false }
}

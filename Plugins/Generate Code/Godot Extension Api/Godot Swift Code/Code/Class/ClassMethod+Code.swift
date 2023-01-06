import Foundation

extension ExtensionApi.Class.Method {
    @CodeBuilder
    func code(type: InstanceType, accessControl: AccessControl) -> some SwiftCode {
        if let godotMethodPtrName {
            GodotBindingFunc(self, type: type) { values in
                "GodotInterface.native.object_method_bind_ptrcall(Self.\(godotMethodPtrName), \(values.selfPointerName), \(values.pointersArrayName), \(values.temporaryPointerName))"
            }.accessControl(accessControl)
        } else {
#warning("Deal with virtual functions")
            "VIRTUAL FUNCTION : " + self.name.godotName
        }
    }
    
    var godotMethodPtrName: String? {
        hash != nil ? "__method_binding_\(name.godotName)" : nil
    }
}

extension ExtensionApi.Class.Method: GodotFunction {
    var bindingName: FunctionName {
        name
    }
    
    var isMutating: Bool { false }
    
    var returnType: InstanceType? { returnValue?.type }
}

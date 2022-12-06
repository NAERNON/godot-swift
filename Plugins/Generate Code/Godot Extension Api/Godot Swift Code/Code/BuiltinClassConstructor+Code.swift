import Foundation

extension ExtensionApi.BuiltinClass.Constructor {
    func code(constructorPointerName: String, className: String, translated: Bool) -> some SwiftCode {
        BindingInit(arguments: arguments, translated: translated) { formatted in
            // If the type is builtin, we need to make a temporary value
            // that will be modified by the Godot constructor.
            if ExtensionApi.isBuiltinBaseType(className) {
                "var __temporary = \(className)()"
                Spacer()
            }
            
            ObjectsPointersAccess(functionParameters: formatted.parameters, generatePointersArray: true) { pointerNames in
                
                if ExtensionApi.isBuiltinBaseType(className) {
                    ObjectsPointersAccess(parameters: .named("__temporary", type: className, isMutable: true)) { temporaryPointerNames in
                        "Self." + constructorPointerName + "(\(temporaryPointerNames.parameters[0]), \(pointerNames.array!))"
                    }
                } else {
                    ObjectsPointersAccess(parameters: .named("self", type: className, isMutable: false)) { selfPointerNames in
                        "Self." + constructorPointerName + "(\(selfPointerNames.parameters[0]), \(pointerNames.array!))"
                    }
                }
                
            }
            
            // If the type is builtin, we use the temporary value set it to self.
            if ExtensionApi.isBuiltinBaseType(className) {
                Spacer()
                "self = __temporary"
            }
            
        }.public()
    }
}

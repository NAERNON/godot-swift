import Foundation
import GodotExtensionHeaders

extension ClassRegister {
    final class CustomClassBinding {
        let level: GodotInitializationLevel
        
        let type: Object.Type
        let name: StringName
        let superclassType: Object.Type
        let superclassName: StringName
        
        let bindingCallbacks: GDExtensionInstanceBindingCallbacks
        
        let toStringFunction: GDExtensionClassToString
        let createInstanceFunction: GDExtensionClassCreateInstance
        let freeInstanceFunction: GDExtensionClassFreeInstance
        
        private var virtualFuncNameToCall = [StringName : GDExtensionClassCallVirtual]()
        
        private(set) var functions = [FunctionBinding]()
        
        // MARK: Init
        
        init(
            level: GodotInitializationLevel,
            type: Object.Type,
            superclassType: Object.Type,
            toStringFunction: GDExtensionClassToString,
            createInstanceFunction: GDExtensionClassCreateInstance,
            freeInstanceFunction: GDExtensionClassFreeInstance
        ) {
            self.level = level
            
            self.type = type
            self.name = type._gd_className
            self.superclassType = superclassType
            self.superclassName = superclassType._gd_className
            
            self.bindingCallbacks = type.instanceBindingsCallbacks()
            
            self.toStringFunction = toStringFunction
            self.createInstanceFunction = createInstanceFunction
            self.freeInstanceFunction = freeInstanceFunction
        }
        
        // MARK: Virtual Functions
        
        @discardableResult
        func appendVirtualFunc(name: StringName, call: GDExtensionClassCallVirtual) -> Bool {
            guard virtualFuncNameToCall[name] == nil else {
                return false
            }
            
            virtualFuncNameToCall[name] = call
            
            return true
        }
        
        func virtualFuncCall(forName name: StringName) -> GDExtensionClassCallVirtual? {
            virtualFuncNameToCall[name]
        }
        
        // MARK: Functions
        
        func appendFunctionBinding(_ functionBinding: FunctionBinding) {
            functions.append(functionBinding)
        }
    }
}

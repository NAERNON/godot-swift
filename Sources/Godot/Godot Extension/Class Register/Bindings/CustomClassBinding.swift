import Foundation
import GodotExtensionHeaders

extension ClassRegister {
    final class CustomClassBinding {
        let level: GodotInitializationLevel
        
        let type: Object.Type
        let name: GodotStringName
        let superclassType: Object.Type
        let superclassName: GodotStringName
        
        let bindingCallbacks: GDExtensionInstanceBindingCallbacks
        
        let toStringFunction: GDExtensionClassToString
        let createInstanceFunction: GDExtensionClassCreateInstance
        let freeInstanceFunction: GDExtensionClassFreeInstance
        
        private var virtualFuncNameToCall = [GodotStringName : GDExtensionClassCallVirtual]()
        
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
            self.name = type.__className
            self.superclassType = superclassType
            self.superclassName = superclassType.__className
            
            self.bindingCallbacks = type.__instanceBindingCallbacks()
            
            self.toStringFunction = toStringFunction
            self.createInstanceFunction = createInstanceFunction
            self.freeInstanceFunction = freeInstanceFunction
        }
        
        // MARK: Virtual Functions
        
        @discardableResult
        func appendVirtualFunc(name: GodotStringName, call: GDExtensionClassCallVirtual) -> Bool {
            guard virtualFuncNameToCall[name] == nil else {
                return false
            }
            
            virtualFuncNameToCall[name] = call
            
            return true
        }
        
        func virtualFuncCall(forName name: GodotStringName) -> GDExtensionClassCallVirtual? {
            virtualFuncNameToCall[name]
        }
        
        // MARK: Functions
        
        func appendFunctionBinding(_ functionBinding: FunctionBinding) {
            functions.append(functionBinding)
        }
    }
}

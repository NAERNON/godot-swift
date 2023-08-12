import Foundation
import GodotExtensionHeaders

extension ClassRegister {
    class CustomClassBinding: ClassBinding {
        let superclassType: Object.Type
        let superclassName: GodotStringName
        
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
            self.superclassType = superclassType
            self.superclassName = superclassType.__className
            
            self.toStringFunction = toStringFunction
            self.createInstanceFunction = createInstanceFunction
            self.freeInstanceFunction = freeInstanceFunction
            
            super.init(level: level, type: type)
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
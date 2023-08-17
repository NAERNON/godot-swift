import GodotExtensionHeaders

extension ClassRegister {
    public class CustomClassBinding: ClassBinding {
        let superclassType: Object.Type
        let superclassName: GodotStringName
        
        let toStringFunction: GDExtensionClassToString
        let createInstanceFunction: GDExtensionClassCreateInstance
        let freeInstanceFunction: GDExtensionClassFreeInstance
        
        private var virtualFuncNameToCall = [GodotStringName : GDExtensionClassCallVirtual]()
        
        private(set) var functions = [FunctionBinding]()
        private(set) var variables = [VariableBinding]()
        
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
        
        func appendFunction(_ functionBinding: FunctionBinding) {
            functions.append(functionBinding)
        }
        
        func appendVariable(_ variableBinding: VariableBinding) {
            variables.append(variableBinding)
        }
    }
}

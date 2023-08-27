import GodotExtensionHeaders

extension ClassRegister {
    public class CustomClassBinding: ClassBinding {
        let superclassType: Object.Type
        let superclassName: GodotStringName
        
        let toStringFunction: GDExtensionClassToString
        let createInstanceFunction: GDExtensionClassCreateInstance
        let freeInstanceFunction: GDExtensionClassFreeInstance
                
        private(set) var functions = [GodotStringName : FunctionBinding]()
        private(set) var functionOverrides = [GodotStringName : FunctionOverrideBinding]()
        private(set) var variables = [GodotStringName : VariableBinding]()
        private(set) var enums = [GodotStringName : EnumBinding]()
        private(set) var signals = [GodotStringName : SignalBinding]()
        
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
        
        func appendFunction(_ functionBinding: FunctionBinding) {
            functions[functionBinding.name] = functionBinding
        }
        
        func appendFunctionOverride(_ functionOverrideBinding: FunctionOverrideBinding) {
            functionOverrides[functionOverrideBinding.name] = functionOverrideBinding
        }
        
        func appendVariable(_ variableBinding: VariableBinding) {
            variables[variableBinding.name] = variableBinding
        }
        
        func appendEnum(_ enumBinding: EnumBinding) {
            enums[enumBinding.name] = enumBinding
        }

        func appendSignal(_ signalBinding: SignalBinding) {
            signals[signalBinding.name] = signalBinding
        }
    }
}

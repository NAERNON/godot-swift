import GodotExtensionHeaders

extension ClassRegistrar {
    public class CustomClassBinding: ClassBinding {
        let superclassType: Object.Type
        let superclassName: GodotStringName
        
        weak var superclassBinding: CustomClassBinding?
        
        let toStringFunction: GDExtensionClassToString
        let createInstanceFunction: GDExtensionClassCreateInstance
        let freeInstanceFunction: GDExtensionClassFreeInstance
                
        private var functions = [GodotStringName : FunctionBinding]()
        private var functionOverrides = [GodotStringName : FunctionOverrideBinding]()
        private var variables = [GodotStringName : VariableBinding]()
        private var enums = [GodotStringName : EnumBinding]()
        private var signals = [GodotStringName : SignalBinding]()
        
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
            self.superclassName = superclassType._$className
            
            self.toStringFunction = toStringFunction
            self.createInstanceFunction = createInstanceFunction
            self.freeInstanceFunction = freeInstanceFunction
            
            super.init(level: level, type: type)
        }
        
        // MARK: Append
        
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
        
        // MARK: Getters
        
        func function(named name: GodotStringName) -> FunctionBinding? {
            if let binding = functions[name] {
                return binding
            }
            
            return superclassBinding?.function(named: name)
        }
        
        func functionOverride(named name: GodotStringName) -> FunctionOverrideBinding? {
            if let binding = functionOverrides[name] {
                return binding
            }
            
            return superclassBinding?.functionOverride(named: name)
        }
        
        func variable(named name: GodotStringName) -> VariableBinding? {
            if let binding = variables[name] {
                return binding
            }
            
            return superclassBinding?.variable(named: name)
        }
        
        func `enum`(named name: GodotStringName) -> EnumBinding? {
            if let binding = enums[name] {
                return binding
            }
            
            return superclassBinding?.enum(named: name)
        }
        
        func signal(named name: GodotStringName) -> SignalBinding? {
            if let binding = signals[name] {
                return binding
            }
            
            return superclassBinding?.signal(named: name)
        }
    }
}

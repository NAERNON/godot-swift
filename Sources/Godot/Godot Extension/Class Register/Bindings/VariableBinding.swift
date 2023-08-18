import GodotExtensionHeaders

extension ClassRegister {
    public struct VariableBinding {
        public let name: GodotStringName
        
        public let getter: FunctionBinding
        public let setter: FunctionBinding?
        
        // MARK: Init
        
        init(
            name: GodotStringName,
            getter: FunctionBinding,
            setter: FunctionBinding?
        ) {
            self.name = name
            self.getter = getter
            self.setter = setter
        }
    }
}

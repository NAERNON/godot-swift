import GodotExtensionHeaders

extension ClassRegister {
    public final class FunctionOverrideBinding {
        public enum FunctionCall {
            case virtualFunc(GDExtensionClassCallVirtual)
        }
        
        public let name: GodotStringName
        public let className: GodotStringName
        public let call: FunctionCall
        
        // MARK: Init
        
        init(
            name: GodotStringName,
            className: GodotStringName,
            call: FunctionCall
        ) {
            self.name = name
            self.className = className
            self.call = call
        }
    }
}

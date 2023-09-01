import GodotExtensionHeaders

extension ClassRegister {
    public class ClassBinding {
        let level: GodotInitializationLevel
        
        public let type: Object.Type
        public let name: GodotStringName
        
        let callbacks: GodotInstanceBindingCallbacks
        
        var isCustomClass: Bool {
            type._$isCustomGodotClass
        }
        
        // MARK: Init
        
        init(
            level: GodotInitializationLevel,
            type: Object.Type
        ) {
            self.level = level
            
            self.type = type
            self.name = type._$className
            
            self.callbacks = type._$instanceBindingCallbacks()
        }
    }
}

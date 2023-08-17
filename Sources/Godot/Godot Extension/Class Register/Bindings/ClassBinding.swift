import GodotExtensionHeaders

extension ClassRegister {
    public class ClassBinding {
        let level: GodotInitializationLevel
        
        public let type: Object.Type
        public let name: GodotStringName
        
        let callbacks: GodotInstanceBindingCallbacks
        
        var isCustomClass: Bool {
            type.__isCustomGodotClass
        }
        
        // MARK: Init
        
        init(
            level: GodotInitializationLevel,
            type: Object.Type
        ) {
            self.level = level
            
            self.type = type
            self.name = type.__className
            
            self.callbacks = type.__instanceBindingCallbacks()
        }
    }
}

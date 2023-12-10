import GodotExtensionHeaders

extension ClassRegistrar {
    public class ClassBinding {
        let level: GodotInitializationLevel
        
        public let type: Object.Type
        public let name: GodotStringName
        
        let callbacks: GodotInstanceBindingCallbacks
        
        // MARK: Init
        
        init(
            level: GodotInitializationLevel,
            type: Object.Type
        ) {
            self.level = level
            
            self.type = type
            self.name = type.exposedClassName
            
            self.callbacks = type.instanceBindingCallbacks()
        }
    }
}

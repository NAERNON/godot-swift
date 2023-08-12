import GodotExtensionHeaders

extension ClassRegister {
    class ClassBinding {
        let level: GodotInitializationLevel
        
        let type: Object.Type
        let name: GodotStringName
        
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

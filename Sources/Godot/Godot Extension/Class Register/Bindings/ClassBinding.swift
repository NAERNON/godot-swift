import Foundation
import GodotExtensionHeaders

extension ClassRegister {
    final class ClassBinding {
        let level: GodotInitializationLevel
        
        let type: Object.Type
        let name: StringName
        
        let bindingCallbacks: GDExtensionInstanceBindingCallbacks
        
        // MARK: Init
        
        init(
            level: GodotInitializationLevel,
            type: Object.Type
        ) {
            self.level = level
            
            self.type = type
            self.name = type._gd_className
            
            self.bindingCallbacks = type.instanceBindingsCallbacks()
        }
    }
}

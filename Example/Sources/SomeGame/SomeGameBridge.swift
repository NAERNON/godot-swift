import Godot

@Bridge
public enum SomeGameBridge {
    public static let exposedClasses: [Object.Type] = [
        Character.self,
    ]
    
    public static func initialize(level: GodotInitializationLevel) {
        guard level == .level else {
            return
        }
        
        gdPrint("Swift module initialized")
    }
}

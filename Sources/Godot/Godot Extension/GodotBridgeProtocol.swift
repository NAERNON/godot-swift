import GodotExtensionHeaders

public protocol GodotBridgeProtocol {
    static var classesToRegister: [Object.Type] { get }
    
    static func initialize(level: GodotInitializationLevel)
    static func deinitialize(level: GodotInitializationLevel)
}

// MARK: - Default implementation

public extension GodotBridgeProtocol {
    static var classesToRegister: [Object.Type] { [] }
    
    static func initialize(level: GodotInitializationLevel) {}
    static func deinitialize(level: GodotInitializationLevel) {}
}

// MARK: - Extension

public extension GodotBridgeProtocol {
    static func initializerCallback(level: GDExtensionInitializationLevel) {
        if level == GDEXTENSION_INITIALIZATION_SCENE {
            for object in Self.classesToRegister {
                object.self.exposeToGodot()
            }
            
            GodotExtension.shared.classRegister.closeRegistration()
        }
        
        initialize(level: GodotInitializationLevel(level))
    }
    
    static func terminatorCallback(level: GDExtensionInitializationLevel) {
        deinitialize(level: GodotInitializationLevel(level))
    }
}

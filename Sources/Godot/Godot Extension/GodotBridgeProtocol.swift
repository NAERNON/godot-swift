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

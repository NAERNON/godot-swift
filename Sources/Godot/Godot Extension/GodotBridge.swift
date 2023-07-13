import GodotExtensionHeaders

/// A type that provides Godot initialization parameters.
///
/// You should not declare conformances to `GodotBridge` directly.
/// Use the ``Bridge()`` macro to automatically conform to this protocol.
///
/// Learn how to create a bridge: <doc:CreatingGodotBridge>.
public protocol GodotBridge {
    /// All the custom classes to expose to Godot.
    ///
    /// Only expose ``Object`` classes that are defined using
    /// the ``Exposable()`` macro.
    static var classesToRegister: [Object.Type] { get }
    
    /// A custom point of initialization.
    ///
    /// Use this function to perform some custom initialization
    /// of your module alongside Godot initialization.
    ///
    /// - parameter level: The Godot initialization level.
    static func initialize(level: GodotInitializationLevel)
    
    /// A custom point of deinitialization.
    ///
    /// Use this function to perform some custom deinitialization
    /// of your module alongside Godot deinitialization.
    ///
    /// - parameter level: The Godot deinitialization level.
    static func deinitialize(level: GodotInitializationLevel)
}

// MARK: - Default implementation

public extension GodotBridge {
    static var classesToRegister: [Object.Type] { [] }
    
    static func initialize(level: GodotInitializationLevel) {}
    static func deinitialize(level: GodotInitializationLevel) {}
}

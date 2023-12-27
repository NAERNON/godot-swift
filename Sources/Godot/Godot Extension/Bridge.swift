import GodotExtensionHeaders

/// A type that provides Godot initialization parameters.
///
/// You should not declare conformances to `Bridge` directly.
/// Use the ``Bridge()`` macro to automatically conform to this protocol.
///
/// Learn how to create a bridge: <doc:CreatingGodotBridge>.
public protocol Bridge {
    /// All the custom classes to expose to Godot.
    ///
    /// Only expose ``Object`` classes that are defined using
    /// the ``Exposable()`` macro.
    static var exposedClasses: [ExposableObject.Type] { get }
    
    /// Minimum initialization level required.
    ///
    /// If `core` or `servers`, the extension needs editor or game restart to take effect.
    static var minimumInitializationLevel: GodotInitializationLevel { get }
    
    /// A custom point of initialization.
    ///
    /// Use this method to perform some custom initialization
    /// of your module alongside Godot initialization.
    ///
    /// This method is called for each level of initialization.
    ///
    /// > warning: Godot is not fully initialized during this method call,
    /// so call any Godot related type thoroughly.
    ///
    /// - parameter level: The Godot initialization level.
    static func initialize(level: GodotInitializationLevel)
    
    /// A custom point of deinitialization.
    ///
    /// Use this method to perform some custom deinitialization
    /// of your module alongside Godot deinitialization.
    ///
    /// - parameter level: The Godot deinitialization level.
    static func deinitialize(level: GodotInitializationLevel)
}

// MARK: - Default implementation

public extension Bridge {
    static var exposedClasses: [Object.Type] { [] }
    static var minimumInitializationLevel: GodotInitializationLevel { .core }
    
    static func initialize(level: GodotInitializationLevel) {}
    static func deinitialize(level: GodotInitializationLevel) {}
}

// MARK: - Macro

/// Define and implements conformance of the Bridge protocol.
///
/// Learn how to create a bridge: <doc:CreatingGodotBridge>.
@attached(extension, conformances: Bridge)
@attached(peer, names: prefixed(initializeGodotModule))
public macro Bridge(_ extensionFunctionName: StaticString) = #externalMacro(module: "GodotMacros", type: "BridgeMacro")

import GodotExtensionHeaders

/// The centralized point of control of a Godot extension.
///
/// > Warning: Do not use ``GodotExtension``, or any of its members, directly.
///
/// Use the ``GodotBridge()`` macro to setup a bridge that will
/// initialize the GodotExtension.
public enum GodotExtension {
    // MARK: Properties
    
    /// A Boolean value indicating whether the extension is initialized.
    ///
    /// Once initialized, the extension cannot change its interface values.
    public private(set) static var isInitialized = false
    
    private(set) static var bridge: GodotBridgeProtocol.Type!
    
    private(set) static var interfacePtr: UnsafePointer<GDExtensionInterface>!
    private(set) static var libraryPtr: GDExtensionClassLibraryPtr?
    private(set) static var token: UnsafeMutableRawPointer!
    
    static var interface: GDExtensionInterface { interfacePtr.pointee }
    
    /// The shared class register used to register extension classes.
    public static let classRegister = ClassRegister.shared
    
    // MARK: Initialize
    
    /// Initializes the extension and all the bindings necessary for Godot to work.
    ///
    /// The extension should be initialized before any call to any type related to Godot.
    ///
    /// Do not initialize the extension directly,
    /// but instead use the ``GodotBridge()`` macro to setup a bridge.
    public static func initialize<T>(
        using bridge: T.Type,
        withInterfacePtr interfacePtr: UnsafePointer<GDExtensionInterface>,
        libraryPtr: GDExtensionClassLibraryPtr,
        initializationPtr: UnsafeMutablePointer<GDExtensionInitialization>,
        minimumInitializationLevel: GDExtensionInitializationLevel
    ) -> GDExtensionBool where T : GodotBridgeProtocol {
        guard !isInitialized else {
            return gdExtentionBool(false)
        }
        
        self.bridge = bridge
        
        self.interfacePtr = interfacePtr
        self.libraryPtr = libraryPtr
        self.token = UnsafeMutableRawPointer(mutating: interfacePtr)
        
        initializationPtr.pointee.initialize = initializeLevel
        initializationPtr.pointee.deinitialize = deinitializeLevel
        initializationPtr.pointee.minimum_initialization_level = minimumInitializationLevel
        
        isInitialized = true
        return gdExtentionBool(true)
    }
}

// MARK: - Levels

private func initializeLevel(userData: UnsafeMutableRawPointer?, level: GDExtensionInitializationLevel) {
    let level = GodotInitializationLevel(level)
    
    if level == .scene {
        GodotExtension.setBuiltinStructsBindings()
        GodotExtension.registerGodotClasses()
        Variant.setInitBindings()
        UtilityFunctions.setBindings()
    }
    
    GodotExtension.classRegister.initialize(level: level)
    
    if level == .scene {
        for object in GodotExtension.bridge.classesToRegister {
            object.self._gd_exposeToGodot()
        }
        GodotExtension.classRegister.closeRegistration()
    }
    
    GodotExtension.bridge.initialize(level: level)
}

private func deinitializeLevel(userData: UnsafeMutableRawPointer?, level: GDExtensionInitializationLevel) {
    let level = GodotInitializationLevel(level)
    
    GodotExtension.classRegister.deinitialize(level: level)
    GodotExtension.bridge.deinitialize(level: level)
}

// MARK: GDExtensionBool

func gdExtentionBool(_ value: Bool) -> GDExtensionBool {
    value ? 1 : 0
}

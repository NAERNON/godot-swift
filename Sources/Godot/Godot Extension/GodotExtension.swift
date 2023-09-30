import GodotExtensionHeaders

public typealias GodotInstanceBindingCallbacks = GDExtensionInstanceBindingCallbacks
public typealias GodotObjectPointer = GDExtensionObjectPtr

// MARK: - GodotExtension

/// The centralized point of control of a Godot extension.
///
/// > Warning: Do not use `GodotExtension`, or any of its members, directly.
///
/// Use the ``Bridge()`` macro to setup a bridge that will
/// initialize the `GodotExtension`.
public enum GodotExtension {
    public typealias GetProcAddress = GDExtensionInterfaceGetProcAddress
    public typealias ClassLibraryPointer = GDExtensionClassLibraryPtr
    public typealias InitializationPointer = UnsafeMutablePointer<GDExtensionInitialization>
    public typealias InitializationResult = GDExtensionBool
    
    // MARK: Properties
    
    /// A Boolean value indicating whether the extension is initialized.
    ///
    /// Once initialized, the extension cannot change its interface values.
    public private(set) static var isInitialized = false
    
    public private(set) static var version: GodotVersion!
    
    private(set) static var bridge: Bridge.Type!
    
    private(set) static var getProcAddress: GDExtensionInterfaceGetProcAddress!
    private(set) static var libraryPtr: GDExtensionClassLibraryPtr!
    private(set) static var token: GDExtensionClassLibraryPtr!
    private(set) static var initializationPtr: UnsafeMutablePointer<GDExtensionInitialization>!
    
    /// The class register used to register custom classes and expose them to the Godot editor.
    public static let classRegister = ClassRegister.shared
    
    // MARK: Initialize
    
    public enum InitializationError: Error {
        case alreadyInitialized
        case cannotLoadFunction(name: Swift.String)
    }
    
    /// Initializes the extension and all the bindings necessary for Godot to work.
    ///
    /// The extension should be initialized before any call to any type related to Godot.
    ///
    /// Do not initialize the extension directly,
    /// but instead use the ``Bridge()`` macro to setup a bridge.
    public static func initialize<T>(
        using bridge: T.Type,
        getProcAddress: GetProcAddress,
        libraryPtr: ClassLibraryPointer,
        initializationPtr: InitializationPointer
    ) throws where T : Bridge {
        guard !isInitialized else {
            throw InitializationError.alreadyInitialized
        }
        
        self.bridge = bridge
        
        self.getProcAddress = getProcAddress
        self.libraryPtr = libraryPtr
        self.token = libraryPtr
        self.initializationPtr = initializationPtr
        
        try loadAllInterfaceFunctions()
        loadGodotVersion()
        
        initializationPtr.pointee.initialize = initializeLevel
        initializationPtr.pointee.deinitialize = deinitializeLevel
        initializationPtr.pointee.minimum_initialization_level = bridge.minimumInitializationLevel.extensionLevel
        
        isInitialized = true
    }
    
    private static func loadGodotVersion() {
        var version = GDExtensionGodotVersion()
        gdextension_interface_get_godot_version(&version)
        self.version = .init(version)
    }
}

// MARK: - Levels

private func initializeLevel(userData: UnsafeMutableRawPointer?, level: GDExtensionInitializationLevel) {
    let level = GodotInitializationLevel(level)
    
    GodotExtension.classRegister.initialize(level: level)
    GodotExtension.classRegister.registerGodotClasses(forLevel: level)
    
    if level == .scene {
        for object in GodotExtension.bridge.exposedClasses {
            object.self._$exposeToGodot()
        }
    }
    
    GodotExtension.bridge.initialize(level: level)
}

private func deinitializeLevel(userData: UnsafeMutableRawPointer?, level: GDExtensionInitializationLevel) {
    let level = GodotInitializationLevel(level)
    
    GodotExtension.classRegister.deinitialize(level: level)
    GodotExtension.bridge.deinitialize(level: level)
}

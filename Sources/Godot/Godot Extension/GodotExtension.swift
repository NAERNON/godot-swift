import GodotExtensionHeaders

/// The centralized point of control of a Godot extension.
///
/// Do not use `GodotExtension`, it should only be manipulated by Godot.
public final class GodotExtension {
    public typealias LevelCallback = (GDExtensionInitializationLevel) -> Void
    
    // MARK: Properties
    
    public static let shared = GodotExtension()
    
    public private(set) var isSetUp = false
    
    /// The pointer to the Godot extension interface.
    private(set) var interfacePtr: UnsafePointer<GDExtensionInterface>!
    private(set) var libraryPtr: GDExtensionClassLibraryPtr?
    private(set) var interface: GDExtensionInterface!
    private(set) var token: UnsafeMutableRawPointer!
    
    fileprivate var initializerCallback: LevelCallback!
    fileprivate var terminatorCallback: LevelCallback!
    
    private var minimumInitializationLevel = GDEXTENSION_INITIALIZATION_CORE
    
    /// The shared class register used to register extension classes.
    public let classRegister = ClassRegister.shared
    
    // MARK: Init
    
    private init() {}
    
    // MARK: Configure
    
    public func setUp(withInterfacePtr interfacePtr: UnsafePointer<GDExtensionInterface>,
                      libraryPtr: GDExtensionClassLibraryPtr,
                      initializationPtr: UnsafeMutablePointer<GDExtensionInitialization>,
                      initializerCallback: @escaping LevelCallback,
                      terminatorCallback: @escaping LevelCallback,
                      minimumInitializationLevel: GDExtensionInitializationLevel) -> GDExtensionBool {
        guard !isSetUp else {
            return GDExtensionBool(false)
        }
        
        self.interfacePtr = interfacePtr
        self.libraryPtr = libraryPtr
        self.interface = interfacePtr.pointee
        self.token = UnsafeMutableRawPointer(mutating: interfacePtr)
        
        self.initializerCallback = initializerCallback
        self.terminatorCallback = terminatorCallback
        
        initializationPtr.pointee.initialize = initializeLevel
        initializationPtr.pointee.deinitialize = deinitializeLevel
        initializationPtr.pointee.minimum_initialization_level = minimumInitializationLevel
        
        isSetUp = true
        return GDExtensionBool(true)
    }
    
    fileprivate func registerGodotTypes() {
        setAllBuiltinStructsBindings()
        setAllClassesBindings()
        Variant.setInitBindings()
        UtilityFunctions.setBindings()
    }
}

// MARK: - Levels

private func initializeLevel(userData: UnsafeMutableRawPointer?, level: GDExtensionInitializationLevel) {
    if level == GDEXTENSION_INITIALIZATION_SCENE {
        GodotExtension.shared.registerGodotTypes()
    }
    
    GodotExtension.shared.initializerCallback(level)
    GodotExtension.shared.classRegister.initialize(level: level)
}

private func deinitializeLevel(userData: UnsafeMutableRawPointer?, level: GDExtensionInitializationLevel) {
    GodotExtension.shared.classRegister.deinitialize(level: level)
    
    GodotExtension.shared.terminatorCallback(level)
}

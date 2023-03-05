import GodotExtensionHeaders

/// The centralized point of control of a Godot extension.
///
/// Do not use `GodotExtension`, it should only be manipulated by Godot.
public final class GodotExtension {
    public typealias LevelCallback = (GDNativeInitializationLevel) -> Void
    
    // MARK: Properties
    
    public static let shared = GodotExtension()
    
    public private(set) var isSetUp = false
    
    /// The pointer to the Godot native interface.
    private(set) var interfacePtr: UnsafePointer<GDNativeInterface>!
    private(set) var libraryPtr: GDNativeExtensionClassLibraryPtr?
    private(set) var interface: GDNativeInterface!
    private(set) var token: UnsafeMutableRawPointer!
    
    fileprivate var initializerCallback: LevelCallback!
    fileprivate var terminatorCallback: LevelCallback!
    
    private var minimumInitializationLevel = GDNATIVE_INITIALIZATION_CORE
    
    /// The shared class register used to register extension classes.
    public let classRegister = ClassRegister.shared
    
    // MARK: Init
    
    private init() {}
    
    // MARK: Configure
    
    public func setUp(withInterfacePtr interfacePtr: UnsafePointer<GDNativeInterface>,
                      libraryPtr: GDNativeExtensionClassLibraryPtr,
                      initializationPtr: UnsafeMutablePointer<GDNativeInitialization>,
                      initializerCallback: @escaping LevelCallback,
                      terminatorCallback: @escaping LevelCallback,
                      minimumInitializationLevel: GDNativeInitializationLevel) -> GDNativeBool {
        guard !isSetUp else {
            return 0
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
        return 1
    }
    
    fileprivate func registerGodotTypes() {
        setAllBuiltinStructsBindings()
        setAllClassesBindings()
        Variant.setInitBindings()
        UtilityFunctions.setBindings()
    }
}

// MARK: - Levels

private func initializeLevel(userData: UnsafeMutableRawPointer?, level: GDNativeInitializationLevel) {
    if level == GDNATIVE_INITIALIZATION_SCENE {
        GodotExtension.shared.registerGodotTypes()
    }
    
    GodotExtension.shared.initializerCallback(level)
    GodotExtension.shared.classRegister.initialize(level: level)
}

private func deinitializeLevel(userData: UnsafeMutableRawPointer?, level: GDNativeInitializationLevel) {
    GodotExtension.shared.classRegister.deinitialize(level: level)
    
    GodotExtension.shared.terminatorCallback(level)
}

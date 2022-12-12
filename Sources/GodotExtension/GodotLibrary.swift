import GodotExtensionHeaders
import Godot

public final class GodotLibrary {
    public typealias Callback = (GDNativeInitializationLevel) -> Void
    
    // MARK: Properties
    
    public static let main = GodotLibrary()
    
    /// The pointer to the Godot native interface.
    private var interfacePtr: UnsafePointer<GDNativeInterface>!
    public var interface: GDNativeInterface { interfacePtr.pointee }
    
    var libraryPtr: GDNativeExtensionClassLibraryPtr?
    
    var token: UnsafeMutableRawPointer?
    
    fileprivate var initializerCallback: Callback?
    fileprivate var terminatorCallback: Callback?
    
    private var minimumInitializationLevel = GDNATIVE_INITIALIZATION_CORE
    
    // MARK: Init
    
    private init() {}
    
    // MARK: Build
    
    public func buildLibrary(withInterfacePtr interfacePtr: UnsafePointer<GDNativeInterface>,
                             libraryPtr: GDNativeExtensionClassLibraryPtr,
                             initializationPtr: UnsafeMutablePointer<GDNativeInitialization>,
                             initializerCallback: @escaping Callback,
                             terminatorCallback: @escaping Callback,
                             minimumInitializationLevel: GDNativeInitializationLevel) -> GDNativeBool {
        self.interfacePtr = interfacePtr
        self.libraryPtr = libraryPtr
        self.token = UnsafeMutableRawPointer(mutating: interfacePtr)
        
        self.initializerCallback = initializerCallback
        self.terminatorCallback = terminatorCallback
        
        initializationPtr.pointee.initialize = initializeLevel
        initializationPtr.pointee.deinitialize = deinitializeLevel
        initializationPtr.pointee.minimum_initialization_level = minimumInitializationLevel
        
        Godot.GodotInterface.setupGodot(withNativeInterface: interface)
        
        return 1
    }
}

// MARK: - Initialization and deinitialization levels

private func initializeLevel(userData: UnsafeMutableRawPointer?, level: GDNativeInitializationLevel) {
    ClassDataBase.main.currentLevel = level
    
    if let callback = GodotLibrary.main.initializerCallback {
        callback(level)
    }
    
    ClassDataBase.main.initialize(level: level)
}

private func deinitializeLevel(userData: UnsafeMutableRawPointer?, level: GDNativeInitializationLevel) {
    ClassDataBase.main.currentLevel = level
    ClassDataBase.main.deinitialize(level: level)
    
    if let callback = GodotLibrary.main.terminatorCallback {
        callback(level)
    }
}

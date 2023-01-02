import GodotExtensionHeaders
import Godot

public final class GodotLibrary {
    public typealias Callback = (GDNativeInitializationLevel) -> Void
    
    // MARK: Properties
    
    public static let main = GodotLibrary()
    
    /// The pointer to the Godot native interface.
    fileprivate var interfacePtr: UnsafePointer<GDNativeInterface>!
    
    private var libraryPtr: GDNativeExtensionClassLibraryPtr?
    
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
        
        self.initializerCallback = initializerCallback
        self.terminatorCallback = terminatorCallback
        
        initializationPtr.pointee.initialize = initializeLevel
        initializationPtr.pointee.deinitialize = deinitializeLevel
        initializationPtr.pointee.minimum_initialization_level = minimumInitializationLevel
        
        return 1
    }
}

// MARK: - Levels

private func initializeLevel(userData: UnsafeMutableRawPointer?, level: GDNativeInitializationLevel) {
    if level == GDNATIVE_INITIALIZATION_SCENE {
        Godot.GodotInterface.setupGodot(withNativeInterfacePtr: GodotLibrary.main.interfacePtr)
    }
    
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

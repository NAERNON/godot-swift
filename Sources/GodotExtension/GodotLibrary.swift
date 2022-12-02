import GodotExtensionHeaders

let GDNativeFalse: UInt8 = 0
let GDNativeTrue: UInt8  = 1

public final class GodotLibrary {
    public typealias Callback = (GDNativeInitializationLevel) -> Void
    
    // MARK: Properties
    
    public static let main = GodotLibrary()
    
    /// The pointer to the Godot native interface.
    private var interfacePtr: UnsafePointer<GDNativeInterface>?
    public var interface: GDNativeInterface? { interfacePtr?.pointee }
    
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
        
        Variant.sharedConstructorCollection = .loaded()
        if let interface {
            setInitAndDeinitBindingsOnBuiltinClasses(with: interface)
        }
        
        return GDNativeTrue
    }
    
    // MARK: Print
    
    func print(message: String,
               function: String = #function,
               file: String = #file,
               line: Int = #line,
               isError: Bool) {
        if isError {
            interfacePtr?.pointee.print_error(message, function, file, Int32(line))
        } else {
            interfacePtr?.pointee.print_warning(message, function, file, Int32(line))
        }
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

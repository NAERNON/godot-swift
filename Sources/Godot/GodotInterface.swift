import Foundation
import GodotExtensionHeaders

/// A type that holds a Godot native interface value.
/// It should only be used internally and by the GodotExtension target.
///
/// It is the starting point of the Godot target and has to be setup.
public enum GodotInterface {
    internal static private(set) var native: GDNativeInterface!
    internal static private(set) var token: UnsafeMutableRawPointer!
    
    public static private(set) var isGodotSetup = false
    
    /// This function must be called in order for Godot to work.
    /// Almost every type in the target are using this interface for calling Godot.
    static public func setupGodot(withNativeInterfacePtr nativeInterfacePtr: UnsafePointer<GDNativeInterface>) {
        guard !isGodotSetup else {
            printGodotWarning("Trying to setup Godot but is already setup.")
            return
        }
        
        self.native = nativeInterfacePtr.pointee
        self.token = UnsafeMutableRawPointer(mutating: nativeInterfacePtr)
        
        setAllBuiltinStructsBindings()
        setAllClassesBindings()
        Variant.setInitBindings()
        UtilityFunctions.setBindings()
        
        isGodotSetup = true
    }
}

import Foundation
import GodotExtensionHeaders

func retreiveObject<T>(ofType type: T.Type, from ptr: GDNativeObjectPtr?) -> T? where T : Object {
    guard let ptr else {
        return nil
    }
    
    return withUnsafePointer(to: T.instanceBindingsCallbacks()) { callbacksPointer in
        let opaque = GodotExtension.shared.interface.object_get_instance_binding(
            ptr,
            GodotExtension.shared.token,
            callbacksPointer)
        
        return Unmanaged<T>.fromOpaque(opaque!).takeUnretainedValue()
    }
}

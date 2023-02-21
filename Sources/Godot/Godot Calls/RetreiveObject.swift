import Foundation
import GodotExtensionHeaders

func retreiveObject<T: Object>(ofType type: T.Type, from ptr: GDNativeObjectPtr?) -> T? {
    guard let ptr else {
        return nil
    }
    
    return withUnsafePointer(to: T.instanceBindingsCallbacks()) { callbacksPointer in
        let opaque = GodotInterface.native.object_get_instance_binding(
            ptr,
            GodotInterface.token,
            callbacksPointer)
        
        return Unmanaged<T>.fromOpaque(opaque!).takeUnretainedValue()
    }
}

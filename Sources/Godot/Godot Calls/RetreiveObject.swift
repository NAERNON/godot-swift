import Foundation
import GodotExtensionHeaders

func retreiveObject<T>(ofType type: T.Type, from ptr: GDExtensionObjectPtr?) -> T? where T : Object {
    guard let ptr else {
        return nil
    }
    
    return withUnsafePointer(to: T.instanceBindingsCallbacks()) { callbacksPointer in
        let opaque = GodotExtension.interface.object_get_instance_binding(
            ptr,
            GodotExtension.token,
            callbacksPointer
        )
        
        return Unmanaged<T>.fromOpaque(opaque!).takeUnretainedValue()
    }
}

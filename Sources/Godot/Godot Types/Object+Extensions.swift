import Foundation
import GodotExtensionHeaders

extension Object {
    class func retreivedInstanceManagedByGodot(_ instancePtr: GDExtensionObjectPtr?) -> Self? {
        guard let instancePtr else {
            return nil
        }
        
        guard let className = GodotStringName.className(forObjectPointer: instancePtr),
              let bindingCallbacks = GodotExtension.classRegister.bindingCallbacks(forClassNamed: className)
        else {
            return nil
        }
        
        return withUnsafePointer(to: bindingCallbacks) { callbacksPointer in
            let opaque = gdextension_interface_object_get_instance_binding(
                instancePtr,
                GodotExtension.token,
                callbacksPointer
            )
            
            if Self.__isCustomGodotClass {
                return Unmanaged<Self>.fromOpaque(opaque!).takeUnretainedValue()
            } else {
                return Unmanaged<Self>.fromOpaque(opaque!).takeRetainedValue()
            }
        }
    }
    
    /// Passes the memory management of this instance onto Godot.
    ///
    /// There is a risk of memory leaking if not correctly used.
    internal func consumeByGodot(ontoUnsafePointer destination: UnsafeMutableRawPointer) {
        withUnsafeRawPointer { selfPtr in
            gdextension_interface_ref_set_object(destination, selfPtr)
        }
    }
}

extension Optional where Wrapped : Object {
    public func withUnsafeRawPointer<Result>(
        _ body: (GDExtensionConstObjectPtr?) throws -> Result
    ) rethrows -> Result {
        switch self {
        case .none:
            try body(nil)
        case .some(let wrapped):
            try wrapped.withUnsafeRawPointer { try body($0) }
        }
    }
    
    public func withUnsafeRawPointer<Result>(
        _ body: (GDExtensionObjectPtr?) throws -> Result
    ) rethrows -> Result {
        switch self {
        case .none:
            try body(nil)
        case .some(let wrapped):
            try wrapped.withUnsafeRawPointer { try body($0) }
        }
    }
    
    /// Passes the memory management of this instance onto Godot.
    ///
    /// There is a risk of memory leaking if not correctly used.
    internal func consumeByGodot(ontoUnsafePointer destination: UnsafeMutableRawPointer) {
        switch self {
        case .none:
            gdextension_interface_ref_set_object(destination, nil)
        case .some(let wrapped):
            wrapped.consumeByGodot(ontoUnsafePointer: destination)
        }
    }
}

extension Object: Equatable {
    public static func == (lhs: Object, rhs: Object) -> Bool {
        lhs.getInstanceId() == rhs.getInstanceId()
    }
}

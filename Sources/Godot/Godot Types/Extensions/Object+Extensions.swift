import GodotExtensionHeaders

extension Object {
    class func retreivedInstanceManagedByGodot(_ instancePtr: GDExtensionObjectPtr?) -> Self? {
        guard let instancePtr else {
            return nil
        }
        
        guard let className = GodotStringName.className(forObjectPointer: instancePtr),
              let binding = GodotExtension.classRegister.binding(forClassNamed: className)
        else {
            return nil
        }
        
        let instance: Object = withUnsafePointer(to: binding.callbacks) { callbacksPointer in
            let opaque = gdextension_interface_object_get_instance_binding(
                instancePtr,
                GodotExtension.token,
                callbacksPointer
            )
            
            if binding.isCustomClass {
                return Unmanaged<Object>.fromOpaque(opaque!).takeUnretainedValue()
            } else {
                return binding.type.init(objectPointer: opaque!)
            }
        }
        
        (instance as? RefCounted)?.initGodotRef()
        
        return instance as? Self
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
        lhs.instanceId() == rhs.instanceId()
    }
}

import GodotExtensionHeaders

extension GodotExtension {
    // MARK: Description
    
    public static func description<Value>(
        of _: Value.Type,
        instancePtr: GDExtensionClassInstancePtr?,
        isValid: UnsafeMutablePointer<GDExtensionBool>?,
        out: GDExtensionStringPtr?
    ) where Value : ExposableObject {
        guard let instancePtr else { return }
        
        isValid?.pointee = 1
        let instance = Unmanaged<Value>.fromOpaque(instancePtr).takeUnretainedValue()
        GodotString(describing: instance).copyToGodot(unsafePointer: out!)
    }
    
    // MARK: Make new instance
    
    public static func makeNewInstanceManagedByGodot<Value>(
        of _: Value.Type
    ) -> UnsafeMutableRawPointer
    where Value : ExposableObject {
        Value().withGodotUnsafeMutableRawPointer { $0 }
    }
    
    public static func makeNewInstanceManagedByGodot<Value>(
        of _: Value.Type
    ) -> UnsafeMutableRawPointer
    where Value : ExposableObject & RefCounted {
        let instance = Value()
        
        _ = Unmanaged.passRetained(instance)
        
        return instance.withGodotUnsafeMutableRawPointer { $0 }
    }
    
    // MARK: Free instance
    
    public static func freeInstanceManagedByGodot<Value>(
        of _: Value.Type,
        instancePtr: UnsafeMutableRawPointer?
    ) where Value : ExposableObject {
        guard let instancePtr else { return }
        
        Unmanaged<Value>.fromOpaque(instancePtr).release()
    }
    
    public static func freeInstanceManagedByGodot<Value>(
        of _: Value.Type,
        instancePtr: UnsafeMutableRawPointer?
    ) where Value : ExposableObject & RefCounted {
        guard let instancePtr else { return }
        
        let instance = Unmanaged<Value>.fromOpaque(instancePtr).takeRetainedValue()
        instance.isPointerFreed = true
    }
    
    // MARK: Reference callback
    
    public static func referenceCallback<Value>(
        of _: Value.Type,
        instancePtr: UnsafeMutableRawPointer?,
        reference: UInt8
    ) -> UInt8 where Value : ExposableObject {
        return 1
    }
    
    public static func referenceCallback<Value>(
        of _: Value.Type,
        instancePtr: UnsafeMutableRawPointer?,
        reference: UInt8
    ) -> UInt8 where Value : ExposableObject & RefCounted {
        guard let instancePtr else { return 0 }
        
        let unmanaged = Unmanaged<Value>.fromOpaque(instancePtr)
        
        if reference == 0 {
            unmanaged.release()
        } else {
            _ = unmanaged.retain()
        }
        
        return 0
    }
}

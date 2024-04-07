
extension PackedFloat32Array: Variant.Storable {
    public static let variantStorageType: Variant.StorageType? = .packedFloat32Array
    
    public static func convertToStorage(
        _ value: consuming Self
    ) -> Variant.Storage {
        let storage = Variant.Storage()
        
        storage.withUnsafeMutableRawPointer { storagePtr in
            value.withUnsafeMutableRawPointer { valuePtr in
                fromTypeVariantConstructor(storagePtr, valuePtr)
            }
        }
        
        return storage
    }
    
    public static func convertFromCheckedStorage(
        _ storage: borrowing Variant.Storage
    ) -> Self {
        var newValue = Self()
        
        storage.withUnsafeMutableRawPointer { storagePtr in
            newValue.withGodotUnsafeMutableRawPointer { newValuePtr in
                toTypeVariantConstructor(newValuePtr, storagePtr)
            }
        }
        
        return newValue
    }
    
    public static func convertFromCheckedStorage(
        consuming storage: consuming Variant.Storage
    ) -> Self {
        convertFromCheckedStorage(storage)
    }
}

extension PackedFloat32Array: Hintable {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension PackedFloat32Array: Exposable {
    public static let variantRepresentationType: Variant.RepresentationType = .packedFloat32Array
    
    public static func transferFromGodot(
        unsafePointer: UnsafeRawPointer?
    ) -> Self {
        Self._makeFromPackedFloat32ArrayPointer(unsafePointer!)
    }
    
    // func transferToGodot
    // implemented in GodotOpaqueBuiltinClass macro
}

extension PackedFloat32Array: GodotRawPointerAccessible {
    func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer?) throws -> Result
    ) rethrows -> Result {
        try self.withUnsafeRawPointer {
            try body($0)
        }
    }
    
    mutating func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer?) throws -> Result
    ) rethrows -> Result {
        try self.withUnsafeMutableRawPointer {
            try body($0)
        }
    }
    
    // func fromInitializingMutatingGodotUnsafePointer
    // implemented in generated bindings
}

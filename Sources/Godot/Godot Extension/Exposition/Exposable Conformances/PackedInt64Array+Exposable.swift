
extension PackedInt64Array: Variant.Storable {
    public static let variantStorageType: Variant.StorageType? = .packedInt64Array
    
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
            newValue.withUnsafeMutableRawPointer { newValuePtr in
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

extension PackedInt64Array: Hintable {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension PackedInt64Array: Exposable {
    public static let variantRepresentationType: Variant.RepresentationType = .packedInt64Array
    
    public static func transferFromGodot(
        unsafePointer: UnsafeRawPointer?
    ) -> Self {
        Self._makeFromPackedInt64ArrayPointer(from: unsafePointer!)
    }
    
    // func transferToGodot
    // implemented in GodotOpaqueBuiltinClass macro
}

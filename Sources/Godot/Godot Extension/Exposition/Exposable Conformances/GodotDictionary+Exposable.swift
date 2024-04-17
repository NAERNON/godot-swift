
extension GodotDictionary: Variant.Storable
where Key == Variant, AssociatedValue == Variant
{
    public static var variantStorageType: Variant.StorageType? {
        .dictionary
    }
    
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

extension GodotDictionary: Hintable
where Key == Variant, AssociatedValue == Variant
{
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension GodotDictionary: Exposable
where Key == Variant, AssociatedValue == Variant
{
    public static var variantRepresentationType: Variant.RepresentationType {
        .dictionary
    }
    
    public static func transferFromGodot(
        unsafePointer: UnsafeRawPointer?
    ) -> Self {
        Self._makeFromGodotDictionaryPointer(from: unsafePointer!)
    }
    
    // func transferToGodot
    // implemented in GodotOpaqueBuiltinClass macro
}

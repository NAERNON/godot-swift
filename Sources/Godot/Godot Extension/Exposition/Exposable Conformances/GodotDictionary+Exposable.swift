
extension GodotDictionary: Variant.Storable
where Key == Variant, AssociatedValue == Variant
{
    public static var variantStorageType: Variant.StorageType? {
        .dictionary
    }
    
    public static func convertToStorage(
        _ value: GodotDictionary
    ) -> Variant.Storage {
        let storage = Variant.Storage()
        
        storage.withUnsafeMutableRawPointer { storagePtr in
            value.withUnsafeMutableOpaquePointer { valuePtr in
                fromTypeVariantConstructor(storagePtr, valuePtr)
            }
        }
        
        return storage
    }
    
    public static func convertFromCheckedStorage(
        _ storage: borrowing Variant.Storage
    ) -> GodotDictionary {
        let newValue = Self()
        
        storage.withUnsafeMutableRawPointer { storagePtr in
            newValue.withUnsafeMutableOpaquePointer { newValuePtr in
                toTypeVariantConstructor(newValuePtr, storagePtr)
            }
        }
        
        return newValue
    }
    
    public static func convertFromCheckedStorage(
        consuming storage: consuming Variant.Storage
    ) -> GodotDictionary {
        convertFromCheckedStorage(storage)
    }
}

extension GodotDictionary: Hintable
where Key == Variant, AssociatedValue == Variant
{
    public typealias HintingValue = GodotDictionary
    public static var defaultHint: Hint<GodotDictionary> { .typed }
}

extension GodotDictionary: Exposable
where Key == Variant, AssociatedValue == Variant
{
    public static var variantRepresentationType: Variant.RepresentationType {
        .dictionary
    }
    
    public func transferToGodot(
        unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer
    ) {
        withUnsafeOpaquePointer { selfPtr in
            withUnsafeArgumentPackPointer(selfPtr) { accessPtr in
                GodotDictionaryBindings.constructorFromGodotDictionary(destinationUnsafePointer, accessPtr)
            }
        }
    }
    
    public static func transferFromGodot(
        unsafePointer: UnsafeRawPointer?
    ) -> Self {
        let storage = makeOpaqueStorage()
        withUnsafeArgumentPackPointer(unsafePointer!) { accessPtr in
            storage.withUnsafeMutableRawPointer { opaquePtr in
                GodotDictionaryBindings.constructorFromGodotDictionary(opaquePtr, accessPtr)
            }
        }
        return Self.init(storage: storage)
    }
}

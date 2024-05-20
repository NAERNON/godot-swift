
extension PackedVector3Array: Variant.Storable {
    public static let variantStorageType: Variant.StorageType? = .packedVector3Array
    
    public static func convertToStorage(
        _ value: consuming Self
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
    ) -> Self {
        var newValue = Self()
        
        storage.withUnsafeMutableRawPointer { storagePtr in
            newValue.withUnsafeMutableOpaquePointer { newValuePtr in
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

extension PackedVector3Array: Hintable {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension PackedVector3Array: Exposable {
    public static let variantRepresentationType: Variant.RepresentationType = .packedVector3Array
    
    public consuming func transferToGodot(
        unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer
    ) {
        withUnsafeOpaquePointer { selfPtr in
            withUnsafeArgumentPackPointer(selfPtr) { accessPtr in
                PackedVector3ArrayBindings.constructorFromPackedVector3Array(destinationUnsafePointer, accessPtr)
            }
        }
    }

    public static func transferFromGodot(
        unsafePointer: UnsafeRawPointer?
    ) -> Self {
        let opaque: Opaque = makeOpaque()
        withUnsafeArgumentPackPointer(unsafePointer!) { accessPtr in
            opaque.withUnsafeMutableRawPointer { opaquePtr in
                PackedVector3ArrayBindings.constructorFromPackedVector3Array(opaquePtr, accessPtr)
            }
        }
        return Self.init(opaque: opaque)
    }
}

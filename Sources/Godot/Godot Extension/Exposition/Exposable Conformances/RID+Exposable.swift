
extension RID: Variant.Storable {
    public static let variantStorageType: Variant.StorageType? = .rid
    
    public static func convertToStorage(
        _ value: consuming RID
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
    ) -> RID {
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
    ) -> RID {
        convertFromCheckedStorage(storage)
    }
}

extension RID: Hintable {
    public typealias HintingValue = RID
    public static var defaultHint: Hint<RID> { .typed }
}

extension RID: Exposable {
    public static let variantRepresentationType: Variant.RepresentationType = .rid
    
    public consuming func transferToGodot(
        unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer
    ) {
        withUnsafeOpaquePointer { selfPtr in
            withUnsafeArgumentPackPointer(selfPtr) { accessPtr in
                RIDBindings.constructorFromRID(destinationUnsafePointer, accessPtr)
            }
        }
    }
    
    public static func transferFromGodot(
        unsafePointer: UnsafeRawPointer?
    ) -> Self {
        var storage = makeOpaqueStorage()
        withUnsafeArgumentPackPointer(unsafePointer!) { accessPtr in
            storage.withUnsafeMutableRawPointer { opaquePtr in
                RIDBindings.constructorFromRID(opaquePtr, accessPtr)
            }
        }
        return Self.init(storage: storage)
    }
}

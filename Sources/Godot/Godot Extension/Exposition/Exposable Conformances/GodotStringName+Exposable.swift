
extension GodotStringName: Variant.Storable {
    public static let variantStorageType: Variant.StorageType? = .stringName
    
    public static func convertToStorage(
        _ value: GodotStringName
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
    ) -> GodotStringName {
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
    ) -> GodotStringName {
        convertFromCheckedStorage(storage)
    }
}

extension GodotStringName: Hintable {
    public typealias HintingValue = GodotStringName
    public static var defaultHint: Hint<GodotStringName> { .typed }
}

extension GodotStringName: Exposable {
    public static let variantRepresentationType: Variant.RepresentationType = .stringName
    
    public func transferToGodot(
        unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer
    ) {
        withUnsafeOpaquePointer { selfPtr in
            withUnsafeArgumentPackPointer(selfPtr) { accessPtr in
                GodotStringNameBindings.constructorFromGodotStringName(destinationUnsafePointer, accessPtr)
            }
        }
    }

    public static func transferFromGodot(
        unsafePointer: UnsafeRawPointer?
    ) -> Self {
        var storage = makeOpaqueStorage()
        withUnsafeArgumentPackPointer(unsafePointer!) { accessPtr in
            storage.withUnsafeMutableRawPointer { opaquePtr in
                GodotStringNameBindings.constructorFromGodotStringName(opaquePtr, accessPtr)
            }
        }
        return Self.init(storage: storage)
    }
}


extension GodotString: Variant.Storable {
    public static let variantStorageType: Variant.StorageType? = .string
    
    public static func convertToStorage(
        _ value: GodotString
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
    ) -> GodotString {
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
    ) -> GodotString {
        convertFromCheckedStorage(storage)
    }
}

extension GodotString: Hintable {
    public typealias HintingValue = GodotString
    public static var defaultHint: Hint<GodotString> { .typed }
}

extension GodotString: Exposable {
    public static let variantRepresentationType: Variant.RepresentationType = .string
    
    public func transferToGodot(
        unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer
    ) {
        withUnsafeOpaquePointer { selfPtr in
            withUnsafeArgumentPackPointer(selfPtr) { accessPtr in
                GodotStringBindings.constructorFromGodotString(destinationUnsafePointer, accessPtr)
            }
        }
    }

    public static func transferFromGodot(
        unsafePointer: UnsafeRawPointer?
    ) -> Self {
        let storage = makeOpaqueStorage()
        withUnsafeArgumentPackPointer(unsafePointer!) { accessPtr in
            storage.withUnsafeMutableRawPointer { opaquePtr in
                GodotStringBindings.constructorFromGodotString(opaquePtr, accessPtr)
            }
        }
        return Self.init(storage: storage)
    }
}

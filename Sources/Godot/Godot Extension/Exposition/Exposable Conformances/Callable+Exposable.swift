
extension Callable: Variant.Storable {
    public static let variantStorageType: Variant.StorageType? = .callable
    
    public static func convertToStorage(
        _ value: Callable
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
    ) -> Callable {
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
    ) -> Callable {
        convertFromCheckedStorage(storage)
    }
}

extension Callable: Hintable {
    public typealias HintingValue = Callable
    public static var defaultHint: Hint<Callable> { .typed }
}

extension Callable: Exposable {
    public static let variantRepresentationType: Variant.RepresentationType = .callable
    
    public func transferToGodot(
        unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer
    ) {
        withUnsafeOpaquePointer { selfPtr in
            withUnsafeArgumentPackPointer(selfPtr) { accessPtr in
                CallableBindings.constructorFromCallable(destinationUnsafePointer, accessPtr)
            }
        }
    }
    
    public static func transferFromGodot(
        unsafePointer: UnsafeRawPointer?
    ) -> Self {
        let storage = makeOpaqueStorage()
        withUnsafeArgumentPackPointer(unsafePointer!) { accessPtr in
            storage.withUnsafeMutableRawPointer { opaquePtr in
                CallableBindings.constructorFromCallable(opaquePtr, accessPtr)
            }
        }
        return Self.init(storage: storage)
    }
}

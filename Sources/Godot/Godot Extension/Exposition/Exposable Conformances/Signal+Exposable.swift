
extension Signal: Variant.Storable {
    public static let variantStorageType: Variant.StorageType? = .signal
    
    public static func convertToStorage(
        _ value: Signal
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
    ) -> Signal {
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
    ) -> Signal {
        convertFromCheckedStorage(storage)
    }
}

extension Signal: Hintable {
    public typealias HintingValue = Signal
    public static var defaultHint: Hint<Signal> { .typed }
}

extension Signal: Exposable {
    public static let variantRepresentationType: Variant.RepresentationType = .signal
    
    public func transferToGodot(
        unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer
    ) {
        withUnsafeOpaquePointer { selfPtr in
            withUnsafeArgumentPackPointer(selfPtr) { accessPtr in
                SignalBindings.constructorFromSignal(destinationUnsafePointer, accessPtr)
            }
        }
    }
    
    public static func transferFromGodot(
        unsafePointer: UnsafeRawPointer?
    ) -> Self {
        var storage = makeOpaqueStorage()
        withUnsafeArgumentPackPointer(unsafePointer!) { accessPtr in
            storage.withUnsafeMutableRawPointer { opaquePtr in
                SignalBindings.constructorFromSignal(opaquePtr, accessPtr)
            }
        }
        return Self.init(storage: storage)
    }
}

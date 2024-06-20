
extension NodePath: Variant.Storable {
    public static let variantStorageType: Variant.StorageType? = .nodePath
    
    public static func convertToStorage(
        _ value: consuming NodePath
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
    ) -> NodePath {
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
    ) -> NodePath {
        convertFromCheckedStorage(storage)
    }
}

extension NodePath: Hintable {
    public typealias HintingValue = NodePath
    public static var defaultHint: Hint<NodePath> { .typed }
}

extension NodePath: Exposable {
    public static let variantRepresentationType: Variant.RepresentationType = .nodePath
    
    public consuming func transferToGodot(
        unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer
    ) {
        withUnsafeOpaquePointer { selfPtr in
            withUnsafeArgumentPackPointer(selfPtr) { accessPtr in
                NodePathBindings.constructorFromNodePath(destinationUnsafePointer, accessPtr)
            }
        }
    }
    
    public static func transferFromGodot(
        unsafePointer: UnsafeRawPointer?
    ) -> Self {
        var storage = makeOpaqueStorage()
        withUnsafeArgumentPackPointer(unsafePointer!) { accessPtr in
            storage.withUnsafeMutableRawPointer { opaquePtr in
                NodePathBindings.constructorFromNodePath(opaquePtr, accessPtr)
            }
        }
        return Self.init(storage: storage)
    }
}

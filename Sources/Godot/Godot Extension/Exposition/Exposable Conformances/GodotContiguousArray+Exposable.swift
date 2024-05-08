
extension GodotContiguousArray: Variant.Storable {
    public static var variantStorageType: Variant.StorageType? {
        Storage.variantStorageType
    }
    
    public static func convertToStorage(
        _ value: consuming Self
    ) -> Variant.Storage {
        Storage.convertToStorage(value.storage)
    }
    
    public static func convertFromStorage(
        _ storage: borrowing Variant.Storage
    ) throws -> Self {
        try .init(storage: Storage.convertFromStorage(storage))
    }
    
    public static func convertFromCheckedStorage(
        _ storage: borrowing Variant.Storage
    ) -> Self {
        .init(storage: Storage.convertFromCheckedStorage(storage))
    }
    
    public static func convertFromCheckedStorage(
        consuming storage: consuming Variant.Storage
    ) -> Self {
        .init(storage: Storage.convertFromCheckedStorage(consuming: storage))
    }
}

extension GodotContiguousArray: Hintable {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension GodotContiguousArray: Exposable {
    public static var variantRepresentationType: Variant.RepresentationType {
        Storage.variantRepresentationType
    }
    
    public static func transferFromGodot(
        unsafePointer: UnsafeRawPointer?
    ) -> Self {
        .init(storage: Storage.transferFromGodot(unsafePointer: unsafePointer))
    }
    
    public func transferToGodot(
        unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer
    ) {
        storage.transferToGodot(unsafePointer: destinationUnsafePointer)
    }
}

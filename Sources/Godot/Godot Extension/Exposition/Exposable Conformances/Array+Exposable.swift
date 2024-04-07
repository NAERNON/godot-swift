
extension Array: Variant.Storable where Element : Variant.Storable {
    public static var variantStorageType: Variant.StorageType? {
        .array
    }
    
    public static func convertToStorage(
        _ value: consuming Self
    ) -> Variant.Storage {
        GodotArray.convertToStorage(GodotArray(value))
    }
    
    public static func convertFromStorage(
        _ storage: borrowing Variant.Storage
    ) throws -> Self {
        try Self(GodotArray.convertFromStorage(storage))
    }
    
    public static func convertFromCheckedStorage(
        _ storage: borrowing Variant.Storage
    ) -> Self {
        Self(GodotArray.convertFromCheckedStorage(storage))
    }
    
    public static func convertFromCheckedStorage(
        consuming storage: consuming Variant.Storage
    ) -> Self {
        convertFromCheckedStorage(storage)
    }
}

extension Array: Hintable where Element : Exportable {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .elements(Element.defaultHint) }
}

extension Array: Exposable where Element : Exposable {
    public static var variantRepresentationType: Variant.RepresentationType {
        .array
    }
    
    public static func transferFromGodot(
        unsafePointer: UnsafeRawPointer?
    ) -> Self {
        Self(GodotArray.transferFromGodot(unsafePointer: unsafePointer))
    }
    
    public func transferToGodot(
        unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer
    ) {
        GodotArray(self).transferToGodot(unsafePointer: destinationUnsafePointer)
    }
}


extension ContiguousArray: Variant.Storable where Element : GodotContiguousArrayElement {
    public static var variantStorageType: Variant.StorageType? {
        Element.GodotContiguousArrayStorage.variantStorageType
    }
    
    public static func convertToStorage(
        _ value: consuming Self
    ) -> Variant.Storage {
        GodotContiguousArray.convertToStorage(GodotContiguousArray(value))
    }
    
    public static func convertFromStorage(
        _ storage: borrowing Variant.Storage
    ) throws -> Self {
        try Self(GodotContiguousArray.convertFromStorage(storage))
    }
    
    public static func convertFromCheckedStorage(
        _ storage: borrowing Variant.Storage
    ) -> Self {
        Self(GodotContiguousArray.convertFromCheckedStorage(storage))
    }
    
    public static func convertFromCheckedStorage(
        consuming storage: consuming Variant.Storage
    ) -> Self {
        convertFromCheckedStorage(storage)
    }
}

extension ContiguousArray: Hintable where Element : Exportable {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .elements(Element.defaultHint) }
}

extension ContiguousArray: Exposable where Element : GodotContiguousArrayElement {
    public static var variantRepresentationType: Variant.RepresentationType {
        Element.GodotContiguousArrayStorage.variantRepresentationType
    }
    
    public static func transferFromGodot(
        unsafePointer: UnsafeRawPointer?
    ) -> Self {
        Self(GodotContiguousArray.transferFromGodot(unsafePointer: unsafePointer))
    }
    
    public func transferToGodot(
        unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer
    ) {
        GodotContiguousArray(self).transferToGodot(unsafePointer: destinationUnsafePointer)
    }
}


extension ContiguousArray: VariantStorableOut where Element : VariantStorable {
    public static func convertFromStorage(_ storage: borrowing Variant.Storage) throws -> ContiguousArray<Element> {
        try .init(GodotArray<Element>.convertFromStorage(storage))
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> ContiguousArray<Element> {
        .init(GodotArray<Element>.convertFromCheckedStorage(storage))
    }
}

extension ContiguousArray: VariantStorableIn where Element : VariantStorable {
    public static func convertToStorage(_ value: consuming ContiguousArray<Element>) -> Variant.Storage {
        GodotArray.convertToStorage(GodotArray(value))
    }
}

extension ContiguousArray: VariantStorable where Element : VariantStorable {
    public static var variantStorageType: Variant.StorageType? {
        .array
    }
}

extension ContiguousArray: ExposableValue where Element : ExposableValue {
    public static var variantRepresentationType: Variant.RepresentationType {
        .array
    }
    
    public func copyToGodot(unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer) {
        GodotArray(self).copyToGodot(unsafePointer: destinationUnsafePointer)
    }
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        Self(GodotArray.fromGodotUnsafePointer(unsafePointer))
    }
}

extension ContiguousArray: HintableValue where Element : ExportableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .elements(Element.defaultHint) }
}


extension Array: VariantStorableOut where Element : VariantStorable {
    public static func convertFromStorage(_ storage: borrowing Variant.Storage) throws -> Array<Element> {
        try .init(GodotArray<Element>.convertFromStorage(storage))
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Array<Element> {
        .init(GodotArray<Element>.convertFromCheckedStorage(storage))
    }
}

extension Array: VariantStorableIn where Element : VariantStorable {
    public static func convertToStorage(_ value: consuming Array<Element>) -> Variant.Storage {
        GodotArray.convertToStorage(GodotArray(value))
    }
}

extension Array: VariantStorable where Element : VariantStorable {
    public static var variantStorageType: Variant.StorageType? { 
        .array
    }
}

extension Array: ExposableValue where Element : ExposableValue {
    public static var variantRepresentationType: Variant.RepresentationType {
        .array
    }
}

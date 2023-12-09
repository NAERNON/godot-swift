
extension ArraySlice: VariantStorableOut where Element : VariantStorable {
    public static func convertFromStorage(_ storage: borrowing Variant.Storage) throws -> ArraySlice<Element> {
        try .init(GodotArray<Element>.convertFromStorage(storage))
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> ArraySlice<Element> {
        .init(GodotArray<Element>.convertFromCheckedStorage(storage))
    }
}

extension ArraySlice: VariantStorableIn where Element : VariantStorable {
    public static func convertToStorage(_ value: consuming ArraySlice<Element>) -> Variant.Storage {
        GodotArray.convertToStorage(GodotArray(value))
    }
}

extension ArraySlice: VariantStorable where Element : VariantStorable {
    public static var variantStorageType: Variant.StorageType? {
        .array
    }
}

extension ArraySlice: ExposableValue where Element : VariantStorable {
    public static var variantRepresentationType: Variant.RepresentationType {
        .array
    }
}

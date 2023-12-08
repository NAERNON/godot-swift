
extension Array: VariantDecodable where Element : VariantCodable {
    public static func decodeVariantStorage(_ storage: borrowing Variant.Storage) throws -> Array<Element> {
        try .init(GodotArray<Element>.decodeVariantStorage(storage))
    }
    
    public static func decodeCompatibleVariantStorage(_ storage: borrowing Variant.Storage) -> Array<Element> {
        .init(GodotArray<Element>.decodeCompatibleVariantStorage(storage))
    }
}

extension Array: VariantEncodable where Element : VariantCodable {
    public static func encodeVariantStorage(_ value: consuming Self) -> Variant.Storage {
        GodotArray.encodeVariantStorage(GodotArray(value))
    }
}

extension Array: VariantCodable where Element : VariantCodable {
    public static var variantRepresentationType: Variant.RepresentationType {
        GodotArray<Element>.variantRepresentationType
    }
}

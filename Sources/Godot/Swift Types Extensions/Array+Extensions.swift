
extension Array: VariantDecodable where Element : VariantCodable {
    public static func decodeVariantStorage(_ storage: borrowing Variant.Storage) throws -> Array<Element> {
        try .init(GodotTypedArray<Element>.decodeVariantStorage(storage))
    }
    
    public static func decodeCompatibleVariantStorage(_ storage: borrowing Variant.Storage) -> Array<Element> {
        .init(GodotTypedArray<Element>.decodeCompatibleVariantStorage(storage))
    }
}

extension Array: VariantEncodable where Element : VariantCodable {
    public static func encodeVariantStorage(_ value: consuming Self) -> Variant.Storage {
        GodotTypedArray.encodeVariantStorage(GodotTypedArray(value))
    }
}

extension Array: VariantCodable where Element : VariantCodable {
    public static var variantRepresentationType: Variant.RepresentationType {
        GodotTypedArray<Element>.variantRepresentationType
    }
}

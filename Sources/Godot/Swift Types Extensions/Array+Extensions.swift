
extension Array: ConvertibleFromVariant where Element : VariantConvertible {
    public static func fromVariant(_ variant: borrowing Variant.Storage) throws -> Array<Element> {
        try .init(GodotTypedArray<Element>.fromVariant(variant))
    }
    
    public static func fromCompatibleVariant(_ variant: borrowing Variant.Storage) -> Array<Element> {
        .init(GodotTypedArray<Element>.fromCompatibleVariant(variant))
    }
}

extension Array: ConvertibleToVariant where Element : VariantConvertible {
    public func makeVariant() -> Variant.Storage {
        GodotTypedArray(self).makeVariant()
    }
}

extension Array: VariantConvertible where Element : VariantConvertible {
    public static var variantType: Variant.RepresentationType {
        GodotTypedArray<Element>.variantType
    }
}

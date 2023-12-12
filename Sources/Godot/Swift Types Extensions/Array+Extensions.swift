
extension Array: VariantStorableOut where Element : VariantStorable {
    public static func convertFromStorage(_ storage: borrowing Variant.Storage) throws -> Array<Element> {
        try Self(GodotArray.convertFromStorage(storage))
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Array<Element> {
        Self(GodotArray.convertFromCheckedStorage(storage))
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

extension Array: ExposableValue where Element : VariantStorable {
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

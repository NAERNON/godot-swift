
extension String: Variant.Storable {
    public static let variantStorageType: Variant.StorageType? = .string
    
    public static func convertToStorage(
        _ value: consuming Self
    ) -> Variant.Storage {
        GodotString.convertToStorage(GodotString(swiftString: value))
    }
    
    public static func convertFromCheckedStorage(
        _ storage: borrowing Variant.Storage
    ) -> Self {
        String(godotString: GodotString.convertFromCheckedStorage(storage))
    }
    
    public static func convertFromCheckedStorage(
        consuming storage: consuming Variant.Storage
    ) -> Self {
        convertFromCheckedStorage(storage)
    }
}

extension String: Hintable {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension String: Exposable {
    public static let variantRepresentationType: Variant.RepresentationType = .string
    
    public static func transferFromGodot(
        unsafePointer: UnsafeRawPointer?
    ) -> Self {
        String(godotString: GodotString.transferFromGodot(
            unsafePointer: unsafePointer
        ))
    }
    
    public func transferToGodot(
        unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer
    ) {
        GodotString(swiftString: self).transferToGodot(
            unsafePointer: destinationUnsafePointer
        )
    }
}

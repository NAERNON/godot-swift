import GodotExtensionHeaders

extension String {
    public init(godotString: GodotString) {
        var string = ""
        godotString._toUtf8Buffer().withUnsafeBytesArray { bytesPtr in
            if let bytesPtr {
                string = .init(cString: bytesPtr)
            }
        }
        self = string
    }
    
    public init(godotStringName: GodotStringName) {
        self.init(godotString: GodotString(stringName: godotStringName))
    }
}

extension String: VariantConvertible {
    public static let variantType: Variant.RepresentationType = GodotString.variantType
    
    public func makeVariant() -> Variant.Storage {
        GodotString(swiftString: self).makeVariant()
    }
    
    public static func fromCompatibleVariant(_ variant: borrowing Variant.Storage) -> Self {
        String(godotString: GodotString.fromCompatibleVariant(variant))
    }
}

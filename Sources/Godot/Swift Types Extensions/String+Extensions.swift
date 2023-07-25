import GodotExtensionHeaders

extension Swift.String {
    public init(godotString: Godot.String) {
        var string = ""
        godotString._toUtf8Buffer().withUnsafeBytesArray { bytesPtr in
            if let bytesPtr {
                string = .init(cString: bytesPtr)
            }
        }
        self = string
    }
    
    public init(godotStringName: Godot.StringName) {
        self.init(godotString: Godot.String(stringName: godotStringName))
    }
}

extension Swift.String: VariantConvertible {
    public static let variantType: Variant.RepresentationType = String.variantType
    
    public func makeVariant() -> Variant {
        String(swiftString: self).makeVariant()
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        Swift.String(godotString: String.fromMatchingTypeVariant(variant))
    }
}

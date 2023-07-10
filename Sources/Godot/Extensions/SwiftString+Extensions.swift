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

extension Swift.String: TypedVariantConvertible {
    public static let variantType: Variant.GodotType = String.variantType
    
    public var variant: Variant {
        String(swiftString: self).variant
    }
    
    public static func fromTypedVariant(_ variant: Variant) -> Self {
        Swift.String(godotString: String.fromTypedVariant(variant))
    }
}

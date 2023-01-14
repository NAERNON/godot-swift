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

extension Swift.String: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { String.variantStorageType }
    
    public var variant: Variant {
        String(swiftString: self).variant
    }
    
    public init(variant: Variant) {
        self = Swift.String(godotString: variant.stringValue)
    }
}

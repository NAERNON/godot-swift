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
    
    public static func == (lhs: String, rhs: GodotString) -> Bool {
        GodotString(swiftString: lhs) == rhs
    }
    
    public static func == (lhs: String, rhs: GodotStringName) -> Bool {
        GodotString(swiftString: lhs) == rhs
    }
}

extension String: VariantCodable {
    public static let variantRepresentationType: Variant.RepresentationType = GodotString.variantRepresentationType
    
    public static func encodeVariantStorage(_ value: String) -> Variant.Storage {
        GodotString.encodeVariantStorage(GodotString(swiftString: value))
    }
    
    public static func decodeCompatibleVariantStorage(_ storage: borrowing Variant.Storage) -> String {
        String(godotString: GodotString.decodeCompatibleVariantStorage(storage))
    }
}

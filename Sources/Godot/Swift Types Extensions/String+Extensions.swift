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

extension String: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .string
    
    public static func convertToStorage(_ value: consuming String) -> Variant.Storage {
        GodotString.convertToStorage(GodotString(swiftString: value))
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> String {
        String(godotString: GodotString.convertFromCheckedStorage(storage))
    }
}

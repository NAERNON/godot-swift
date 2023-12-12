import GodotExtensionHeaders

extension String {
    public init(godotString: GodotString) {
        var string = ""
        var buffer = godotString._toUtf8Buffer()
        buffer.withUnsafeBytesArray { bytesPtr in
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
    
    public func copyToGodot(unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer) {
        GodotString(swiftString: self).copyToGodot(unsafePointer: destinationUnsafePointer)
    }
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> String {
        String(godotString: GodotString.fromGodotUnsafePointer(unsafePointer))
    }
}

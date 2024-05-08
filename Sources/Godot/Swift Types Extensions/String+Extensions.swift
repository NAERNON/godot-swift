import GodotExtensionHeaders

extension String {
    public init(godotString: GodotString) {
        self = godotString._toUtf8Buffer().withUnsafePointer { bytesPtr in
            if let baseAddress = bytesPtr {
                return .init(cString: baseAddress)
            } else {
                return ""
            }
        }
    }
    
    public init(godotStringName: GodotStringName) {
        self.init(godotString: GodotString(stringName: godotStringName))
    }
    
    public static func == (lhs: String, rhs: GodotString) -> Bool {
        GodotString(swiftString: lhs) == rhs
    }
    
    public static func == (lhs: GodotString, rhs: String) -> Bool {
        rhs == lhs
    }
    
    public static func == (lhs: String, rhs: GodotStringName) -> Bool {
        GodotString(swiftString: lhs) == rhs
    }
    
    public static func == (lhs: GodotStringName, rhs: String) -> Bool {
        rhs == lhs
    }
}

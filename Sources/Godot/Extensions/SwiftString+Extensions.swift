import GodotExtensionHeaders

extension Swift.String {
    public init(godotString: Godot.String) {
        var string = ""
        godotString._toUtf8Buffer().withUnsafeBytesArray { bytesPtr in
            string = .init(cString: bytesPtr)
        }
        self = string
    }
    
    public init(godotStringName: Godot.StringName) {
        self.init(godotString: Godot.String(stringName: godotStringName))
    }
}

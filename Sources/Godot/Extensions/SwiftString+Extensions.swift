import GodotExtensionHeaders

extension Swift.String {
    public init(godotString: Godot.String) {
        var string = ""
        godotString.toUtf8Buffer().withUnsafeBytesArray { bytesPtr in
            string = .init(cString: bytesPtr)
        }
        self = string
    }
}

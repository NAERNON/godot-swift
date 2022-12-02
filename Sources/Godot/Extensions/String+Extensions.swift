import GodotExtensionHeaders

extension String {
    public init(swiftString string: Swift.String) {
        self.init()
        
        string.withCString { cString in
            Self.interface.string_new_with_utf8_chars(nativePtr, cString)
        }
    }
}

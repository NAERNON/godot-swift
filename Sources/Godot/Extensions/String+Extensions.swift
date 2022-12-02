import GodotExtensionHeaders

extension String {
    public init(swiftString: Swift.String) {
        self.init()
        
        swiftString.withCString { cString in
            Self.interface.string_new_with_utf8_chars(nativePtr, cString)
        }
    }
}

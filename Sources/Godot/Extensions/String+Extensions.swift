import GodotExtensionHeaders

extension String {
    public init(swiftString: Swift.String) {
        self.init()
        
        withUnsafeNativePointer { nativePtr in
            swiftString.withCString { cString in
                Self.interface.string_new_with_utf8_chars(nativePtr, cString)
            }
        }
    }
}

extension String: ExpressibleByStringLiteral {
    public init(stringLiteral value: Swift.String) {
        self.init(swiftString: value)
    }
}

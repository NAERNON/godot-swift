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
    
    public init(_ value: String) {
        self.init(string: value)
    }
    
    public subscript(index: Int) -> Character {
        get {
#warning("Maybe not pass through a Swift.String")
            let string = self._getValue(at: Int64(index))
            return Character(.init(godotString: string))
        }
        set(newValue) {
#warning("Maybe not pass through a Swift.String")
            let string = String(swiftString: .init(newValue))
            self._setValue(string, at: Int64(index))
        }
    }
}

extension String: ExpressibleByStringLiteral, ExpressibleByStringInterpolation {
    public init(stringLiteral value: Swift.String) {
        self.init(swiftString: value)
    }
}

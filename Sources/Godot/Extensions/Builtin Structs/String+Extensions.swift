import GodotExtensionHeaders

extension String {
    public init(swiftString: Swift.String) {
        self.init()
        
        withUnsafeNativePointer { nativePtr in
            swiftString.withCString { cString in
                GodotInterface.native.string_new_with_utf8_chars(nativePtr, cString)
            }
        }
    }
    
    public init(_ value: String) {
        self.init(string: value)
    }
    
    public init(_ c: Character) {
        self = String(swiftString: .init(c))
    }
    
    public subscript(index: Int) -> Character {
        get {
            Character(self._getValue(at: Int64(index)))
        }
        set(newValue) {
            self._setValue(String(newValue), at: Int64(index))
        }
    }
}

extension String: ExpressibleByStringLiteral, ExpressibleByStringInterpolation {
    public init(stringLiteral value: Swift.String) {
        self.init(swiftString: value)
    }
}

import GodotExtensionHeaders

extension String {
    public init() {
        self = Self._constructor()
    }
    
    public init(swiftString: Swift.String) {
        self.init()
        
        withUnsafeNativePointer { nativePtr in
            swiftString.withCString { cString in
                GodotInterface.native.string_new_with_utf8_chars(nativePtr, cString)
            }
        }
    }
    
    public init(_ value: String) {
        self = Self._constructor(value)
    }
    
    public init(stringName: StringName) {
        self = Self._constructor(stringName)
    }
    
    public init(nodePath: NodePath) {
        self = Self._constructor(nodePath)
    }
    
    public init(_ c: Character) {
        self = String(swiftString: .init(c))
    }
    
    // MARK: Operators
    
    public static func == (lhs: String, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: String) -> Bool {
        Self._operatorEqual(rhs, lhs)
    }
    
    public static func + (lhs: String, rhs: String) -> String {
        Self._operatorAdd(lhs, rhs)
    }
    
    public static func == (lhs: String, rhs: StringName) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}

// MARK: - Extensions

extension String: ExpressibleByStringLiteral, ExpressibleByStringInterpolation {
    public init(stringLiteral value: Swift.String) {
        self.init(swiftString: value)
    }
}

extension String: Sequence {}

extension String: Collection {
    public var startIndex: Int {
        0
    }
    
    public var endIndex: Int {
        self._length()
    }
    
    public func index(after i: Int) -> Int {
        i+1
    }
}

extension String: BidirectionalCollection {
    public func index(before i: Int) -> Int {
        i-1
    }
}

extension String: RandomAccessCollection {}

extension String: RangeReplaceableCollection {
    public subscript(index: Int) -> Character {
        get {
            Character(self._getValue(at: Int64(index)))
        }
        set(newValue) {
            self._setValue(String(newValue), at: Int64(index))
        }
    }
    
    public mutating func replaceSubrange<C>(_ subrange: Range<Int>, with newElements: C)
    where C : Collection, Character == C.Element {
        if subrange.isEmpty {
            var new = self
            for (index, element) in newElements.enumerated() {
                new = new._insert(position: subrange.lowerBound + index, what: .init(element))
            }
            self = new
            return
        }
        
        let substringStart = _substr(from: 0, len: subrange.lowerBound)
        let substringEnd = _substr(from: subrange.upperBound, len: _length() - subrange.upperBound)
        
        self = substringStart + String(newElements) + substringEnd
    }
}

extension String: MutableCollection {}

extension String: Equatable {
    public static func == (lhs: String, rhs: String) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}

extension String: Comparable {
    public static func > (lhs: String, rhs: String) -> Bool {
        Self._operatorGreater(lhs, rhs)
    }
    
    public static func < (lhs: String, rhs: String) -> Bool {
        Self._operatorLess(lhs, rhs)
    }
    
    public static func >= (lhs: String, rhs: String) -> Bool {
        Self._operatorGreaterEqual(lhs, rhs)
    }
    
    public static func <= (lhs: String, rhs: String) -> Bool {
        Self._operatorLessEqual(lhs, rhs)
    }
}

extension String: Hashable {
    public var hashValue: Int { _hash() }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(_hash())
    }
}

extension String: TextOutputStreamable {
    public func write<Target>(to target: inout Target) where Target : TextOutputStream {
        target.write(.init(godotString: self))
    }
}

extension String: TextOutputStream {
    public mutating func write(_ string: Swift.String) {
        self += String(swiftString: string)
    }
}

extension String: LosslessStringConvertible {
    public var description: Swift.String {
        .init(godotString: self)
    }
}

extension String: Codable {
    public func encode(to encoder: Encoder) throws {
        try Swift.String(godotString: self).encode(to: encoder)
    }
    
    public init(from decoder: Decoder) throws {
        self.init(swiftString: try Swift.String(from: decoder))
    }
}

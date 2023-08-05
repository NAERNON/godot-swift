import GodotExtensionHeaders

extension GodotString {
    public init() {
        self = Self._constructor()
    }
    
    public init(swiftString: String) {
        self.init()
        
        withUnsafeRawPointer { extensionPtr in
            swiftString.withCString { cString in
                gdextension_interface_string_new_with_utf8_chars(extensionPtr, cString)
            }
        }
    }
    
    public init(_ value: GodotString) {
        self = value
    }
    
    public init<Subject>(describing instance: Subject) {
        self.init(swiftString: .init(describing: instance))
    }
    
    public init(stringName: GodotStringName) {
        self = Self._constructor_godotstringname(from: stringName)
    }
    
    public init(nodePath: NodePath) {
        self = Self._constructor_nodepath(from: nodePath)
    }
    
    public init(_ c: Character) {
        self = GodotString(swiftString: .init(c))
    }
    
    public init(godotExtensionPointer: GDExtensionConstStringPtr) {
        self = Self._ptr_constructor_godotstring(from: godotExtensionPointer)
    }
    
    // MARK: Copy
    
    internal mutating func _copiedOpaque() -> Self {
        Self._constructor_godotstring(from: self)
    }
    
    // MARK: Operators
    
    public static func == (lhs: GodotString, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: GodotString) -> Bool {
        Self._operatorEqual(rhs, lhs)
    }
    
    public static func + (lhs: GodotString, rhs: GodotString) -> GodotString {
        Self._operatorAdd(lhs, rhs)
    }
    
    public static func == (lhs: GodotString, rhs: GodotStringName) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}

// MARK: - Extensions

extension GodotString: ExpressibleByStringLiteral, ExpressibleByStringInterpolation {
    public init(stringLiteral value: String) {
        self.init(swiftString: value)
    }
}

extension GodotString: Sequence {}

extension GodotString: Collection {
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

extension GodotString: BidirectionalCollection {
    public func index(before i: Int) -> Int {
        i-1
    }
}

extension GodotString: RandomAccessCollection {}

extension GodotString: RangeReplaceableCollection {
    public subscript(index: Int) -> Character {
        get {
            Character(self._getValue(at: Int64(index)))
        }
        set(newValue) {
            self._setValue(GodotString(newValue), at: Int64(index))
        }
    }
    
    public mutating func replaceSubrange<C>(_ subrange: Swift.Range<Int>, with newElements: C)
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

extension GodotString: MutableCollection {}

extension GodotString: Equatable {
    public static func == (lhs: GodotString, rhs: GodotString) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}

extension GodotString: Comparable {
    public static func > (lhs: GodotString, rhs: GodotString) -> Bool {
        Self._operatorGreater(lhs, rhs)
    }
    
    public static func < (lhs: GodotString, rhs: GodotString) -> Bool {
        Self._operatorLess(lhs, rhs)
    }
    
    public static func >= (lhs: GodotString, rhs: GodotString) -> Bool {
        Self._operatorGreaterEqual(lhs, rhs)
    }
    
    public static func <= (lhs: GodotString, rhs: GodotString) -> Bool {
        Self._operatorLessEqual(lhs, rhs)
    }
}

extension GodotString: Hashable {
    public var hashValue: Int { _hash() }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(_hash())
    }
}

extension GodotString: TextOutputStreamable {
    public func write<Target>(to target: inout Target) where Target : TextOutputStream {
        target.write(.init(godotString: self))
    }
}

extension GodotString: TextOutputStream {
    public mutating func write(_ string: String) {
        self += GodotString(swiftString: string)
    }
}

extension GodotString: LosslessStringConvertible {
    public var description: String {
        .init(godotString: self)
    }
}

extension GodotString: Codable {
    public func encode(to encoder: Encoder) throws {
        try String(godotString: self).encode(to: encoder)
    }
    
    public init(from decoder: Decoder) throws {
        self.init(swiftString: try String(from: decoder))
    }
}

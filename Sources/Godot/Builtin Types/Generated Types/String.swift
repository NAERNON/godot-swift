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
        
        var substringStart = _substr(from: 0, len: subrange.lowerBound)
        var substringEnd = _substr(from: subrange.upperBound, len: _length() - subrange.upperBound)
        
        self = substringStart + String(newElements) + substringEnd
    }
}

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

extension String: RangeReplaceableCollection {}

extension String: MutableCollection {}

extension String: Equatable {
    public static func == (lhs: String, rhs: String) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}

extension String: Hashable {
    public var hashValue: Int { _hash() }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(_hash())
    }
}

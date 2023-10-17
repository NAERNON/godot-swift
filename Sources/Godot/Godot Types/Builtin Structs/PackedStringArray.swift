import GodotExtensionHeaders

@GodotOpaqueBuiltinClass
public struct PackedStringArray {}

extension PackedStringArray {
    public init() {
        self = Self._constructor()
    }
    
    public init(_ value: PackedStringArray) {
        self = value
    }
    
    public init(array: GodotArray) {
        self = Self._constructor_godotarray(from: array)
    }
    
    public init(godotExtensionPointer: GDExtensionConstTypePtr) {
        self = Self._ptr_constructor_packedstringarray(from: godotExtensionPointer)
    }
    
    // MARK: Copy
    
    internal mutating func withCopiedOpaque() -> Self {
        self._duplicate()
    }
    
    // MARK: Operators
    
    public static func == (lhs: PackedStringArray, rhs: some ConvertibleToVariant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    // MARK: Methods & variables
    
    public func byteArray() -> PackedByteArray {
        _toByteArray()
    }
}

// MARK: - Extensions

extension PackedStringArray: Sequence {}

extension PackedStringArray: Collection {
    public var startIndex: Int {
        0
    }
    
    public var endIndex: Int {
        self._size()
    }
    
    public func index(after i: Int) -> Int {
        i+1
    }
}

extension PackedStringArray: BidirectionalCollection {
    public func index(before i: Int) -> Int {
        i-1
    }
}

extension PackedStringArray: RandomAccessCollection {}

extension PackedStringArray: RangeReplaceableCollection {
    public subscript(index: Int) -> GodotString {
        get {
            self._getValue(at: Int64(index))
        }
        set(newValue) {
            self._setValue(newValue, at: Int64(index))
        }
    }
    
    public mutating func replaceSubrange<C>(_ subrange: Swift.Range<Int>, with newElements: C)
    where C : Collection, GodotString == C.Element {
        var rangeIndex = subrange.lowerBound
        for (collectionIndex, element) in newElements.enumerated() {
            if collectionIndex + subrange.lowerBound < subrange.upperBound {
                self[rangeIndex] = element
            } else {
                self._insert(atIndex: rangeIndex, value: element)
            }
            rangeIndex += 1
        }
        
        let removeIndex = subrange.lowerBound + newElements.count
        while rangeIndex < subrange.upperBound {
            self._removeAt(index: removeIndex)
            rangeIndex += 1
        }
    }
}

extension PackedStringArray: MutableCollection {}

extension PackedStringArray: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: GodotString...) {
        self.init(elements)
    }
}

extension PackedStringArray: Equatable {
    public static func == (lhs: PackedStringArray, rhs: PackedStringArray) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}

extension PackedStringArray: Codable {
    public func encode(to encoder: Encoder) throws {
        try self.map { $0 }.encode(to: encoder)
    }
    
    public init(from decoder: Decoder) throws {
        self.init(try Swift.Array<Element>(from: decoder))
    }
}

import GodotExtensionHeaders

@GodotOpaqueBuiltinClass
public struct PackedVector2Array {
    public init() {
        self = Self._constructor()
    }
    
    public init(_ value: PackedVector2Array) {
        self = value
    }
    
    public init(array: GodotArray) {
        self = Self._constructor_godotarray(from: array)
    }
    
    public init(godotExtensionPointer: GDExtensionConstTypePtr) {
        self = Self._ptr_constructor_packedvector2array(from: godotExtensionPointer)
    }
    
    // MARK: Copy
    
    internal mutating func withCopiedOpaque() -> Self {
        self._duplicate()
    }
    
    // MARK: Operators
    
    public static func == (lhs: PackedVector2Array, rhs: some ConvertibleToVariant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    // MARK: Methods & variables
    
    public func byteArray() -> PackedByteArray {
        _toByteArray()
    }
}

// MARK: - Extensions

extension PackedVector2Array: Sequence {}

extension PackedVector2Array: Collection {
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

extension PackedVector2Array: BidirectionalCollection {
    public func index(before i: Int) -> Int {
        i-1
    }
}

extension PackedVector2Array: RandomAccessCollection {}

extension PackedVector2Array: RangeReplaceableCollection {
    public subscript(index: Int) -> Vector2 {
        get {
            self._getValue(at: Int64(index))
        }
        set(newValue) {
            self._setValue(newValue, at: Int64(index))
        }
    }
    
    public mutating func replaceSubrange<C>(_ subrange: Swift.Range<Int>, with newElements: C)
    where C : Collection, Vector2 == C.Element {
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

extension PackedVector2Array: MutableCollection {}

extension PackedVector2Array: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Vector2...) {
        self.init(elements)
    }
}

extension PackedVector2Array: Equatable {
    public static func == (lhs: PackedVector2Array, rhs: PackedVector2Array) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}

extension PackedVector2Array: Codable {
    public func encode(to encoder: Encoder) throws {
        try self.map { $0 }.encode(to: encoder)
    }
    
    public init(from decoder: Decoder) throws {
        self.init(try Swift.Array<Element>(from: decoder))
    }
}

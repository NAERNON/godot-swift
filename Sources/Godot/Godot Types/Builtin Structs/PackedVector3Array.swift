import GodotExtensionHeaders

@GodotOpaqueBuiltinClass
public struct PackedVector3Array {
    public init() {
        self = Self._constructor()
    }
    
    public init(_ value: PackedVector3Array) {
        self = value
    }
    
    public init(array: GodotArray) {
        self = Self._constructor_godotarray(from: array)
    }
    
    public init(godotExtensionPointer: GDExtensionConstTypePtr) {
        self = Self._ptr_constructor_packedvector3array(from: godotExtensionPointer)
    }
    
    // MARK: Copy
    
    internal mutating func withCopiedOpaque() -> Self {
        self._duplicate()
    }
    
    // MARK: Operators
    
    public static func == (lhs: PackedVector3Array, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: PackedVector3Array) -> Bool {
        Self._operatorEqual(rhs, lhs)
    }
    
    // MARK: Methods & variables
    
    public func byteArray() -> PackedByteArray {
        _toByteArray()
    }
}

// MARK: - Extensions

extension PackedVector3Array: Sequence {}

extension PackedVector3Array: Collection {
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

extension PackedVector3Array: BidirectionalCollection {
    public func index(before i: Int) -> Int {
        i-1
    }
}

extension PackedVector3Array: RandomAccessCollection {}

extension PackedVector3Array: RangeReplaceableCollection {
    public subscript(index: Int) -> Vector3 {
        get {
            self._getValue(at: Int64(index))
        }
        set(newValue) {
            self._setValue(newValue, at: Int64(index))
        }
    }
    
    public mutating func replaceSubrange<C>(_ subrange: Swift.Range<Int>, with newElements: C)
    where C : Collection, Vector3 == C.Element {
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

extension PackedVector3Array: MutableCollection {}

extension PackedVector3Array: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Vector3...) {
        self.init(elements)
    }
}

extension PackedVector3Array: Equatable {
    public static func == (lhs: PackedVector3Array, rhs: PackedVector3Array) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}

extension PackedVector3Array: Codable {
    public func encode(to encoder: Encoder) throws {
        try self.map { $0 }.encode(to: encoder)
    }
    
    public init(from decoder: Decoder) throws {
        self.init(try Swift.Array<Element>(from: decoder))
    }
}

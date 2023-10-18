import GodotExtensionHeaders

@GodotOpaqueBuiltinClass
public struct PackedInt64Array {}

extension PackedInt64Array {
    // MARK: Constructors
    
    public init() {
        self = Self._constructor()
    }
    
    public init(array: GodotArray) {
        self = Self._constructor_godotarray(from: array)
    }
    
    public init(godotExtensionPointer: GDExtensionConstTypePtr) {
        self = Self._ptr_constructor_packedint64array(from: godotExtensionPointer)
    }
    
    // MARK: Copy
    
    internal mutating func withCopiedOpaque() -> Self {
        self._duplicate()
    }
    
    // MARK: Methods & variables
    
    public func byteArray() -> PackedByteArray {
        _toByteArray()
    }
}

extension PackedInt64Array: Sequence {}

extension PackedInt64Array: Collection {
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

extension PackedInt64Array: BidirectionalCollection {
    public func index(before i: Int) -> Int {
        i-1
    }
}

extension PackedInt64Array: RandomAccessCollection {}

extension PackedInt64Array: RangeReplaceableCollection {
    public subscript(index: Int) -> Int64 {
        get {
            Int64(self._getValue(at: Int64(index)))
        }
        set(newValue) {
            self._setValue(Int(newValue), at: Int64(index))
        }
    }
    
    public mutating func replaceSubrange<C>(_ subrange: Swift.Range<Int>, with newElements: C)
    where C : Collection, Int64 == C.Element {
        var rangeIndex = subrange.lowerBound
        for (collectionIndex, element) in newElements.enumerated() {
            if collectionIndex + subrange.lowerBound < subrange.upperBound {
                self[rangeIndex] = element
            } else {
                self._insert(atIndex: rangeIndex, value: Int(element))
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

extension PackedInt64Array: MutableCollection {}

extension PackedInt64Array: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Int64...) {
        self.init(elements)
    }
}

extension PackedInt64Array: Equatable {
    public static func == (lhs: PackedInt64Array, rhs: PackedInt64Array) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}

extension PackedInt64Array: Codable {
    public func encode(to encoder: Encoder) throws {
        var unkeyedContainer = encoder.unkeyedContainer()
        try unkeyedContainer.encode(contentsOf: self)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        var array = Self()
        while let element = try container.decodeIfPresent(Self.Element.self) {
            array.append(element)
        }
        self = array
    }
}

extension PackedInt64Array: CustomStringConvertible {
    public var description: String {
        "[\(self.map { String(reflecting: $0) }.joined(separator: ", "))]"
    }
}

extension PackedInt64Array: CustomDebugStringConvertible {
    public var debugDescription: String {
        "[\(self.map { String(reflecting: $0) }.joined(separator: ", "))]"
    }
}

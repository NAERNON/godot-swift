import GodotExtensionHeaders

@GodotOpaqueBuiltinClass
public struct PackedFloat64Array {}

extension PackedFloat64Array {
    // MARK: Constructors
    
    public init() {
        self = Self._constructor()
    }
    
    public init(array: GodotArray) {
        self = Self._constructor_godotarray(from: array)
    }
    
    public init(godotExtensionPointer: GDExtensionConstTypePtr) {
        self = Self._ptr_constructor_packedfloat64array(from: godotExtensionPointer)
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

extension PackedFloat64Array: Sequence {}

extension PackedFloat64Array: Collection {
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

extension PackedFloat64Array: BidirectionalCollection {
    public func index(before i: Int) -> Int {
        i-1
    }
}

extension PackedFloat64Array: RandomAccessCollection {}

extension PackedFloat64Array: RangeReplaceableCollection {
    public subscript(index: Int) -> Double {
        get {
            self._getValue(at: Int64(index))
        }
        set(newValue) {
            self._setValue(newValue, at: Int64(index))
        }
    }
    
    public mutating func replaceSubrange<C>(_ subrange: Swift.Range<Int>, with newElements: C)
    where C : Collection, Double == C.Element {
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

extension PackedFloat64Array: MutableCollection {}

extension PackedFloat64Array: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Double...) {
        self.init(elements)
    }
}

extension PackedFloat64Array: Equatable {
    public static func == (lhs: PackedFloat64Array, rhs: PackedFloat64Array) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}

extension PackedFloat64Array: Codable {
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

extension PackedFloat64Array: CustomStringConvertible {
    public var description: String {
        "[\(self.map { String(reflecting: $0) }.joined(separator: ", "))]"
    }
}

extension PackedFloat64Array: CustomDebugStringConvertible {
    public var debugDescription: String {
        "[\(self.map { String(reflecting: $0) }.joined(separator: ", "))]"
    }
}

import GodotExtensionHeaders

@GodotOpaqueBuiltinClass
public struct PackedFloat32Array {}

extension PackedFloat32Array {
    // MARK: Constructors
    
    public init() {
        self = Self._constructor()
    }
    
    public init(array: GodotArray) {
        self = Self._constructor_godotarray(from: array)
    }
    
    public init(godotExtensionPointer: GDExtensionConstTypePtr) {
        self = Self._ptr_constructor_packedfloat32array(from: godotExtensionPointer)
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

extension PackedFloat32Array: Sequence {}

extension PackedFloat32Array: Collection {
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

extension PackedFloat32Array: BidirectionalCollection {
    public func index(before i: Int) -> Int {
        i-1
    }
}

extension PackedFloat32Array: RandomAccessCollection {}

extension PackedFloat32Array: RangeReplaceableCollection {
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

extension PackedFloat32Array: MutableCollection {}

extension PackedFloat32Array: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Double...) {
        self.init(elements)
    }
}

extension PackedFloat32Array: Equatable {
    public static func == (lhs: PackedFloat32Array, rhs: PackedFloat32Array) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}

extension PackedFloat32Array: Codable {
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

extension PackedFloat32Array: CustomStringConvertible {
    public var description: String {
        "[\(self.map { String(reflecting: $0) }.joined(separator: ", "))]"
    }
}

extension PackedFloat32Array: CustomDebugStringConvertible {
    public var debugDescription: String {
        "[\(self.map { String(reflecting: $0) }.joined(separator: ", "))]"
    }
}

import GodotExtensionHeaders

@GodotOpaqueBuiltinClass
public struct GodotArray {}

extension GodotArray {
    // MARK: Constructors
    
    public init() {
        self = Self._constructor()
    }
    
    public init(byteArray: PackedByteArray) {
        self = Self._constructor_packedbytearray(from: byteArray)
    }
    
    public init(int32Array: PackedInt32Array) {
        self = Self._constructor_packedint32array(from: int32Array)
    }
    
    public init(int64Array: PackedInt64Array) {
        self = Self._constructor_packedint64array(from: int64Array)
    }
    
    public init(float32Array: PackedFloat32Array) {
        self = Self._constructor_packedfloat32array(from: float32Array)
    }
    
    public init(float64Array: PackedFloat64Array) {
        self = Self._constructor_packedfloat64array(from: float64Array)
    }
    
    public init(stringArray: PackedStringArray) {
        self = Self._constructor_packedstringarray(from: stringArray)
    }
    
    public init(vector2Array: PackedVector2Array) {
        self = Self._constructor_packedvector2array(from: vector2Array)
    }
    
    public init(vector3Array: PackedVector3Array) {
        self = Self._constructor_packedvector3array(from: vector3Array)
    }
    
    public init(colorArray: PackedColorArray) {
        self = Self._constructor_packedcolorarray(from: colorArray)
    }
    
    public init(godotExtensionPointer: GDExtensionConstTypePtr) {
        self = Self._ptr_constructor_godotarray(from: godotExtensionPointer)
    }
    
    // MARK: Copy
    
    internal mutating func withCopiedOpaque() -> Self {
        self._duplicate(deep: true)
    }
}

extension GodotArray: Sequence {}

extension GodotArray: Collection {
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

extension GodotArray: BidirectionalCollection {
    public func index(before i: Int) -> Int {
        i-1
    }
}

extension GodotArray: RandomAccessCollection {}

extension GodotArray: RangeReplaceableCollection {
    public subscript(index: Int) -> Variant {
        get {
            Variant(self._getValue(at: Int64(index)))
        }
        set(newValue) {
            self._setValue(newValue.storage, at: Int64(index))
        }
    }
    
    public mutating func replaceSubrange<C>(_ subrange: Swift.Range<Int>, with newElements: C)
    where C : Collection, Variant == C.Element {
        var rangeIndex = subrange.lowerBound
        for (collectionIndex, element) in newElements.enumerated() {
            if collectionIndex + subrange.lowerBound < subrange.upperBound {
                self[rangeIndex] = element
            } else {
                self._insert(position: rangeIndex, value: element)
            }
            rangeIndex += 1
        }
        
        let removeIndex = subrange.lowerBound + newElements.count
        while rangeIndex < subrange.upperBound {
            self._removeAt(position: removeIndex)
            rangeIndex += 1
        }
    }
}

extension GodotArray: MutableCollection {}

extension GodotArray: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Variant...) {
        self.init(elements)
    }
}

extension GodotArray: Equatable {
    public static func == (lhs: GodotArray, rhs: GodotArray) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}

extension GodotArray: Hashable {
    public var hashValue: Int { _hash() }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(_hash())
    }
}

extension GodotArray: CustomStringConvertible {
    public var description: String {
        "[\(self.map { String(reflecting: $0) }.joined(separator: ", "))]"
    }
}

extension GodotArray: CustomDebugStringConvertible {
    public var debugDescription: String {
        "[\(self.map { String(reflecting: $0) }.joined(separator: ", "))]"
    }
}

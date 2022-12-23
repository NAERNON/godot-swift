import Foundation

extension Array {
    // MARK: Init
    
    public init() {
        self = Self._constructor()
    }
    
    public init(_ value: Array) {
        self = value._duplicate()
    }
    
    public init(packedByteArray: PackedByteArray) {
        self = Self._constructor(packedByteArray)
    }
    
    public init(packedInt32Array: PackedInt32Array) {
        self = Self._constructor(packedInt32Array)
    }
    
    public init(packedInt64Array: PackedInt64Array) {
        self = Self._constructor(packedInt64Array)
    }
    
    public init(packedFloat32Array: PackedFloat32Array) {
        self = Self._constructor(packedFloat32Array)
    }
    
    public init(packedFloat64Array: PackedFloat64Array) {
        self = Self._constructor(packedFloat64Array)
    }
    
    public init(packedStringArray: PackedStringArray) {
        self = Self._constructor(packedStringArray)
    }
    
    public init(packedVector2Array: PackedVector2Array) {
        self = Self._constructor(packedVector2Array)
    }
    
    public init(packedVector3Array: PackedVector3Array) {
        self = Self._constructor(packedVector3Array)
    }
    
    public init(packedColorArray: PackedColorArray) {
        self = Self._constructor(packedColorArray)
    }
    
    // MARK: Editing
    
    public subscript(index: Int) -> Variant {
        get {
            self._getValue(at: Int64(index))
        }
        set(newValue) {
            self._setValue(newValue, at: Int64(index))
        }
    }
    
    public mutating func replaceSubrange<C>(_ subrange: Range<Int>, with newElements: C)
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
            self._removeAt(removeIndex)
            rangeIndex += 1
        }
    }
}

extension Array: Sequence {}

extension Array: Collection {
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

extension Array: BidirectionalCollection {
    public func index(before i: Int) -> Int {
        i-1
    }
}

extension Array: RandomAccessCollection {}

extension Array: RangeReplaceableCollection {}

extension Array: MutableCollection {}

extension Array: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Variant...) {
        self.init(elements)
    }
}

extension Array: Equatable {
    public static func == (lhs: Array, rhs: Array) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}

extension Array: Hashable {
    public var hashValue: Int { _hash() }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(_hash())
    }
}

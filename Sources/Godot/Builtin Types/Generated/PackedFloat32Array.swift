import Foundation

extension PackedFloat32Array {
    public init() {
        self = Self._constructor()
    }
    
    public init(_ value: PackedFloat32Array) {
        self = Self._constructor(value)
    }
    
    public init(array: Array) {
        self = Self._constructor(array)
    }
}

// MARK: - Extensions

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
    
    public mutating func replaceSubrange<C>(_ subrange: Range<Int>, with newElements: C)
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
            self._removeAt(removeIndex)
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

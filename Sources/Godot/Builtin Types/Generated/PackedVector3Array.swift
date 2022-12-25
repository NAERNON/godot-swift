import Foundation

extension PackedVector3Array {
    public init() {
        self = Self._constructor()
    }
    
    public init(_ value: PackedVector3Array) {
        self = Self._constructor(value)
    }
    
    public init(array: Array) {
        self = Self._constructor(array)
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
    
    public mutating func replaceSubrange<C>(_ subrange: Range<Int>, with newElements: C)
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
            self._removeAt(removeIndex)
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

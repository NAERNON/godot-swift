import Foundation

extension PackedColorArray {
    public init() {
        self = Self._constructor()
    }
    
    public init(_ value: PackedColorArray) {
        self = Self._constructor(value)
    }
    
    public init(array: Array) {
        self = Self._constructor(array)
    }
}

// MARK: - Extensions

extension PackedColorArray: Sequence {}

extension PackedColorArray: Collection {
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

extension PackedColorArray: BidirectionalCollection {
    public func index(before i: Int) -> Int {
        i-1
    }
}

extension PackedColorArray: RandomAccessCollection {}

extension PackedColorArray: RangeReplaceableCollection {
    public subscript(index: Int) -> Color {
        get {
            self._getValue(at: Int64(index))
        }
        set(newValue) {
            self._setValue(newValue, at: Int64(index))
        }
    }
    
    public mutating func replaceSubrange<C>(_ subrange: Range<Int>, with newElements: C)
    where C : Collection, Color == C.Element {
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

extension PackedColorArray: MutableCollection {}

extension PackedColorArray: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Color...) {
        self.init(elements)
    }
}

extension PackedColorArray: Equatable {
    public static func == (lhs: PackedColorArray, rhs: PackedColorArray) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}

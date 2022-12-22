import Foundation

extension Array {
    // MARK: Init
    
    public init(_ value: Array) {
        self = value._duplicate()
    }
    
    public init(repeating repeatedVariant: Variant, count: Int) {
        var new = Array()
        for _ in 0..<count {
            new._append(repeatedVariant)
        }
        self = new
    }
    
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
        for (collectionIndex, variant) in newElements.enumerated() {
            if collectionIndex + subrange.lowerBound < subrange.upperBound {
                self[rangeIndex] = variant
            } else {
                self._insert(position: rangeIndex, value: variant)
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
        var new = Array()
        for element in elements {
            new._append(element)
        }
        self = new
    }
}

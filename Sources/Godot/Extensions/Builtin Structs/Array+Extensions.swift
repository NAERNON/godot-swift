import Foundation

extension Array {
    // MARK: Init
    
    public init(_ value: Array) {
        self = value._duplicate()
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

import Foundation

extension PackedInt64Array {
    public init() {
        self = Self._constructor()
    }
    
    public init(_ value: PackedInt64Array) {
        self = Self._constructor_packedint64array(from: value)
    }
    
    public init(array: Array) {
        self = Self._constructor_array(from: array)
    }
    
    // MARK: Operators
    
    public static func == (lhs: PackedInt64Array, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: PackedInt64Array) -> Bool {
        Self._operatorEqual(rhs, lhs)
    }
}

// MARK: - Extensions

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
        try self.map { $0 }.encode(to: encoder)
    }
    
    public init(from decoder: Decoder) throws {
        self.init(try Swift.Array<Element>(from: decoder))
    }
}

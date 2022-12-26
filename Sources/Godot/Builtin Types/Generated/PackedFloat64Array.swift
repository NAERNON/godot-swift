import Foundation

extension PackedFloat64Array {
    public init() {
        self = Self._constructor()
    }
    
    public init(_ value: PackedFloat64Array) {
        self = Self._constructor(value)
    }
    
    public init(array: Array) {
        self = Self._constructor(array)
    }
    
    // MARK: Operators
    
    public static func == (lhs: PackedFloat64Array, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: PackedFloat64Array) -> Bool {
        Self._operatorEqual(rhs, lhs)
    }
}

// MARK: - Extensions

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
        try self.map { $0 }.encode(to: encoder)
    }
    
    public init(from decoder: Decoder) throws {
        self.init(try Swift.Array<Element>(from: decoder))
    }
}

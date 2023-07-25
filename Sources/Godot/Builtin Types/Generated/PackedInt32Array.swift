import Foundation

extension PackedInt32Array {
    public init() {
        self = Self._constructor()
    }
    
    public init(_ value: PackedInt32Array) {
        self = Self._constructor_packedint32array(from: value)
    }
    
    public init(array: Array) {
        self = Self._constructor_array(from: array)
    }
    
    // MARK: Operators
    
    public static func == (lhs: PackedInt32Array, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: PackedInt32Array) -> Bool {
        Self._operatorEqual(rhs, lhs)
    }
}

// MARK: - Extensions

extension PackedInt32Array: Sequence {}

extension PackedInt32Array: Collection {
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

extension PackedInt32Array: BidirectionalCollection {
    public func index(before i: Int) -> Int {
        i-1
    }
}

extension PackedInt32Array: RandomAccessCollection {}

extension PackedInt32Array: RangeReplaceableCollection {
    public subscript(index: Int) -> Int32 {
        get {
            Int32(self._getValue(at: Int64(index)))
        }
        set(newValue) {
            self._setValue(Int(newValue), at: Int64(index))
        }
    }
    
    public mutating func replaceSubrange<C>(_ subrange: Swift.Range<Int>, with newElements: C)
    where C : Collection, Int32 == C.Element {
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

extension PackedInt32Array: MutableCollection {}

extension PackedInt32Array: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Int32...) {
        self.init(elements)
    }
}

extension PackedInt32Array: Equatable {
    public static func == (lhs: PackedInt32Array, rhs: PackedInt32Array) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}

extension PackedInt32Array: Codable {
    public func encode(to encoder: Encoder) throws {
        try self.map { $0 }.encode(to: encoder)
    }
    
    public init(from decoder: Decoder) throws {
        self.init(try Swift.Array<Element>(from: decoder))
    }
}

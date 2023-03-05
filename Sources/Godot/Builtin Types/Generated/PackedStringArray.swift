import Foundation

extension PackedStringArray {
    public init() {
        self = Self._constructor()
    }
    
    public init(_ value: PackedStringArray) {
        self = Self._constructor(from: value)
    }
    
    public init(array: Array) {
        self = Self._constructor(from: array)
    }
    
    // MARK: Operators
    
    public static func == (lhs: PackedStringArray, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: PackedStringArray) -> Bool {
        Self._operatorEqual(rhs, lhs)
    }
}

// MARK: - Extensions

extension PackedStringArray: Sequence {}

extension PackedStringArray: Collection {
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

extension PackedStringArray: BidirectionalCollection {
    public func index(before i: Int) -> Int {
        i-1
    }
}

extension PackedStringArray: RandomAccessCollection {}

extension PackedStringArray: RangeReplaceableCollection {
    public subscript(index: Int) -> String {
        get {
            self._getValue(at: Int64(index))
        }
        set(newValue) {
            self._setValue(newValue, at: Int64(index))
        }
    }
    
    public mutating func replaceSubrange<C>(_ subrange: Swift.Range<Int>, with newElements: C)
    where C : Collection, String == C.Element {
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
            self._removeAt(index: removeIndex)
            rangeIndex += 1
        }
    }
}

extension PackedStringArray: MutableCollection {}

extension PackedStringArray: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: String...) {
        self.init(elements)
    }
}

extension PackedStringArray: Equatable {
    public static func == (lhs: PackedStringArray, rhs: PackedStringArray) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}

extension PackedStringArray: Codable {
    public func encode(to encoder: Encoder) throws {
        try self.map { $0 }.encode(to: encoder)
    }
    
    public init(from decoder: Decoder) throws {
        self.init(try Swift.Array<Element>(from: decoder))
    }
}
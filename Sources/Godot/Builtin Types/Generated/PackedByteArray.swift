import Foundation

extension PackedByteArray {
    public init() {
        self = Self._constructor()
    }
    
    public init(_ value: PackedByteArray) {
        self = Self._constructor(value)
    }
    
    public init(array: Array) {
        self = Self._constructor(array)
    }
    
    public func withUnsafeBytesArray(_ body: (UnsafeMutablePointer<UInt8>) -> Void) {
        self.withUnsafeNativePointer { nativeTypePtr in
            body(GodotInterface.native.packed_byte_array_operator_index(nativeTypePtr, 0)!)
        }
    }
    
    // MARK: Operators
    
    public static func == (lhs: PackedByteArray, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: PackedByteArray) -> Bool {
        Self._operatorEqual(rhs, lhs)
    }
}

// MARK: - Extensions

extension PackedByteArray: Sequence {}

extension PackedByteArray: Collection {
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

extension PackedByteArray: BidirectionalCollection {
    public func index(before i: Int) -> Int {
        i-1
    }
}

extension PackedByteArray: RandomAccessCollection {}

extension PackedByteArray: RangeReplaceableCollection {
    public subscript(index: Int) -> UInt8 {
        get {
            UInt8(self._getValue(at: Int64(index)))
        }
        set(newValue) {
            self._setValue(Int(newValue), at: Int64(index))
        }
    }
    
    public mutating func replaceSubrange<C>(_ subrange: Range<Int>, with newElements: C)
    where C : Collection, UInt8 == C.Element {
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
            self._removeAt(removeIndex)
            rangeIndex += 1
        }
    }
}

extension PackedByteArray: MutableCollection {}

extension PackedByteArray: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: UInt8...) {
        self.init(elements)
    }
}

extension PackedByteArray: Equatable {
    public static func == (lhs: PackedByteArray, rhs: PackedByteArray) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}

extension PackedByteArray: Codable {
    public func encode(to encoder: Encoder) throws {
        try self.map { $0 }.encode(to: encoder)
    }
    
    public init(from decoder: Decoder) throws {
        self.init(try Swift.Array<Element>(from: decoder))
    }
}

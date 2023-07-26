import Foundation
import GodotExtensionHeaders

extension PackedFloat32Array {
    public init() {
        self = Self._constructor()
    }
    
    public init(_ value: PackedFloat32Array) {
        self = value
    }
    
    public init(array: Array) {
        self = Self._constructor_array(from: array)
    }
    
    public init(godotExtensionPointer: GDExtensionConstTypePtr) {
        self = Self._ptr_constructor_packedfloat32array(from: godotExtensionPointer)
    }
    
    // MARK: Copy
    
    internal mutating func _copiedOpaque() -> Self {
        self._duplicate()
    }
    
    // MARK: Operators
    
    public static func == (lhs: PackedFloat32Array, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: PackedFloat32Array) -> Bool {
        Self._operatorEqual(rhs, lhs)
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
    
    public mutating func replaceSubrange<C>(_ subrange: Swift.Range<Int>, with newElements: C)
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
            self._removeAt(index: removeIndex)
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

extension PackedFloat32Array: Codable {
    public func encode(to encoder: Encoder) throws {
        try self.map { $0 }.encode(to: encoder)
    }
    
    public init(from decoder: Decoder) throws {
        self.init(try Swift.Array<Element>(from: decoder))
    }
}

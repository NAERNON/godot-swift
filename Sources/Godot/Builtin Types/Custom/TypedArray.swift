import Foundation
import GodotExtensionHeaders

// MARK: - Definition

/// A `TypedArray` is a Godot array that is constrained by a type.
///
/// Under the hood, this collection uses the Godot `Array` type.
///
/// Only `VariantCodable` elements can be contained inside a `TypedArray`.
public struct TypedArray<Element> where Element: VariantCodable {
    private var underlyingArray: Array
    
    public init(_ value: TypedArray<Element>) {
        self.underlyingArray = value.underlyingArray._duplicate()
    }
    
    /// This init is private to this file because public initializers are provided in extensions.
    fileprivate init(className: StringName) {
        var array = Array()
        array._setTyped(type: Int(Element.variantType.rawValue), className: className, script: .nil)
        self.underlyingArray = array
    }
    
    internal func withUnsafeNativePointer(_ body: (GDNativeTypePtr) -> ()) {
        underlyingArray.withUnsafeNativePointer(body)
    }
}

// MARK: - Public initializers

extension TypedArray {
    public init() {
        self.init(className: StringName())
    }
}

extension TypedArray where Element: Object {
    public init() {
        self.init(className: StringName(swiftString: Element.classNameForGodot()))
    }
}

// MARK: - Extensions

extension TypedArray: CustomDebugStringConvertible {
    public var debugDescription: Swift.String {
        underlyingArray.debugDescription
    }
}

extension TypedArray: Sequence {}

extension TypedArray: Collection {
    public var startIndex: Int {
        underlyingArray.startIndex
    }
    
    public var endIndex: Int {
        underlyingArray.endIndex
    }
    
    public func index(after i: Int) -> Int {
        underlyingArray.index(after: i)
    }
}

extension TypedArray: BidirectionalCollection {
    public func index(before i: Int) -> Int {
        underlyingArray.index(before: i)
    }
}

extension TypedArray: RandomAccessCollection {}

extension TypedArray: RangeReplaceableCollection {
    public subscript(index: Int) -> Element {
        get {
            Element.valueFromVariant(underlyingArray[index])
        }
        set(newValue) {
            underlyingArray[index] = newValue.makeVariant()
        }
    }
    
    public mutating func replaceSubrange<C>(_ subrange: Swift.Range<Int>, with newElements: C)
    where C : Collection, Self.Element == C.Element {
        var rangeIndex = subrange.lowerBound
        for (collectionIndex, element) in newElements.enumerated() {
            if collectionIndex + subrange.lowerBound < subrange.upperBound {
                self[rangeIndex] = element
            } else {
                underlyingArray.insert(element.makeVariant(), at: rangeIndex)
            }
            rangeIndex += 1
        }
        
        let removeIndex = subrange.lowerBound + newElements.count
        while rangeIndex < subrange.upperBound {
            underlyingArray.remove(at: removeIndex)
            rangeIndex += 1
        }
    }
}

extension TypedArray: MutableCollection {}

extension TypedArray: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Element...) {
        self.init(elements)
    }
}

extension TypedArray: Codable where Element : Codable {
    public func encode(to encoder: Encoder) throws {
        try Swift.Array(self).encode(to: encoder)
    }

    public init(from decoder: Decoder) throws {
        self.init(try Swift.Array<Element>(from: decoder))
    }
}

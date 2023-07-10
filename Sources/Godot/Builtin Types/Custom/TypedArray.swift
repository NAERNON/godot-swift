import Foundation
import GodotExtensionHeaders

// MARK: - Definition

/// A `TypedArray` is a Godot array that is constrained by a type.
///
/// Under the hood, this collection uses the Godot ``Array`` type.
///
/// Only ``TypedVariantConvertible`` elements can be contained inside a `TypedArray`.
public struct TypedArray<Element> where Element : TypedVariantConvertible {
    private var underlyingArray: Array
    
    public init(_ value: TypedArray<Element>) {
        self.underlyingArray = value.underlyingArray
    }
    
    /// This init is private to this file because public initializers are provided in extensions.
    fileprivate init(className: StringName) {
        var array = Array()
        array.withUnsafeExtensionPointer { ptr in
            className.withUnsafeExtensionPointer { classNamePtr in
                // TODO: Check script (last parameter)
                GodotExtension.interface.array_set_typed(ptr, Element.variantType.godotExtensionType, classNamePtr, nil)
            }
        }
        self.underlyingArray = array
    }
    
    internal func withUnsafeExtensionPointer(_ body: (GDExtensionTypePtr) -> ()) {
        underlyingArray.withUnsafeExtensionPointer(body)
    }
    
    internal var opaque: Opaque {
        underlyingArray.opaque
    }
}

// MARK: - Public initializers

extension TypedArray {
    public init() {
        self.init(className: StringName())
    }
}

extension TypedArray where Element : Object {
    public init() {
        self.init(className: Element._gd_className) // TODO: Check that it is not the lastDerivedClassName
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
            Element.fromTypedVariant(underlyingArray[index])
        }
        set(newValue) {
            underlyingArray[index] = newValue.variant
        }
    }
    
    public mutating func replaceSubrange<C>(_ subrange: Swift.Range<Int>, with newElements: C)
    where C : Collection, Self.Element == C.Element {
        var rangeIndex = subrange.lowerBound
        for (collectionIndex, element) in newElements.enumerated() {
            if collectionIndex + subrange.lowerBound < subrange.upperBound {
                self[rangeIndex] = element
            } else {
                underlyingArray.insert(element.variant, at: rangeIndex)
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

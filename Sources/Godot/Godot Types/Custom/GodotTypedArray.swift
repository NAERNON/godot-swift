import Foundation
import GodotExtensionHeaders

// MARK: - Definition

/// A `GodotTypedArray` is a Godot array that is constrained by a type.
///
/// Under the hood, this collection uses the Godot ``GodotArray`` type.
///
/// Only ``VariantConvertible`` elements can be contained inside a `TypedArray`.
public struct GodotTypedArray<Element> where Element : VariantConvertible {
    private var underlyingArray: GodotArray
    
    public init(_ value: GodotTypedArray<Element>) {
        self.underlyingArray = value.underlyingArray
    }
    
    /// This init is private to this file because public initializers are provided in extensions.
    fileprivate init(className: GodotStringName) {
        var array = GodotArray()
        array.withUnsafeRawPointer { ptr in
            className.withUnsafeRawPointer { classNamePtr in
                // TODO: Check script (last parameter)
                gdextension_interface_array_set_typed(ptr, Element.variantType.storageType, classNamePtr, nil)
            }
        }
        self.underlyingArray = array
    }
    
    public init(godotExtensionPointer: GDExtensionConstTypePtr) {
        self.underlyingArray = GodotArray(godotExtensionPointer: godotExtensionPointer)
    }
    
    public func withUnsafeRawPointer<Result>(
        _ body: (GDExtensionTypePtr) throws -> Result
    ) rethrows -> Result {
        try underlyingArray.withUnsafeRawPointer(body)
    }
    
    /// Passes the memory management of this instance onto Godot.
    ///
    /// There is a risk of memory leaking if not correctly used.
    internal mutating func consumeByGodot(ontoUnsafePointer destination: UnsafeMutableRawPointer) {
        underlyingArray.consumeByGodot(ontoUnsafePointer: destination)
    }
}

// MARK: - Public initializers

extension GodotTypedArray {
    public init() {
        self.init(className: GodotStringName())
    }
}

extension GodotTypedArray where Element : Object {
    public init() {
        self.init(className: Element.__className) // TODO: Check that it is not the lastDerivedClassName
    }
}

// MARK: - Extensions

extension GodotTypedArray: CustomDebugStringConvertible {
    public var debugDescription: Swift.String {
        underlyingArray.debugDescription
    }
}

extension GodotTypedArray: Sequence {}

extension GodotTypedArray: Collection {
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

extension GodotTypedArray: BidirectionalCollection {
    public func index(before i: Int) -> Int {
        underlyingArray.index(before: i)
    }
}

extension GodotTypedArray: RandomAccessCollection {}

extension GodotTypedArray: RangeReplaceableCollection {
    public subscript(index: Int) -> Element {
        get {
            Element.fromMatchingTypeVariant(underlyingArray[index])
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

extension GodotTypedArray: MutableCollection {}

extension GodotTypedArray: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Element...) {
        self.init(elements)
    }
}

extension GodotTypedArray: Codable where Element : Codable {
    public func encode(to encoder: Encoder) throws {
        try Array(self).encode(to: encoder)
    }

    public init(from decoder: Decoder) throws {
        self.init(try Array<Element>(from: decoder))
    }
}

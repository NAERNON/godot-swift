import GodotExtensionHeaders

// MARK: - Definition

/// A `GodotTypedArray` is a Godot array that is constrained by a type.
///
/// Under the hood, this collection uses the Godot ``GodotArray`` type.
///
/// Only ``VariantCodable`` elements can be contained inside a `TypedArray`.
public struct GodotTypedArray<Element> where Element : VariantCodable {
    private var underlyingArray: GodotArray
    
    public init(_ value: GodotTypedArray<Element>) {
        self = value
    }
    
    public init() {
        let array = GodotArray()
        array.withUnsafeRawPointer { ptr in
            Element._$className.withUnsafeRawPointer { classNamePtr in
                Variant().withUnsafeRawPointer { scriptPtr in
                    // TODO: Check script (last parameter)
                    gdextension_interface_array_set_typed(
                        ptr, Element.variantRepresentationType.storageType, classNamePtr, scriptPtr
                    )
                }
            }
        }
        self.underlyingArray = array
    }
    
    public init(godotExtensionPointer: GDExtensionConstTypePtr) {
        self.underlyingArray = GodotArray(godotExtensionPointer: godotExtensionPointer)
    }
    
    /// When using this initializer, make sure that the underlying array
    /// is typed with the correct storage type.
    ///
    /// Use the `_isTyped()` and similar functions on the underlying array to check.
    private init(underlyingArray: GodotArray) {
        self.underlyingArray = underlyingArray
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

// MARK: - VariantCodable

public enum GodotTypedArrayVariantConversionError: Error {
    case notTyped
    case incorrectType(expected: GDExtensionVariantType, found: GDExtensionVariantType)
    case incorrectClassName(expected: GodotStringName, found: GodotStringName)
}

extension GodotTypedArray: VariantCodable {
    public static var variantRepresentationType: Variant.RepresentationType { GodotArray.variantRepresentationType }
    
    public static func encodeVariantStorage(_ value: consuming GodotTypedArray<Element>) -> Variant.Storage {
        GodotArray.encodeVariantStorage(value.underlyingArray)
    }
    
    public static func decodeVariantStorage(_ storage: borrowing Variant.Storage) throws -> GodotTypedArray<Element> {
        let underlyingArray = try GodotArray.decodeVariantStorage(storage)
        
        guard underlyingArray._isTyped() else {
            throw GodotTypedArrayVariantConversionError.notTyped
        }
        
        let type = GDExtensionVariantType(rawValue: UInt32(underlyingArray._typedBuiltin()))
        guard type == Element.variantRepresentationType.storageType else {
            throw GodotTypedArrayVariantConversionError
                .incorrectType(expected: Element.variantRepresentationType.storageType, found: type)
        }
        
        // If the class name is not empty, we must check against
        // the underlying array.
        if !Element._$className._isEmpty() {
            let className = underlyingArray._typedClassName()
            guard className == Element._$className else {
                throw GodotTypedArrayVariantConversionError
                    .incorrectClassName(expected: Element._$className, found: className)
            }
        }
        
        return GodotTypedArray(underlyingArray: underlyingArray)
    }
    
    public static func decodeCompatibleVariantStorage(_ storage: borrowing Variant.Storage) -> GodotTypedArray<Element> {
        GodotTypedArray(underlyingArray: GodotArray.decodeCompatibleVariantStorage(storage))
    }
}

// MARK: - Extensions

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
            Element.decodeCompatibleVariantStorage(underlyingArray._getValue(at: GDExtensionInt(index)))
        }
        set(newValue) {
            underlyingArray._setValue(Element.encodeVariantStorage(newValue), at: GDExtensionInt(index))
        }
    }
    
    public mutating func replaceSubrange<C>(_ subrange: Swift.Range<Int>, with newElements: C)
    where C : Collection, Self.Element == C.Element {
        var rangeIndex = subrange.lowerBound
        for (collectionIndex, element) in newElements.enumerated() {
            if collectionIndex + subrange.lowerBound < subrange.upperBound {
                self[rangeIndex] = element
            } else {
                underlyingArray._insert(position: rangeIndex, value: element)
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
        var unkeyedContainer = encoder.unkeyedContainer()
        try unkeyedContainer.encode(contentsOf: self)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        var array = Self()
        while let element = try container.decodeIfPresent(Self.Element.self) {
            array.append(element)
        }
        self = array
    }
}

extension GodotTypedArray: CustomStringConvertible {
    public var description: String {
        "[\(self.map { String(reflecting: $0) }.joined(separator: ", "))]"
    }
}

extension GodotTypedArray: CustomDebugStringConvertible {
    public var debugDescription: String {
        "[\(self.map { String(reflecting: $0) }.joined(separator: ", "))]"
    }
}

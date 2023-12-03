import GodotExtensionHeaders

/// A type that can be encoded to a variant.
public protocol VariantEncodable {
    /// A variant storage representing the given value.
    static func encodeVariantStorage(_ value: consuming Self) -> Variant.Storage
}

/// A type that can be decoded from a variant.
public protocol VariantDecodable {
    /// Converts a variant storage into an instance of this type.
    static func decodeVariantStorage(_ storage: borrowing Variant.Storage) throws -> Self
    
    /// Converts a variant into an instance of this type.
    ///
    /// This method assumes the given variant
    /// can be converted to this type.
    ///
    /// >important: Passing a wrong variant may stop execution.
    ///
    /// See the ``decodeVariantStorage(_:)`` method to get a throwing version
    /// of this method.
    static func decodeCompatibleVariantStorage(_ storage: borrowing Variant.Storage) -> Self
}

/// A type that can be converted from, and to, a variant.
public protocol VariantCodable: VariantEncodable, VariantDecodable {
    /// The variant representation type this type
    /// can be encoded to and decoded from.
    static var variantRepresentationType: Variant.RepresentationType { get }
    
    /// The class name of the variant representation if applicable.
    ///
    /// Do not define this variable in your own types.
    /// Only ``Object`` and its subclasses define
    /// this variable.
    static var _$className: GodotStringName { get }
}

public extension VariantCodable {
    static var _$className: GodotStringName { GodotStringName() }
    
    static func decodeVariantStorage(_ storage: borrowing Variant.Storage) throws -> Self {
        try storage.checkIsConvertible(to: variantRepresentationType)
        
        return decodeCompatibleVariantStorage(storage)
    }
}

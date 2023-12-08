import GodotExtensionHeaders

// MARK: - VariantEncodable

/// A type that can be encoded to a variant.
public protocol VariantEncodable {
    /// The variant storage type this type
    /// is encoded to.
    ///
    /// Returns nil if the encoded variant storage type is not fixed or unknown.
    static var encodedVariantStorageType: Variant.StorageType? { get }
    
    /// The class name of the variant representation if applicable.
    ///
    /// Do not define this variable in your own types.
    /// Only ``Object`` and its subclasses define
    /// this variable.
    static var _$className: GodotStringName { get }
    
    /// Returns a variant storage representing the given value.
    static func encodeVariantStorage(_ value: consuming Self) -> Variant.Storage
    
    /// Invokes the given closure with a variant storage representing the given argument.
    static func withEncodedVariantStorage<Result>(
        _ value: consuming Self,
        body: (borrowing Variant.Storage) throws -> Result
    ) rethrows -> Result
}

public extension VariantEncodable {
    static var _$className: GodotStringName { GodotStringName() }
    
    static func withEncodedVariantStorage<Result>(
        _ value: consuming Self,
        body: (borrowing Variant.Storage) throws -> Result
    ) rethrows -> Result {
        try body(encodeVariantStorage(value))
    }
}

// MARK: - VariantDecodable

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

// MARK: - VariantCodable

/// A type that can be converted from, and to, a variant.
///
/// The representation type is known and fixed.
public protocol VariantCodable: VariantEncodable, VariantDecodable {
    /// The variant representation type this type
    /// can be encoded to and decoded from.
    ///
    /// This representation type is fixed for the type.
    static var variantRepresentationType: Variant.RepresentationType { get }
}

public extension VariantCodable {
    static var encodedVariantStorageType: Variant.StorageType? {
        variantRepresentationType.storageType
    }
    
    static func decodeVariantStorage(_ storage: borrowing Variant.Storage) throws -> Self {
        try storage.checkIsConvertible(to: variantRepresentationType)
        
        return decodeCompatibleVariantStorage(storage)
    }
}

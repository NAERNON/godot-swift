
// MARK: - VariantStorableIn

/// A type convertible to a variant.
public protocol VariantStorableIn {
    /// Returns a variant storage representing the given value.
    static func convertToStorage(_ value: consuming Self) -> Variant.Storage
    
    /// Invokes the given closure with a variant storage representing the given value.
    static func withValueStorage<Result>(
        _ value: consuming Self,
        body: (borrowing Variant.Storage) throws -> Result
    ) rethrows -> Result
}

public extension VariantStorableIn {
    static func withValueStorage<Result>(
        _ value: consuming Self,
        body: (borrowing Variant.Storage) throws -> Result
    ) rethrows -> Result {
        try body(convertToStorage(value))
    }
}

// MARK: - VariantStorableOut

/// A type convertible from a variant.
public protocol VariantStorableOut {
    /// Converts a variant storage into an instance of this type.
    static func convertFromStorage(_ storage: borrowing Variant.Storage) throws -> Self
    
    /// Converts a variant storage into an instance of this type.
    ///
    /// This method assumes the given variant
    /// can be converted to this type.
    ///
    /// >important: Passing an incompatible variant may stop execution.
    ///
    /// See the ``convertFromStorage(_:)`` method to get a throwing version
    /// of this method.
    ///
    /// If the type is also conforming to ``VariantStorableIn``,
    /// this method acts as the reversed method of
    /// ``VariantStorableIn/convertToStorage(_:)``.
    /// Therefore, for any instance *x*, the following is true:
    /// *convertFromCheckedStorage(convertToStorage(x)) = x*
    static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self
    
    /// Converts a variant storage into an instance of this type.
    ///
    /// This method assumes the given variant
    /// can be converted to this type.
    ///
    /// >important: Passing an incompatible variant may stop execution.
    ///
    /// See the ``convertFromStorage(_:)`` method to get a throwing version
    /// of this method.
    ///
    /// If the type is also conforming to ``VariantStorableIn``,
    /// this method acts as the reversed method of
    /// ``VariantStorableIn/convertToStorage(_:)``.
    /// Therefore, for any instance *x*, the following is true:
    /// *convertFromCheckedStorage(convertToStorage(x)) = x*
    static func convertFromCheckedStorage(consuming storage: consuming Variant.Storage) -> Self
}

public extension VariantStorableOut {
    static func convertFromCheckedStorage(consuming storage: consuming Variant.Storage) -> Self {
        convertFromCheckedStorage(storage)
    }
}

// MARK: - VariantStorable

/// A type convertible from and to a variant.
public protocol VariantStorable: VariantStorableIn, VariantStorableOut {
    /// The variant storage type this type
    /// is converted to.
    ///
    /// Returns nil if the converted variant storage type is not fixed or unknown.
    static var variantStorageType: Variant.StorageType? { get }
    
    /// The class name of the variant representation if applicable.
    ///
    /// Do not define this variable in your own types.
    /// Only ``Object`` and its subclasses define
    /// this variable.
    static var _exposedClassName: GodotStringName { get }
}

public extension VariantStorable {
    static var _exposedClassName: GodotStringName { GodotStringName() }
}

// MARK: - VariantSIMDStorableScalar

/// A type that enables its `SIMD` storage to be `VariantStorable`
///
/// Do not declare conformances to this protocol yourself.
public protocol VariantSIMDStorableScalar: SIMDScalar, Codable, Hashable {
    /// Returns a variant storage representing the given `SIMD2Storage`.
    static func convertSIMD2ToStorage(_ value: consuming SIMD2<Self>) -> Variant.Storage
    
    /// Converts a variant storage into an instance of the `SIMD2Storage`.
    static func convertSIMD2FromCheckedStorage(_ storage: borrowing Variant.Storage) -> SIMD2<Self>
    
    /// The variant representation type this `SIMD2Storage` type is converted to.
    static var variantSIMD2RepresentationType: Variant.RepresentationType { get }
}

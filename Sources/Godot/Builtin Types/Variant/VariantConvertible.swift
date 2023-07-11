import Foundation

// MARK: - ConvertibleToVariant

/// A type that can be converted to a variant.
///
/// Types that conform to the `ConvertibleToVariant` protocol
/// provide a variant representation.
/// Use the `Variant` ``Variant/init(_:)`` initializer to
/// create a new variant from an instance.
///
/// For example, this custom `Level` struct can be converted
/// to a variant:
///
/// ```swift
/// struct Level: ConvertibleToVariant {
///     let index: Int
///
///     static let variantType: Variant.GodotType = Int.variantType
///
///     func makeVariant() -> Variant {
///         Variant(index)
///     }
/// }
///
/// let level = Level(index: 3)
/// let variant = Variant(level)
/// ```
///
/// ## Conforming to the ConvertibleToVariant protocol
///
/// To add `ConvertibleToVariant` conformance to your type, you must declare
/// the following requirements:
/// - The `variantType` static property that defines the variant type
/// your type can be converted to
/// - The `makeVariant()` method for converting an instance to a variant
public protocol ConvertibleToVariant {
    /// The type of variant this type can be converted to.
    ///
    /// When converting an instance to a variant using the ``makeVariant()``
    /// method, the generated variant type *must* match `variantType`.
    static var variantType: Variant.GodotType { get }
    
    /// A variant representation of this instance.
    func makeVariant() -> Variant
}

// MARK: - ConvertibleFromVariant

/// A type that can be converted from a variant.
///
/// Types that conform to the `ConvertibleFromVariant` protocol
/// can be converted from a variant.
/// Use the `Variant` ``Variant/value(ofType:)`` method to
/// retreive an instance from a pointer.
///
/// For example, this custom `Level` struct can be converted
/// from a variant:
///
/// ```swift
/// struct Level: ConvertibleFromTypedVariant {
///     let index: Int
///
///     static let variantType: Variant.GodotType = Int.variantType
///
///     static func fromMatchingTypeVariant(_ variant: Variant) -> Level {
///         Level(index: Int.fromMatchingTypeVariant(variant))
///     }
/// }
///
/// let variant: Variant = //...
/// let level = try Variant.value(ofType: Level.self)
/// ```
///
/// ## Conforming to the ConvertibleFromVariant Protocol
///
/// To add `ConvertibleFromVariant` conformance to your type, you must declare
/// at least the following requirements:
/// - The `variantType` static property that defines the variant type
/// your type can be converted from
/// - The `fromMatchingTypeVariant(_:)` static method for converting a variant to an instance
///
/// By default, the `fromVariant(_:)` static method implementation only checks
/// that the provided variant type matches `variantType` and throws
/// an error if not.
public protocol ConvertibleFromVariant {
    /// The type of variant this type can be converted from.
    ///
    /// When converting a variant to an instance using the ``fromTypedVariant(_:)``
    /// static method, the method should *not* throw an error
    /// if the provided variant type matches `variantType`.
    static var variantType: Variant.GodotType { get }
    
    /// Turns a variant into an instance.
    static func fromVariant(_ variant: Variant) throws -> Self
    
    /// Turns a variant into an instance.
    ///
    /// This method might not check the provided variant type
    /// and may stop the execution of your program if a wrong variant is provided.
    ///
    /// > warning: Only call this method with a variant
    /// of the type of ``variantType``.
    ///
    /// See the ``fromVariant(_:)`` method to get a throwing version
    /// of this method.
    static func fromMatchingTypeVariant(_ variant: Variant) -> Self
}

private enum ConversionError: Error {
    case unmatchingTypes(Variant.GodotType, Variant.GodotType)
}

public extension ConvertibleFromVariant {
    static func fromVariant(_ variant: Variant) throws -> Self {
        guard variant.type == Self.variantType else {
            throw ConversionError.unmatchingTypes(variant.type, Self.variantType)
        }
        
        return fromMatchingTypeVariant(variant)
    }
}

// MARK: - VariantConvertible

/// A type that can be converted from, and to, a variant.
public typealias VariantConvertible = ConvertibleToVariant & ConvertibleFromVariant

import Foundation

// MARK: - Protocol definitions

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
///     var variant: Variant {
///         Variant(index)
///     }
/// }
///
/// let level = Level(index: 3)
/// let variant = Variant(level)
/// ```
///
/// ## Combined conformance with ConvertibleFromTypedVariant
///
/// > important: If your type also conforms to the ``ConvertibleFromTypedVariant``
/// protocol, the ``variant`` conversion should
/// have a ``Variant/type`` that match `ConvertibleFromTypedVariant`'s
/// ``ConvertibleFromTypedVariant/variantType``.
public protocol ConvertibleToVariant {
    /// A variant representation of this instance.
    var variant: Variant { get }
}

/// A type that can be converted from a variant.
///
/// See the ``ConvertibleFromTypedVariant`` protocol for
/// stricter conversion.
public protocol ConvertibleFromVariant {
    /// Turns a variant into the type.
    static func fromVariant(_ variant: Variant) throws -> Self
}

/// A type that can be converted from a correctly typed variant.
///
/// Types that conform to the `ConvertibleFromTypedVariant` protocol
/// can be converted from a correctly typed variant.
///
/// ## Conforming to the ConvertibleFromTypedVariant Protocol
///
/// Add `ConvertibleFromTypedVariant` conformance to your
/// custom types by defining the required static function, as well as
/// which type of variant the function accepts.
///
/// For example, this custom `Level` struct can be converted
/// from a variant:
///
/// ```swift
/// struct Level: ConvertibleFromTypedVariant {
///     let index: Int
///
///     static let variantType: Variant.GodotType = .int
///
///     static func fromTypedVariant(_ variant: Variant) -> Level {
///         Level(index: typedVariant.uncheckedIntValue)
///     }
/// }
/// ```
///
/// Contrary to the ``ConvertibleFromVariant`` protocol
/// where the function ``ConvertibleFromVariant/fromVariant(_:)``
/// can throw an error, the ``fromTypedVariant(_:)`` function cannot throw.
///
/// You define which ``Variant/type`` of variant the ``fromTypedVariant(_:)``
/// function accepts, and your type *must* be converted from a variant
/// of this ``Variant/type`` using this function.
///
/// Conforming to `ConvertibleFromTypedVariant` also conforms the type to the
/// ``ConvertibleFromVariant`` protocol, and provides a default implementation for
/// ``ConvertibleFromVariant/fromVariant(_:)`` that throws
/// if the given variant ``Variant/type`` does not match ``variantType``.
public protocol ConvertibleFromTypedVariant: ConvertibleFromVariant {
    /// The type of variant this type can be converted from.
    ///
    /// When converting a variant to an instance using the ``fromTypedVariant(_:)``
    /// function, the provided variant ``Variant/type`` *must* match `variantType`.
    static var variantType: Variant.GodotType { get }
    
    /// Turns a variant into the type.
    ///
    /// > important: The given variant ``Variant/type``
    /// *must* match ``variantType``.
    static func fromTypedVariant(_ variant: Variant) -> Self
}

/// A type that can be converted from, and to, a variant.
///
/// See ``TypedVariantConvertible`` to add stricter
/// variant conversion.
public typealias VariantConvertible = ConvertibleToVariant & ConvertibleFromVariant

/// A type that can be converted from, and to, a variant.
///
/// The variant conversion is constrained by a variant ``Variant/type``
/// provided by ``ConvertibleFromTypedVariant/variantType``.
public typealias TypedVariantConvertible = ConvertibleToVariant & ConvertibleFromTypedVariant

// MARK: - Default ConvertibleFromTypedVariant implementation

private enum ConversionError: Error {
    case unmatchingTypes(Variant.GodotType, Variant.GodotType)
}

public extension ConvertibleFromTypedVariant {
    static func fromVariant(_ variant: Variant) throws -> Self {
        guard variant.type == Self.variantType else {
            throw ConversionError.unmatchingTypes(variant.type, Self.variantType)
        }
        
        return fromTypedVariant(variant)
    }
}

// MARK: - Optional extensions

extension Optional: ConvertibleToVariant where Wrapped : ConvertibleToVariant {
    public var variant: Variant {
        switch self {
        case .none:
            return nil
        case .some(let wrapped):
            return wrapped.variant
        }
    }
}

extension Optional: ConvertibleFromVariant where Wrapped : ConvertibleFromVariant {
    public static func fromVariant(_ variant: Variant) throws -> Optional<Wrapped> {
        if variant == nil {
            return .none
        } else {
            return try .some(Wrapped.fromVariant(variant))
        }
    }
}

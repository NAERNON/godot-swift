import Foundation

// MARK: - Protocol definitions

/// A type with a variant representation.
///
/// Types that conform to the `VariantConvertible` protocol
/// provide a variant representation.
/// Use the `Variant` ``Variant/init(_:)`` initializer to
/// create a new variant from an instance.
///
/// For example, this custom `Level` struct can be converted
/// to a variant:
///
/// ```swift
/// struct Level: VariantConvertible {
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
/// ## Combined conformance with ExpressibleByTypedVariant
///
/// > important: If your type also conforms to the ``ExpressibleByTypedVariant``
/// protocol, the ``Variant/type`` of the variant representation should match
/// the ``ExpressibleByTypedVariant/variantType`` provided by
/// the ``ExpressibleByTypedVariant`` protocol.
public protocol VariantConvertible {
    /// A variant representation of this instance.
    var variant: Variant { get }
}

/// A type that can be initialized with a variant.
///
/// See the ``ExpressibleByTypedVariant`` protocol for
/// stricter initialization.
public protocol ExpressibleByVariant {
    /// Creates a new instance initialized with the given variant.
    init(variant: Variant) throws
}

/// A type that can be initialized with a correctly typed variant.
///
/// Types that conform to the `ExpressibleByTypedVariant` protocol
/// can be initialized with a correctly typed variant.
///
/// ## Conforming to the ExpressibleByTypedVariant Protocol
///
/// Add `ExpressibleByTypedVariant` conformance to your
/// custom types by defining the required initializer, as well as
/// which type of variant the initializer accepts.
///
/// For example, this custom `Level` struct can be converted
/// from a variant:
///
/// ```swift
/// struct Level: ExpressibleByTypedVariant {
///     let index: Int
///
///     static let variantType: Variant.GodotType = .int
///
///     init(typedVariant: Variant) {
///         self.index = typedVariant.uncheckedIntValue
///     }
/// }
/// ```
///
/// Contrary to the ``ExpressibleByVariant`` protocol
/// where the initializer ``ExpressibleByVariant/init(variant:)``
/// can throw an error, the initializer you provide for this protocol cannot throw.
///
/// You define which type of variant the initializer accepts,
/// and your type *must* be initializable with a variant of the same type.
///
/// Conforming to `ExpressibleByTypedVariant` also conforms the type to the
/// ``ExpressibleByVariant`` protocol, and provides a default implementation for
/// ``ExpressibleByVariant/init(variant:)`` that throws
/// if the given variant ``Variant/type`` does not match ``variantType``.
public protocol ExpressibleByTypedVariant: ExpressibleByVariant {
    /// The type of variant this type can be initialized with.
    ///
    /// When initializing an instance with the ``init(typedVariant:)``
    /// initializer, the provided variant ``Variant/type`` must match this type.
    static var variantType: Variant.GodotType { get }
    
    /// Creates an instance initialized with the given variant.
    ///
    /// > important: The given variant ``Variant/type``
    /// *must* match ``variantType``.
    init(typedVariant: Variant)
}

/// A type that can be represented as, and initialized with, a variant.
///
/// See ``TypedVariantTransformable`` to add stricter
/// variant transformation.
public typealias VariantTransformable = VariantConvertible & ExpressibleByVariant

/// A type that can be represented as, and initialized with, a variant.
///
/// The ``Variant/type`` of variant this type can be transformed to and from
/// is defined.
public typealias TypedVariantTransformable = VariantConvertible & ExpressibleByTypedVariant

// MARK: - Default ExpressibleByTypedVariant implementation

private extension Variant {
    enum ConversionError: Error {
        case unmatchingTypes(GodotType, GodotType)
    }
}

public extension ExpressibleByTypedVariant {
    init(variant: Variant) throws {
        guard variant.type == Self.variantType else {
            throw Variant.ConversionError.unmatchingTypes(variant.type, Self.variantType)
        }
        
        self.init(typedVariant: variant)
    }
}

// MARK: - Optional extensions

extension Optional: VariantConvertible where Wrapped : VariantConvertible {
    public var variant: Variant {
        switch self {
        case .none:
            return nil
        case .some(let wrapped):
            return wrapped.variant
        }
    }
}

extension Optional: ExpressibleByVariant where Wrapped : ExpressibleByVariant {
    public init(variant: Variant) throws {
        if variant == nil {
            self = .none
        } else {
            self = .some(try Wrapped(variant: variant))
        }
    }
}

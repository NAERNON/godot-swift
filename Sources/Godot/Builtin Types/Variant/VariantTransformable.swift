import Foundation

// MARK: - Protocol definitions

/// A type that can be represented as a `Variant`.
public protocol VariantConvertible {
    /// A `Variant` representation of this instance.
    var variant: Variant { get }
}

/// A type that can be initialized using a `Variant`.
public protocol ExpressibleByVariant {
    /// Creates an instance initialized with the given `Variant`.
    init(variant: Variant) throws
}

/// A type that can be initialized using a `Variant`, and that specifies the
/// needed type a `Variant` should be to be initialized with `init(typedVariant:)`.
///
/// Conforming to `ExpressibleByTypedVariant` also conforms the type to the
/// `ExpressibleByVariant` protocol, and provides a default implementation for
/// `init(variant:)`.
public protocol ExpressibleByTypedVariant: ExpressibleByVariant {
    /// The underlying variant storage type.
    static var variantStorageType: Variant.GodotType { get }
    
    /// Creates an instance initialized with the given `Variant`.
    ///
    /// The given `Variant` type *must* match `variantStorageType`.
    init(typedVariant: Variant)
}

/// A type that can be represented as, and initialized with, a `Variant`.
public typealias VariantTransformable = VariantConvertible & ExpressibleByVariant

/// A type that can be represented as, and initialized with, a `Variant`.
public typealias TypedVariantTransformable = VariantConvertible & ExpressibleByTypedVariant

// MARK: - Default ExpressibleByTypedVariant implementation

private extension Variant {
    enum ConversionError: Error {
        case unmatchingTypes(GodotType, GodotType)
    }
}

public extension ExpressibleByTypedVariant {
    init(variant: Variant) throws {
        guard variant.type == Self.variantStorageType else {
            throw Variant.ConversionError.unmatchingTypes(variant.type, Self.variantStorageType)
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

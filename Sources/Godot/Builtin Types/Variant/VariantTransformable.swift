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

/// A type that can be represented as, and initialized with, a `Variant`.
public typealias VariantTransformable = VariantConvertible & ExpressibleByVariant

/// A type that can be represented as, and initialized with, a `Variant`
/// and knows its underlying variant storage type.
public protocol TypedVariantTransformable: VariantTransformable {
    /// The underlying variant storage type.
    static var variantStorageType: Variant.ValueType { get }
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

import GodotExtensionHeaders

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
///     static let variantType: Variant.RepresentationType = Int.variantType
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
/// - The `variantType` static property that defines the variant representation type
/// your type can be converted to
/// - The `makeVariant()` method for converting an instance to a variant
public protocol ConvertibleToVariant {
    /// The type of variant representation this type can be converted to.
    ///
    /// When converting an instance to a variant using the ``makeVariant()``
    /// method, the generated variant representation type
    /// *must* match `variantType`.
    static var variantType: Variant.RepresentationType { get }
    
    /// The class name of the variant representation if applicable.
    ///
    /// Do not define this variable in your own types.
    /// Only `Object` and corresponding subclasses define
    /// this variable.
    static var __className: GodotStringName { get }
    
    /// A variant representation of this instance.
    func makeVariant() -> Variant
}

public extension ConvertibleToVariant {
    static var __className: GodotStringName { GodotStringName() }
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
/// struct Level: ConvertibleFromVariant {
///     let index: Int
///
///     static let variantType: Variant.RepresentationType = Int.variantType
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
/// - The `variantType` static property that defines the variant representation type
/// your type can be converted from
/// - The `fromMatchingTypeVariant(_:)` static method for converting a variant to an instance
///
/// By default, the `fromVariant(_:)` static method implementation only checks
/// that the provided variant representation matches `variantType` and throws
/// an error if not.
///
/// If you prefer to write a custom `fromVariant(_:)` method,
/// use ``Variant/checkType(_:)`` to check the type of the given variant:
///
/// ```swift
/// struct Level: ConvertibleFromVariant {
///     let index: Int
///
///     static let variantType: Variant.RepresentationType = Int.variantType
///
///     // fromMatchingTypeVariant implementation
///
///     static func fromVariant(_ variant: Variant) throws -> Level {
///         try variant.checkType(Self.variantType)
///
///         // Do some other checks and return a Level instance
///     }
/// }
/// ```
public protocol ConvertibleFromVariant {
    /// The type of variant representation this type can be converted from.
    ///
    /// When converting a variant to an instance using the ``fromTypedVariant(_:)``
    /// static method, the method should *not* throw an error
    /// if the provided variant representation type matches `variantType`.
    static var variantType: Variant.RepresentationType { get }
    
    /// Turns a variant into an instance.
    static func fromVariant(_ variant: Variant) throws -> Self
    
    /// Turns a variant into an instance.
    ///
    /// This method might not check the provided variant representation type
    /// and may stop the execution of your program if a wrong variant is provided.
    ///
    /// > warning: Only call this method using a variant
    /// with the same representation type as ``variantType``.
    ///
    /// See the ``fromVariant(_:)`` method to get a throwing version
    /// of this method.
    static func fromMatchingTypeVariant(_ variant: Variant) -> Self
}

public extension ConvertibleFromVariant {
    static func fromVariant(_ variant: Variant) throws -> Self {
        try variant.checkType(Self.variantType)
        
        return fromMatchingTypeVariant(variant)
    }
}

// MARK: - VariantConvertible

/// A type that can be converted from, and to, a variant.
public typealias VariantConvertible = ConvertibleToVariant & ConvertibleFromVariant

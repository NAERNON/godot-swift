import GodotExtensionHeaders

/// A type that can be converted to a variant.
public protocol ConvertibleToVariant {
    /// A variant representation of this instance.
    func makeVariant() -> Variant.Storage
}

/// A type that can be converted from a variant.
public protocol ConvertibleFromVariant {
    /// Converts a variant into an instance of this type.
    static func fromVariant(_ variant: borrowing Variant.Storage) throws -> Self
    
    /// Converts a variant into an instance of this type.
    ///
    /// This method assumes the given variant
    /// can be converted to this type.
    ///
    /// >important: Passing a wrong variant may stop execution.
    ///
    /// See the ``fromVariant(_:)`` method to get a throwing version
    /// of this method.
    static func fromCompatibleVariant(_ variant: borrowing Variant.Storage) -> Self
}

/// A type that can be converted from, and to, a variant.
public protocol VariantConvertible: ConvertibleToVariant, ConvertibleFromVariant {
    /// The variant type this type
    /// can be converted to and from.
    static var variantType: Variant.RepresentationType { get }
    
    /// The class name of the variant representation if applicable.
    ///
    /// Do not define this variable in your own types.
    /// Only ``Object`` and its subclasses define
    /// this variable.
    static var _$className: GodotStringName { get }
}

public extension VariantConvertible {
    static var _$className: GodotStringName { GodotStringName() }
    
    static func fromVariant(_ variant: borrowing Variant.Storage) throws -> Self {
        try variant.checkType(Self.variantType)
        
        return fromCompatibleVariant(variant)
    }
}

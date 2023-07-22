import Foundation
import GodotExtensionHeaders

// TODO: Check @inlinable & @usableFromInline

/// A type used to transform Swift types to and from Godot types.
///
/// Many Swift and Godot base types can actually
/// be converted to and from variants.
///
/// See the ``ConvertibleToVariant`` and ``ConvertibleFromVariant``
/// protocols for enabling your own types to convert to and from a variant.
public struct Variant {
    // MARK: Inits
    
    /// Creates a new `Variant` as a `nil` variant.
    public init() {
        withUnsafeRawPointer { extensionTypePtr in
            gdextension_interface_variant_new_nil(extensionTypePtr)
        }
    }
    
    public init(extensionVariantPtr: GDExtensionVariantPtr) {
        withUnsafeRawPointer { extensionTypePtr in
            gdextension_interface_variant_new_copy(extensionTypePtr, extensionVariantPtr)
        }
    }
    
    public init(extensionVariantPtr: GDExtensionConstVariantPtr) {
        withUnsafeRawPointer { extensionTypePtr in
            gdextension_interface_variant_new_copy(extensionTypePtr, extensionVariantPtr)
        }
    }
    
    public init<T>(_ value: T) where T : ConvertibleToVariant {
        self = value.makeVariant()
    }

    // MARK: Getters
    
    /// Returns the value contained inside the `Variant`.
    /// - Parameter type: The type inside the `Variant`.
    public func value<T>(ofType type: T.Type) throws -> T where T : ConvertibleFromVariant {
        try type.fromVariant(self)
    }
    
    // MARK: - Functions
    
    /// Returns the type of value this variant stores.
    public var type: GDExtensionVariantType {
        var extensionVariantType: GDExtensionVariantType!
        
        withUnsafeRawPointer { extensionTypePtr in
            extensionVariantType = gdextension_interface_variant_get_type(extensionTypePtr)
        }
        
        return extensionVariantType
    }
    
    fileprivate func evaluate(other: Variant, `operator`: Operator) -> Variant? {
        var isValid: GDExtensionBool = 0
        let returnVariant = Variant()
        
        self.withUnsafeRawPointer { extensionTypePtr in
            other.withUnsafeRawPointer { otherNativeTypePtr in
                returnVariant.withUnsafeRawPointer { returnNativeTypePtr in
                    withUnsafeMutablePointer(to: &isValid) { validPtr in
                        gdextension_interface_variant_evaluate(
                            `operator`.godotOperator,
                            extensionTypePtr,
                            otherNativeTypePtr,
                            returnNativeTypePtr,
                            validPtr
                        )
                    }
                }
            }
        }
        
        if isValid != 0 {
            return returnVariant
        } else {
            return nil
        }
    }
    
    public var hashValue: Int {
        var result: GDExtensionInt = 0
        
        withUnsafeRawPointer { extensionTypePtr in
            result = gdextension_interface_variant_hash(extensionTypePtr)
        }
        
        return Int(result)
    }
    
    public func copyTo(variantPtr: GDExtensionVariantPtr) {
        withUnsafeRawPointer { selfPtr in
            gdextension_interface_variant_new_copy(variantPtr, selfPtr)
        }
    }
    
    private(set) var opaque: VariantOpaque = {
        .init(size: Variant.opaqueSize)
    }()
    
    /// Calls a closure with an extension type pointer of the underlying object.
    internal func withUnsafeRawPointer<Result>(
        _ body: (GDExtensionVariantPtr) throws -> Result
    ) rethrows -> Result {
        try opaque.withUnsafeMutableRawPointer(body)
    }
    
    internal var opaqueDescription: Swift.String {
        opaque.debugDescription
    }
}

// MARK: - Extensions

extension Variant: CustomDebugStringConvertible {
    public var debugDescription: Swift.String {
        let string = String()
        
        self.withUnsafeRawPointer { extensionTypePtr in
            string.withUnsafeRawPointer { stringNativeTypePtr in
                gdextension_interface_variant_stringify(extensionTypePtr, stringNativeTypePtr)
            }
        }
        
        return Swift.String(godotString: string)
    }
}

extension Variant: Equatable {
    static public func == (lhs: Variant, rhs: Variant) -> Bool {
        guard let variant = lhs.evaluate(other: rhs, operator: .equal) else {
            return false
        }
        
        return Bool.fromMatchingTypeVariant(variant)
    }
    
    static public func != (lhs: Variant, rhs: Variant) -> Bool {
        guard let variant = lhs.evaluate(other: rhs, operator: .notEqual) else {
            return true
        }
        
        return Bool.fromMatchingTypeVariant(variant)
    }
}

extension Variant: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(hashValue)
    }
}

extension Variant: ExpressibleByFloatLiteral {
    public init(floatLiteral value: Double) {
        self.init(value)
    }
}

extension Variant: ExpressibleByStringLiteral {
    public init(stringLiteral value: Swift.String) {
        self.init(String(swiftString: value))
    }
}

extension Variant: ExpressibleByStringInterpolation {}

extension Variant: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: Int) {
        self.init(value)
    }
}

extension Variant: ExpressibleByBooleanLiteral {
    public init(booleanLiteral value: BooleanLiteralType) {
        self.init(value)
    }
}

extension Variant: ExpressibleByNilLiteral {
    public init(nilLiteral: ()) {
        self.init()
    }
}

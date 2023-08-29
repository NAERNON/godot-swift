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
    internal enum Error: Swift.Error {
        case unmatchingTypes(variantType: GDExtensionVariantType, checkedType: GDExtensionVariantType)
        
        var localizedDescription: String {
            switch self {
            case .unmatchingTypes(let variantType, let checkedType):
                "The variant types don't match (\(variantType) and \(checkedType))."
            }
        }
    }
    
    // MARK: Inits
    
    /// Creates a new `Variant` as a `nil` variant.
    public init() {
        withUnsafeRawPointer { extensionTypePtr in
            gdextension_interface_variant_new_nil(extensionTypePtr)
        }
    }
    
    public init(godotExtensionPointer: GDExtensionVariantPtr) {
        withUnsafeRawPointer { extensionTypePtr in
            gdextension_interface_variant_new_copy(extensionTypePtr, godotExtensionPointer)
        }
    }
    
    public init(godotExtensionPointer: GDExtensionConstVariantPtr) {
        withUnsafeRawPointer { extensionTypePtr in
            gdextension_interface_variant_new_copy(extensionTypePtr, godotExtensionPointer)
        }
    }
    
    public init<T>(_ value: T) where T : ConvertibleToVariant {
        self = value.makeVariant()
    }

    // MARK: Getters
    
    /// Returns the value contained inside the `Variant`.
    /// 
    /// - Parameter type: The type inside the `Variant`.
    public func value<T>(ofType type: T.Type) throws -> T where T : ConvertibleFromVariant {
        try type.fromVariant(self)
    }
    
    // MARK: - Functions
    
    public func makeVariant() -> Variant {
        self
    }
    
    /// Returns the type of value this variant stores.
    public var type: GDExtensionVariantType {
        var extensionVariantType: GDExtensionVariantType!
        
        withUnsafeRawPointer { extensionTypePtr in
            extensionVariantType = gdextension_interface_variant_get_type(extensionTypePtr)
        }
        
        return extensionVariantType
    }
    
    /// A Boolean value indicating whether this variant is an `Int` or a `Float` value.
    var isNumeric: Bool {
        let type = self.type
        return type == GDEXTENSION_VARIANT_TYPE_INT || type == GDEXTENSION_VARIANT_TYPE_FLOAT
    }
    
    /// Checks that the variant type matches the given type.
    public func checkType(_ type: RepresentationType) throws {
        if self.type != type.storageType {
            throw Error.unmatchingTypes(variantType: self.type, checkedType: type.storageType)
        }
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
    
    /// Passes the memory management of this instance onto Godot.
    ///
    /// There is a risk of memory leaking if not correctly used.
    public func consumeByGodot(ontoUnsafePointer destination: GDExtensionVariantPtr) {
        withUnsafeRawPointer { selfPtr in
            gdextension_interface_variant_new_copy(destination, selfPtr)
        }
    }
    
    private var opaque: VariantOpaque = {
        .init(size: Variant.opaqueSize)
    }()
    
    /// Calls a closure with an extension type pointer of the underlying object.
    internal func withUnsafeRawPointer<Result>(
        _ body: (GDExtensionVariantPtr) throws -> Result
    ) rethrows -> Result {
        try opaque.withUnsafeMutableRawPointer(body)
    }
    
    internal var opaqueDescription: String {
        opaque.debugDescription
    }
}

// MARK: - Extensions

extension Variant: CustomDebugStringConvertible {
    public var debugDescription: String {
        let string = GodotString()
        
        self.withUnsafeRawPointer { extensionTypePtr in
            string.withUnsafeRawPointer { stringNativeTypePtr in
                gdextension_interface_variant_stringify(extensionTypePtr, stringNativeTypePtr)
            }
        }
        
        return String(godotString: string)
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
    public init(stringLiteral value: String) {
        self.init(GodotString(swiftString: value))
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

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
        withUnsafeExtensionPointer { extensionTypePtr in
            GodotExtension.interface.variant_new_nil(extensionTypePtr)
        }
    }
    
    public init(extensionVariantPtr: GDExtensionVariantPtr) {
        withUnsafeExtensionPointer { extensionTypePtr in
            GodotExtension.interface.variant_new_copy(extensionTypePtr, extensionVariantPtr)
        }
    }
    
    public init(extensionVariantPtr: GDExtensionConstVariantPtr) {
        withUnsafeExtensionPointer { extensionTypePtr in
            GodotExtension.interface.variant_new_copy(extensionTypePtr, extensionVariantPtr)
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
    
    public var type: GodotType {
        var extensionVariantType: GDExtensionVariantType!
        
        withUnsafeExtensionPointer { extensionTypePtr in
            extensionVariantType = GodotExtension.interface.variant_get_type(extensionTypePtr)
        }
        
        return GodotType(godotExtensionType: extensionVariantType)
    }
    
    fileprivate func evaluate(other: Variant, `operator`: Operator) -> Variant? {
        var isValid: GDExtensionBool = 0
        let returnVariant = Variant()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            other.withUnsafeExtensionPointer { otherNativeTypePtr in
                returnVariant.withUnsafeExtensionPointer { returnNativeTypePtr in
                    withUnsafeMutablePointer(to: &isValid) { validPtr in
                        GodotExtension.interface.variant_evaluate(
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
        
        withUnsafeExtensionPointer { extensionTypePtr in
            result = GodotExtension.interface.variant_hash(extensionTypePtr)
        }
        
        return Int(result)
    }
    
    public func copyTo(variantPtr: GDExtensionVariantPtr) {
        withUnsafeExtensionPointer { selfPtr in
            GodotExtension.interface.variant_new_copy(variantPtr, selfPtr)
        }
    }
    
    // MARK: - Bindings
    
    internal static var fromTypeConstructor_bool: GDExtensionVariantFromTypeConstructorFunc!
    internal static var fromTypeConstructor_int: GDExtensionVariantFromTypeConstructorFunc!
    internal static var fromTypeConstructor_float: GDExtensionVariantFromTypeConstructorFunc!
    internal static var fromTypeConstructor_string: GDExtensionVariantFromTypeConstructorFunc!
    internal static var fromTypeConstructor_vector2: GDExtensionVariantFromTypeConstructorFunc!
    internal static var fromTypeConstructor_vector2i: GDExtensionVariantFromTypeConstructorFunc!
    internal static var fromTypeConstructor_rect2: GDExtensionVariantFromTypeConstructorFunc!
    internal static var fromTypeConstructor_rect2i: GDExtensionVariantFromTypeConstructorFunc!
    internal static var fromTypeConstructor_vector3: GDExtensionVariantFromTypeConstructorFunc!
    internal static var fromTypeConstructor_vector3i: GDExtensionVariantFromTypeConstructorFunc!
    internal static var fromTypeConstructor_transform2D: GDExtensionVariantFromTypeConstructorFunc!
    internal static var fromTypeConstructor_vector4: GDExtensionVariantFromTypeConstructorFunc!
    internal static var fromTypeConstructor_vector4i: GDExtensionVariantFromTypeConstructorFunc!
    internal static var fromTypeConstructor_plane: GDExtensionVariantFromTypeConstructorFunc!
    internal static var fromTypeConstructor_quaternion: GDExtensionVariantFromTypeConstructorFunc!
    internal static var fromTypeConstructor_aabb: GDExtensionVariantFromTypeConstructorFunc!
    internal static var fromTypeConstructor_basis: GDExtensionVariantFromTypeConstructorFunc!
    internal static var fromTypeConstructor_transform3D: GDExtensionVariantFromTypeConstructorFunc!
    internal static var fromTypeConstructor_projection: GDExtensionVariantFromTypeConstructorFunc!
    internal static var fromTypeConstructor_color: GDExtensionVariantFromTypeConstructorFunc!
    internal static var fromTypeConstructor_stringName: GDExtensionVariantFromTypeConstructorFunc!
    internal static var fromTypeConstructor_nodePath: GDExtensionVariantFromTypeConstructorFunc!
    internal static var fromTypeConstructor_rid: GDExtensionVariantFromTypeConstructorFunc!
    internal static var fromTypeConstructor_object: GDExtensionVariantFromTypeConstructorFunc!
    internal static var fromTypeConstructor_callable: GDExtensionVariantFromTypeConstructorFunc!
    internal static var fromTypeConstructor_signal: GDExtensionVariantFromTypeConstructorFunc!
    internal static var fromTypeConstructor_dictionary: GDExtensionVariantFromTypeConstructorFunc!
    internal static var fromTypeConstructor_array: GDExtensionVariantFromTypeConstructorFunc!
    internal static var fromTypeConstructor_packedByteArray: GDExtensionVariantFromTypeConstructorFunc!
    internal static var fromTypeConstructor_packedInt32Array: GDExtensionVariantFromTypeConstructorFunc!
    internal static var fromTypeConstructor_packedInt64Array: GDExtensionVariantFromTypeConstructorFunc!
    internal static var fromTypeConstructor_packedFloat32Array: GDExtensionVariantFromTypeConstructorFunc!
    internal static var fromTypeConstructor_packedFloat64Array: GDExtensionVariantFromTypeConstructorFunc!
    internal static var fromTypeConstructor_packedStringArray: GDExtensionVariantFromTypeConstructorFunc!
    internal static var fromTypeConstructor_packedVector2Array: GDExtensionVariantFromTypeConstructorFunc!
    internal static var fromTypeConstructor_packedVector3Array: GDExtensionVariantFromTypeConstructorFunc!
    internal static var fromTypeConstructor_packedColorArray: GDExtensionVariantFromTypeConstructorFunc!
    
    internal static var toTypeConstructor_bool: GDExtensionTypeFromVariantConstructorFunc!
    internal static var toTypeConstructor_int: GDExtensionTypeFromVariantConstructorFunc!
    internal static var toTypeConstructor_float: GDExtensionTypeFromVariantConstructorFunc!
    internal static var toTypeConstructor_string: GDExtensionTypeFromVariantConstructorFunc!
    internal static var toTypeConstructor_vector2: GDExtensionTypeFromVariantConstructorFunc!
    internal static var toTypeConstructor_vector2i: GDExtensionTypeFromVariantConstructorFunc!
    internal static var toTypeConstructor_rect2: GDExtensionTypeFromVariantConstructorFunc!
    internal static var toTypeConstructor_rect2i: GDExtensionTypeFromVariantConstructorFunc!
    internal static var toTypeConstructor_vector3: GDExtensionTypeFromVariantConstructorFunc!
    internal static var toTypeConstructor_vector3i: GDExtensionTypeFromVariantConstructorFunc!
    internal static var toTypeConstructor_transform2D: GDExtensionTypeFromVariantConstructorFunc!
    internal static var toTypeConstructor_vector4: GDExtensionTypeFromVariantConstructorFunc!
    internal static var toTypeConstructor_vector4i: GDExtensionTypeFromVariantConstructorFunc!
    internal static var toTypeConstructor_plane: GDExtensionTypeFromVariantConstructorFunc!
    internal static var toTypeConstructor_quaternion: GDExtensionTypeFromVariantConstructorFunc!
    internal static var toTypeConstructor_aabb: GDExtensionTypeFromVariantConstructorFunc!
    internal static var toTypeConstructor_basis: GDExtensionTypeFromVariantConstructorFunc!
    internal static var toTypeConstructor_transform3D: GDExtensionTypeFromVariantConstructorFunc!
    internal static var toTypeConstructor_projection: GDExtensionTypeFromVariantConstructorFunc!
    internal static var toTypeConstructor_color: GDExtensionTypeFromVariantConstructorFunc!
    internal static var toTypeConstructor_stringName: GDExtensionTypeFromVariantConstructorFunc!
    internal static var toTypeConstructor_nodePath: GDExtensionTypeFromVariantConstructorFunc!
    internal static var toTypeConstructor_rid: GDExtensionTypeFromVariantConstructorFunc!
    internal static var toTypeConstructor_object: GDExtensionTypeFromVariantConstructorFunc!
    internal static var toTypeConstructor_callable: GDExtensionTypeFromVariantConstructorFunc!
    internal static var toTypeConstructor_signal: GDExtensionTypeFromVariantConstructorFunc!
    internal static var toTypeConstructor_dictionary: GDExtensionTypeFromVariantConstructorFunc!
    internal static var toTypeConstructor_array: GDExtensionTypeFromVariantConstructorFunc!
    internal static var toTypeConstructor_packedByteArray: GDExtensionTypeFromVariantConstructorFunc!
    internal static var toTypeConstructor_packedInt32Array: GDExtensionTypeFromVariantConstructorFunc!
    internal static var toTypeConstructor_packedInt64Array: GDExtensionTypeFromVariantConstructorFunc!
    internal static var toTypeConstructor_packedFloat32Array: GDExtensionTypeFromVariantConstructorFunc!
    internal static var toTypeConstructor_packedFloat64Array: GDExtensionTypeFromVariantConstructorFunc!
    internal static var toTypeConstructor_packedStringArray: GDExtensionTypeFromVariantConstructorFunc!
    internal static var toTypeConstructor_packedVector2Array: GDExtensionTypeFromVariantConstructorFunc!
    internal static var toTypeConstructor_packedVector3Array: GDExtensionTypeFromVariantConstructorFunc!
    internal static var toTypeConstructor_packedColorArray: GDExtensionTypeFromVariantConstructorFunc!
    
    private(set) var opaque: VariantOpaque = {
        .init(size: Variant.opaqueSize)
    }()
    
    /// Calls a closure with an extension type pointer of the underlying object. Should only be called by the `GodotLibrary`.
    internal func withUnsafeExtensionPointer(_ body: (GDExtensionVariantPtr) -> ()) {
        opaque.withUnsafeMutableRawPointer(body)
    }
    
    internal var opaqueDescription: Swift.String {
        opaque.debugDescription
    }
    
    /// Sets all the init bindings and the deinit used to communicate with Godot.
    ///
    /// This function must be called before the creation of any `Variant` instance since the bindings will be needed
    /// for any initialization.
    internal static func setInitBindings() {
        fromTypeConstructor_bool =
            GodotExtension.interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_BOOL)
        fromTypeConstructor_int =
            GodotExtension.interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_INT)
        fromTypeConstructor_float =
            GodotExtension.interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_FLOAT)
        fromTypeConstructor_string =
            GodotExtension.interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_STRING)
        fromTypeConstructor_vector2 =
            GodotExtension.interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR2)
        fromTypeConstructor_vector2i =
            GodotExtension.interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR2I)
        fromTypeConstructor_rect2 =
            GodotExtension.interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_RECT2)
        fromTypeConstructor_rect2i =
            GodotExtension.interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_RECT2I)
        fromTypeConstructor_vector3 =
            GodotExtension.interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR3)
        fromTypeConstructor_vector3i =
            GodotExtension.interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR3I)
        fromTypeConstructor_transform2D =
            GodotExtension.interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D)
        fromTypeConstructor_vector4 =
            GodotExtension.interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR4)
        fromTypeConstructor_vector4i =
            GodotExtension.interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR4I)
        fromTypeConstructor_plane =
            GodotExtension.interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_PLANE)
        fromTypeConstructor_quaternion =
            GodotExtension.interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_QUATERNION)
        fromTypeConstructor_aabb =
            GodotExtension.interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_AABB)
        fromTypeConstructor_basis =
            GodotExtension.interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_BASIS)
        fromTypeConstructor_transform3D =
            GodotExtension.interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D)
        fromTypeConstructor_projection =
            GodotExtension.interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_PROJECTION)
        fromTypeConstructor_color =
            GodotExtension.interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_COLOR)
        fromTypeConstructor_stringName =
            GodotExtension.interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_STRING_NAME)
        fromTypeConstructor_nodePath =
            GodotExtension.interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_NODE_PATH)
        fromTypeConstructor_rid =
            GodotExtension.interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_RID)
        fromTypeConstructor_object =
            GodotExtension.interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_OBJECT)
        fromTypeConstructor_callable =
            GodotExtension.interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_CALLABLE)
        fromTypeConstructor_signal =
            GodotExtension.interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_SIGNAL)
        fromTypeConstructor_dictionary =
            GodotExtension.interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_DICTIONARY)
        fromTypeConstructor_array =
            GodotExtension.interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_ARRAY)
        fromTypeConstructor_packedByteArray = GodotExtension.interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY)
        fromTypeConstructor_packedInt32Array =
            GodotExtension.interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY)
        fromTypeConstructor_packedInt64Array =
            GodotExtension.interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY)
        fromTypeConstructor_packedFloat32Array =
            GodotExtension.interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT32_ARRAY)
        fromTypeConstructor_packedFloat64Array =
            GodotExtension.interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY)
        fromTypeConstructor_packedStringArray =
            GodotExtension.interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY)
        fromTypeConstructor_packedVector2Array =
            GodotExtension.interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR2_ARRAY)
        fromTypeConstructor_packedVector3Array =
            GodotExtension.interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY)
        fromTypeConstructor_packedColorArray =
            GodotExtension.interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY)

        toTypeConstructor_bool =
            GodotExtension.interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_BOOL)
        toTypeConstructor_int =
            GodotExtension.interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_INT)
        toTypeConstructor_float =
            GodotExtension.interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_FLOAT)
        toTypeConstructor_string =
            GodotExtension.interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_STRING)
        toTypeConstructor_vector2 =
            GodotExtension.interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR2)
        toTypeConstructor_vector2i =
            GodotExtension.interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR2I)
        toTypeConstructor_rect2 =
            GodotExtension.interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_RECT2)
        toTypeConstructor_rect2i =
            GodotExtension.interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_RECT2I)
        toTypeConstructor_vector3 =
            GodotExtension.interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR3)
        toTypeConstructor_vector3i =
            GodotExtension.interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR3I)
        toTypeConstructor_transform2D =
            GodotExtension.interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D)
        toTypeConstructor_vector4 =
            GodotExtension.interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR4)
        toTypeConstructor_vector4i =
            GodotExtension.interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR4I)
        toTypeConstructor_plane =
            GodotExtension.interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_PLANE)
        toTypeConstructor_quaternion =
            GodotExtension.interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_QUATERNION)
        toTypeConstructor_aabb =
            GodotExtension.interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_AABB)
        toTypeConstructor_basis =
            GodotExtension.interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_BASIS)
        toTypeConstructor_transform3D =
            GodotExtension.interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D)
        toTypeConstructor_projection =
            GodotExtension.interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_PROJECTION)
        toTypeConstructor_color =
            GodotExtension.interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_COLOR)
        toTypeConstructor_stringName =
            GodotExtension.interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_STRING_NAME)
        toTypeConstructor_nodePath =
            GodotExtension.interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_NODE_PATH)
        toTypeConstructor_rid =
            GodotExtension.interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_RID)
        toTypeConstructor_object =
            GodotExtension.interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_OBJECT)
        toTypeConstructor_callable =
            GodotExtension.interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_CALLABLE)
        toTypeConstructor_signal =
            GodotExtension.interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_SIGNAL)
        toTypeConstructor_dictionary =
            GodotExtension.interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_DICTIONARY)
        toTypeConstructor_array =
            GodotExtension.interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_ARRAY)
        toTypeConstructor_packedByteArray =
            GodotExtension.interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY)
        toTypeConstructor_packedInt32Array =
            GodotExtension.interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY)
        toTypeConstructor_packedInt64Array =
            GodotExtension.interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY)
        toTypeConstructor_packedFloat32Array =
            GodotExtension.interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT32_ARRAY)
        toTypeConstructor_packedFloat64Array =
            GodotExtension.interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY)
        toTypeConstructor_packedStringArray =
            GodotExtension.interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY)
        toTypeConstructor_packedVector2Array =
            GodotExtension.interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR2_ARRAY)
        toTypeConstructor_packedVector3Array =
            GodotExtension.interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY)
        toTypeConstructor_packedColorArray =
            GodotExtension.interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY)
    }
}

// MARK: - Extensions

extension Variant: CustomDebugStringConvertible {
    public var debugDescription: Swift.String {
        let string = String()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            string.withUnsafeExtensionPointer { stringNativeTypePtr in
                GodotExtension.interface.variant_stringify(extensionTypePtr, stringNativeTypePtr)
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

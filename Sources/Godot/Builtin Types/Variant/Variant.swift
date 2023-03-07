import Foundation
import GodotExtensionHeaders

#warning("Check @inlinable & @usableFromInline")

public struct Variant {
    // MARK: Inits
    
    /// Creates a new `Variant` as a `nil` variant.
    public init() {
        withUnsafeExtensionPointer { extensionTypePtr in
            GodotExtension.shared.interface.variant_new_nil(extensionTypePtr)
        }
    }
    
    internal init(extensionVariantPtr: GDExtensionVariantPtr) {
        withUnsafeExtensionPointer { extensionTypePtr in
            GodotExtension.shared.interface.variant_new_copy(extensionTypePtr, extensionVariantPtr)
        }
    }
    
    public init<T>(_ variantConvertible: T) where T: VariantConvertible {
        self = variantConvertible.variant
    }

    // MARK: Getters
    
    /// Returns the value contained inside the `Variant`.
    /// - Parameter type: The type inside the `Variant`.
    public func value<T>(ofType type: T.Type) throws -> T where T: ExpressibleByVariant {
        try type.init(variant: self)
    }
    
    // MARK: - Functions
    
    public var type: ValueType {
        var extensionVariantType: GDExtensionVariantType!
        
        withUnsafeExtensionPointer { extensionTypePtr in
            extensionVariantType = GodotExtension.shared.interface.variant_get_type(extensionTypePtr)
        }
        
        return ValueType(godotType: extensionVariantType)
    }
    
    fileprivate func evaluate(other: Variant, `operator`: Operator) -> Variant? {
        var isValid: GDExtensionBool = 0
        let returnVariant = Variant()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            other.withUnsafeExtensionPointer { otherNativeTypePtr in
                returnVariant.withUnsafeExtensionPointer { returnNativeTypePtr in
                    withUnsafeMutablePointer(to: &isValid) { validPtr in
                        GodotExtension.shared.interface.variant_evaluate(
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
            result = GodotExtension.shared.interface.variant_hash(extensionTypePtr)
        }
        
        return Int(result)
    }
    
    // MARK: - Bindings
    
    fileprivate static var fromTypeConstructor_bool: GDExtensionVariantFromTypeConstructorFunc!
    fileprivate static var fromTypeConstructor_int: GDExtensionVariantFromTypeConstructorFunc!
    fileprivate static var fromTypeConstructor_float: GDExtensionVariantFromTypeConstructorFunc!
    fileprivate static var fromTypeConstructor_string: GDExtensionVariantFromTypeConstructorFunc!
    fileprivate static var fromTypeConstructor_vector2: GDExtensionVariantFromTypeConstructorFunc!
    fileprivate static var fromTypeConstructor_vector2i: GDExtensionVariantFromTypeConstructorFunc!
    fileprivate static var fromTypeConstructor_rect2: GDExtensionVariantFromTypeConstructorFunc!
    fileprivate static var fromTypeConstructor_rect2i: GDExtensionVariantFromTypeConstructorFunc!
    fileprivate static var fromTypeConstructor_vector3: GDExtensionVariantFromTypeConstructorFunc!
    fileprivate static var fromTypeConstructor_vector3i: GDExtensionVariantFromTypeConstructorFunc!
    fileprivate static var fromTypeConstructor_transform2D: GDExtensionVariantFromTypeConstructorFunc!
    fileprivate static var fromTypeConstructor_vector4: GDExtensionVariantFromTypeConstructorFunc!
    fileprivate static var fromTypeConstructor_vector4i: GDExtensionVariantFromTypeConstructorFunc!
    fileprivate static var fromTypeConstructor_plane: GDExtensionVariantFromTypeConstructorFunc!
    fileprivate static var fromTypeConstructor_quaternion: GDExtensionVariantFromTypeConstructorFunc!
    fileprivate static var fromTypeConstructor_aabb: GDExtensionVariantFromTypeConstructorFunc!
    fileprivate static var fromTypeConstructor_basis: GDExtensionVariantFromTypeConstructorFunc!
    fileprivate static var fromTypeConstructor_transform3D: GDExtensionVariantFromTypeConstructorFunc!
    fileprivate static var fromTypeConstructor_projection: GDExtensionVariantFromTypeConstructorFunc!
    fileprivate static var fromTypeConstructor_color: GDExtensionVariantFromTypeConstructorFunc!
    fileprivate static var fromTypeConstructor_stringName: GDExtensionVariantFromTypeConstructorFunc!
    fileprivate static var fromTypeConstructor_nodePath: GDExtensionVariantFromTypeConstructorFunc!
    fileprivate static var fromTypeConstructor_rid: GDExtensionVariantFromTypeConstructorFunc!
    fileprivate static var fromTypeConstructor_object: GDExtensionVariantFromTypeConstructorFunc!
    fileprivate static var fromTypeConstructor_callable: GDExtensionVariantFromTypeConstructorFunc!
    fileprivate static var fromTypeConstructor_signal: GDExtensionVariantFromTypeConstructorFunc!
    fileprivate static var fromTypeConstructor_dictionary: GDExtensionVariantFromTypeConstructorFunc!
    fileprivate static var fromTypeConstructor_array: GDExtensionVariantFromTypeConstructorFunc!
    fileprivate static var fromTypeConstructor_packedByteArray: GDExtensionVariantFromTypeConstructorFunc!
    fileprivate static var fromTypeConstructor_packedInt32Array: GDExtensionVariantFromTypeConstructorFunc!
    fileprivate static var fromTypeConstructor_packedInt64Array: GDExtensionVariantFromTypeConstructorFunc!
    fileprivate static var fromTypeConstructor_packedFloat32Array: GDExtensionVariantFromTypeConstructorFunc!
    fileprivate static var fromTypeConstructor_packedFloat64Array: GDExtensionVariantFromTypeConstructorFunc!
    fileprivate static var fromTypeConstructor_packedStringArray: GDExtensionVariantFromTypeConstructorFunc!
    fileprivate static var fromTypeConstructor_packedVector2Array: GDExtensionVariantFromTypeConstructorFunc!
    fileprivate static var fromTypeConstructor_packedVector3Array: GDExtensionVariantFromTypeConstructorFunc!
    fileprivate static var fromTypeConstructor_packedColorArray: GDExtensionVariantFromTypeConstructorFunc!
    
    fileprivate static var toTypeConstructor_bool: GDExtensionTypeFromVariantConstructorFunc!
    fileprivate static var toTypeConstructor_int: GDExtensionTypeFromVariantConstructorFunc!
    fileprivate static var toTypeConstructor_float: GDExtensionTypeFromVariantConstructorFunc!
    fileprivate static var toTypeConstructor_string: GDExtensionTypeFromVariantConstructorFunc!
    fileprivate static var toTypeConstructor_vector2: GDExtensionTypeFromVariantConstructorFunc!
    fileprivate static var toTypeConstructor_vector2i: GDExtensionTypeFromVariantConstructorFunc!
    fileprivate static var toTypeConstructor_rect2: GDExtensionTypeFromVariantConstructorFunc!
    fileprivate static var toTypeConstructor_rect2i: GDExtensionTypeFromVariantConstructorFunc!
    fileprivate static var toTypeConstructor_vector3: GDExtensionTypeFromVariantConstructorFunc!
    fileprivate static var toTypeConstructor_vector3i: GDExtensionTypeFromVariantConstructorFunc!
    fileprivate static var toTypeConstructor_transform2D: GDExtensionTypeFromVariantConstructorFunc!
    fileprivate static var toTypeConstructor_vector4: GDExtensionTypeFromVariantConstructorFunc!
    fileprivate static var toTypeConstructor_vector4i: GDExtensionTypeFromVariantConstructorFunc!
    fileprivate static var toTypeConstructor_plane: GDExtensionTypeFromVariantConstructorFunc!
    fileprivate static var toTypeConstructor_quaternion: GDExtensionTypeFromVariantConstructorFunc!
    fileprivate static var toTypeConstructor_aabb: GDExtensionTypeFromVariantConstructorFunc!
    fileprivate static var toTypeConstructor_basis: GDExtensionTypeFromVariantConstructorFunc!
    fileprivate static var toTypeConstructor_transform3D: GDExtensionTypeFromVariantConstructorFunc!
    fileprivate static var toTypeConstructor_projection: GDExtensionTypeFromVariantConstructorFunc!
    fileprivate static var toTypeConstructor_color: GDExtensionTypeFromVariantConstructorFunc!
    fileprivate static var toTypeConstructor_stringName: GDExtensionTypeFromVariantConstructorFunc!
    fileprivate static var toTypeConstructor_nodePath: GDExtensionTypeFromVariantConstructorFunc!
    fileprivate static var toTypeConstructor_rid: GDExtensionTypeFromVariantConstructorFunc!
    fileprivate static var toTypeConstructor_object: GDExtensionTypeFromVariantConstructorFunc!
    fileprivate static var toTypeConstructor_callable: GDExtensionTypeFromVariantConstructorFunc!
    fileprivate static var toTypeConstructor_signal: GDExtensionTypeFromVariantConstructorFunc!
    fileprivate static var toTypeConstructor_dictionary: GDExtensionTypeFromVariantConstructorFunc!
    fileprivate static var toTypeConstructor_array: GDExtensionTypeFromVariantConstructorFunc!
    fileprivate static var toTypeConstructor_packedByteArray: GDExtensionTypeFromVariantConstructorFunc!
    fileprivate static var toTypeConstructor_packedInt32Array: GDExtensionTypeFromVariantConstructorFunc!
    fileprivate static var toTypeConstructor_packedInt64Array: GDExtensionTypeFromVariantConstructorFunc!
    fileprivate static var toTypeConstructor_packedFloat32Array: GDExtensionTypeFromVariantConstructorFunc!
    fileprivate static var toTypeConstructor_packedFloat64Array: GDExtensionTypeFromVariantConstructorFunc!
    fileprivate static var toTypeConstructor_packedStringArray: GDExtensionTypeFromVariantConstructorFunc!
    fileprivate static var toTypeConstructor_packedVector2Array: GDExtensionTypeFromVariantConstructorFunc!
    fileprivate static var toTypeConstructor_packedVector3Array: GDExtensionTypeFromVariantConstructorFunc!
    fileprivate static var toTypeConstructor_packedColorArray: GDExtensionTypeFromVariantConstructorFunc!
    
    private var opaque: VariantOpaque = {
        .init(size: Variant.opaqueSize)
    }()
    
    /// Calls a closure with an extension type pointer of the underlying object. Should only be called by the `GodotLibrary`.
    internal func withUnsafeExtensionPointer(_ body: (GDExtensionTypePtr) -> ()) {
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
        let interface = GodotExtension.shared.interface!
        
        fromTypeConstructor_bool = interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_BOOL)
        fromTypeConstructor_int = interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_INT)
        fromTypeConstructor_float = interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_FLOAT)
        fromTypeConstructor_string = interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_STRING)
        fromTypeConstructor_vector2 = interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR2)
        fromTypeConstructor_vector2i = interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR2I)
        fromTypeConstructor_rect2 = interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_RECT2)
        fromTypeConstructor_rect2i = interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_RECT2I)
        fromTypeConstructor_vector3 = interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR3)
        fromTypeConstructor_vector3i = interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR3I)
        fromTypeConstructor_transform2D = interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D)
        fromTypeConstructor_vector4 = interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR4)
        fromTypeConstructor_vector4i = interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR4I)
        fromTypeConstructor_plane = interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_PLANE)
        fromTypeConstructor_quaternion = interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_QUATERNION)
        fromTypeConstructor_aabb = interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_AABB)
        fromTypeConstructor_basis = interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_BASIS)
        fromTypeConstructor_transform3D = interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D)
        fromTypeConstructor_projection = interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_PROJECTION)
        fromTypeConstructor_color = interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_COLOR)
        fromTypeConstructor_stringName = interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_STRING_NAME)
        fromTypeConstructor_nodePath = interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_NODE_PATH)
        fromTypeConstructor_rid = interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_RID)
        fromTypeConstructor_object = interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_OBJECT)
        fromTypeConstructor_callable = interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_CALLABLE)
        fromTypeConstructor_signal = interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_SIGNAL)
        fromTypeConstructor_dictionary = interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_DICTIONARY)
        fromTypeConstructor_array = interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_ARRAY)
        fromTypeConstructor_packedByteArray = interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY)
        fromTypeConstructor_packedInt32Array = interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY)
        fromTypeConstructor_packedInt64Array = interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY)
        fromTypeConstructor_packedFloat32Array = interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT32_ARRAY)
        fromTypeConstructor_packedFloat64Array = interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY)
        fromTypeConstructor_packedStringArray = interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY)
        fromTypeConstructor_packedVector2Array = interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR2_ARRAY)
        fromTypeConstructor_packedVector3Array = interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY)
        fromTypeConstructor_packedColorArray = interface.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY)

        toTypeConstructor_bool = interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_BOOL)
        toTypeConstructor_int = interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_INT)
        toTypeConstructor_float = interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_FLOAT)
        toTypeConstructor_string = interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_STRING)
        toTypeConstructor_vector2 = interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR2)
        toTypeConstructor_vector2i = interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR2I)
        toTypeConstructor_rect2 = interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_RECT2)
        toTypeConstructor_rect2i = interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_RECT2I)
        toTypeConstructor_vector3 = interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR3)
        toTypeConstructor_vector3i = interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR3I)
        toTypeConstructor_transform2D = interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D)
        toTypeConstructor_vector4 = interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR4)
        toTypeConstructor_vector4i = interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR4I)
        toTypeConstructor_plane = interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_PLANE)
        toTypeConstructor_quaternion = interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_QUATERNION)
        toTypeConstructor_aabb = interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_AABB)
        toTypeConstructor_basis = interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_BASIS)
        toTypeConstructor_transform3D = interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D)
        toTypeConstructor_projection = interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_PROJECTION)
        toTypeConstructor_color = interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_COLOR)
        toTypeConstructor_stringName = interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_STRING_NAME)
        toTypeConstructor_nodePath = interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_NODE_PATH)
        toTypeConstructor_rid = interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_RID)
        toTypeConstructor_object = interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_OBJECT)
        toTypeConstructor_callable = interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_CALLABLE)
        toTypeConstructor_signal = interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_SIGNAL)
        toTypeConstructor_dictionary = interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_DICTIONARY)
        toTypeConstructor_array = interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_ARRAY)
        toTypeConstructor_packedByteArray = interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY)
        toTypeConstructor_packedInt32Array = interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY)
        toTypeConstructor_packedInt64Array = interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY)
        toTypeConstructor_packedFloat32Array = interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT32_ARRAY)
        toTypeConstructor_packedFloat64Array = interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY)
        toTypeConstructor_packedStringArray = interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY)
        toTypeConstructor_packedVector2Array = interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR2_ARRAY)
        toTypeConstructor_packedVector3Array = interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY)
        toTypeConstructor_packedColorArray = interface.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY)
    }
}

// MARK: - Extensions

extension Variant: CustomDebugStringConvertible {
    public var debugDescription: Swift.String {
        let string = String()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            string.withUnsafeExtensionPointer { stringNativeTypePtr in
                GodotExtension.shared.interface.variant_stringify(extensionTypePtr, stringNativeTypePtr)
            }
        }
        
        return Swift.String(godotString: string)
    }
}

extension Variant: Equatable {
    static public func == (lhs: Variant, rhs: Variant) -> Bool {
        lhs.evaluate(other: rhs, operator: .equal)?.uncheckedBoolValue == true
    }
    
    static public func != (lhs: Variant, rhs: Variant) -> Bool {
        lhs.evaluate(other: rhs, operator: .notEqual)?.uncheckedBoolValue == true
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

// MARK: - Unchecked getters

extension Variant {
    /// Returns the underlying value, without checking that the underlying type
    /// matches the requested type.
    /// - Parameter type: The type of the `Object`.
    ///
    /// Godot might stop running when requesting a non matching type.
    public func uncheckedObjectValue<ObjectType>(ofType type: ObjectType.Type) -> ObjectType where ObjectType: Object {
        var newValue: ObjectType!
        let instanceOwner = UnsafeMutablePointer<UnsafeMutableRawPointer>.allocate(capacity: 1)
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            Variant.toTypeConstructor_object(UnsafeMutableRawPointer(mutating: instanceOwner), extensionTypePtr)
            
            let finalPtr = withUnsafePointer(to: ObjectType.instanceBindingsCallbacks()) { bindingsPtr in
                GodotExtension.shared.interface.object_get_instance_binding(
                    instanceOwner.pointee, GodotExtension.shared.token, bindingsPtr
                )
            }
            
            newValue = Unmanaged<ObjectType>.fromOpaque(finalPtr!).takeUnretainedValue()
        }
        
        instanceOwner.deinitialize(count: 1)
        instanceOwner.deallocate()
        
        return newValue
    }
    
    /// Returns the underlying value, without checking that the underlying type
    /// matches the requested type.
    ///
    /// Godot might stop running when requesting a non matching type.
    public var uncheckedBoolValue: Bool {
        var newValue = UInt8()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_bool(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue != 0
    }
    
    /// Returns the underlying value, without checking that the underlying type
    /// matches the requested type.
    ///
    /// Godot might stop running when requesting a non matching type.
    public var uncheckedIntValue: Int {
        var newValue = Int()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_int(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    /// Returns the underlying value, without checking that the underlying type
    /// matches the requested type.
    ///
    /// Godot might stop running when requesting a non matching type.
    public var uncheckedDoubleValue: Double {
        var newValue = Double()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_float(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    /// Returns the underlying value, without checking that the underlying type
    /// matches the requested type.
    ///
    /// Godot might stop running when requesting a non matching type.
    public var uncheckedStringValue: String {
        let newValue = String()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            newValue.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.toTypeConstructor_string(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    /// Returns the underlying value, without checking that the underlying type
    /// matches the requested type.
    ///
    /// Godot might stop running when requesting a non matching type.
    public var uncheckedVector2Value: Vector2 {
        var newValue = Vector2()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_vector2(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    /// Returns the underlying value, without checking that the underlying type
    /// matches the requested type.
    ///
    /// Godot might stop running when requesting a non matching type.
    public var uncheckedVector2iValue: Vector2i {
        var newValue = Vector2i()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_vector2i(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    /// Returns the underlying value, without checking that the underlying type
    /// matches the requested type.
    ///
    /// Godot might stop running when requesting a non matching type.
    public var uncheckedRect2Value: Rect2 {
        var newValue = Rect2()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_rect2(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    /// Returns the underlying value, without checking that the underlying type
    /// matches the requested type.
    ///
    /// Godot might stop running when requesting a non matching type.
    public var uncheckedRect2iValue: Rect2i {
        var newValue = Rect2i()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_rect2i(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    /// Returns the underlying value, without checking that the underlying type
    /// matches the requested type.
    ///
    /// Godot might stop running when requesting a non matching type.
    public var uncheckedVector3Value: Vector3 {
        var newValue = Vector3()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_vector3(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    /// Returns the underlying value, without checking that the underlying type
    /// matches the requested type.
    ///
    /// Godot might stop running when requesting a non matching type.
    public var uncheckedVector3iValue: Vector3i {
        var newValue = Vector3i()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_vector3i(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    /// Returns the underlying value, without checking that the underlying type
    /// matches the requested type.
    ///
    /// Godot might stop running when requesting a non matching type.
    public var uncheckedTransform2DValue: Transform2D {
        var newValue = Transform2D()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_transform2D(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    /// Returns the underlying value, without checking that the underlying type
    /// matches the requested type.
    ///
    /// Godot might stop running when requesting a non matching type.
    public var uncheckedVector4Value: Vector4 {
        var newValue = Vector4()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_vector4(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    /// Returns the underlying value, without checking that the underlying type
    /// matches the requested type.
    ///
    /// Godot might stop running when requesting a non matching type.
    public var uncheckedVector4iValue: Vector4i {
        var newValue = Vector4i()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_vector4i(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    /// Returns the underlying value, without checking that the underlying type
    /// matches the requested type.
    ///
    /// Godot might stop running when requesting a non matching type.
    public var uncheckedPlaneValue: Plane {
        var newValue = Plane()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_plane(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    /// Returns the underlying value, without checking that the underlying type
    /// matches the requested type.
    ///
    /// Godot might stop running when requesting a non matching type.
    public var uncheckedQuaternionValue: Quaternion {
        var newValue = Quaternion()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_quaternion(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    /// Returns the underlying value, without checking that the underlying type
    /// matches the requested type.
    ///
    /// Godot might stop running when requesting a non matching type.
    public var uncheckedAABBValue: AABB {
        var newValue = AABB()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_aabb(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    /// Returns the underlying value, without checking that the underlying type
    /// matches the requested type.
    ///
    /// Godot might stop running when requesting a non matching type.
    public var uncheckedBasisValue: Basis {
        var newValue = Basis()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_basis(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    /// Returns the underlying value, without checking that the underlying type
    /// matches the requested type.
    ///
    /// Godot might stop running when requesting a non matching type.
    public var uncheckedTransform3DValue: Transform3D {
        var newValue = Transform3D()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_transform3D(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    /// Returns the underlying value, without checking that the underlying type
    /// matches the requested type.
    ///
    /// Godot might stop running when requesting a non matching type.
    public var uncheckedProjectionValue: Projection {
        var newValue = Projection()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_projection(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    /// Returns the underlying value, without checking that the underlying type
    /// matches the requested type.
    ///
    /// Godot might stop running when requesting a non matching type.
    public var uncheckedColorValue: Color {
        var newValue = Color()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_color(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    /// Returns the underlying value, without checking that the underlying type
    /// matches the requested type.
    ///
    /// Godot might stop running when requesting a non matching type.
    public var uncheckedStringNameValue: StringName {
        let newValue = StringName()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            newValue.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.toTypeConstructor_stringName(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    /// Returns the underlying value, without checking that the underlying type
    /// matches the requested type.
    ///
    /// Godot might stop running when requesting a non matching type.
    public var uncheckedNodePathValue: NodePath {
        let newValue = NodePath()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            newValue.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.toTypeConstructor_nodePath(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    /// Returns the underlying value, without checking that the underlying type
    /// matches the requested type.
    ///
    /// Godot might stop running when requesting a non matching type.
    public var uncheckedRIDValue: RID {
        let newValue = RID()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            newValue.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.toTypeConstructor_rid(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    /// Returns the underlying value, without checking that the underlying type
    /// matches the requested type.
    ///
    /// Godot might stop running when requesting a non matching type.
    public var uncheckedCallableValue: Callable {
        let newValue = Callable()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            newValue.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.toTypeConstructor_callable(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    /// Returns the underlying value, without checking that the underlying type
    /// matches the requested type.
    ///
    /// Godot might stop running when requesting a non matching type.
    public var uncheckedSignalValue: Signal {
        let newValue = Signal()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            newValue.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.toTypeConstructor_signal(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    /// Returns the underlying value, without checking that the underlying type
    /// matches the requested type.
    ///
    /// Godot might stop running when requesting a non matching type.
    public var uncheckedDictionaryValue: Dictionary {
        let newValue = Dictionary()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            newValue.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.toTypeConstructor_dictionary(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    /// Returns the underlying value, without checking that the underlying type
    /// matches the requested type.
    ///
    /// Godot might stop running when requesting a non matching type.
    public var uncheckedArrayValue: Array {
        let newValue = Array()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            newValue.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.toTypeConstructor_array(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    /// Returns the underlying value, without checking that the underlying type
    /// matches the requested type.
    ///
    /// Godot might stop running when requesting a non matching type.
    public var uncheckedPackedByteArrayValue: PackedByteArray {
        let newValue = PackedByteArray()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            newValue.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.toTypeConstructor_packedByteArray(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    /// Returns the underlying value, without checking that the underlying type
    /// matches the requested type.
    ///
    /// Godot might stop running when requesting a non matching type.
    public var uncheckedPackedInt32ArrayValue: PackedInt32Array {
        let newValue = PackedInt32Array()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            newValue.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.toTypeConstructor_packedInt32Array(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    /// Returns the underlying value, without checking that the underlying type
    /// matches the requested type.
    ///
    /// Godot might stop running when requesting a non matching type.
    public var uncheckedPackedInt64ArrayValue: PackedInt64Array {
        let newValue = PackedInt64Array()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            newValue.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.toTypeConstructor_packedInt64Array(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    /// Returns the underlying value, without checking that the underlying type
    /// matches the requested type.
    ///
    /// Godot might stop running when requesting a non matching type.
    public var uncheckedPackedFloat32ArrayValue: PackedFloat32Array {
        let newValue = PackedFloat32Array()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            newValue.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.toTypeConstructor_packedFloat32Array(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    /// Returns the underlying value, without checking that the underlying type
    /// matches the requested type.
    ///
    /// Godot might stop running when requesting a non matching type.
    public var uncheckedPackedFloat64ArrayValue: PackedFloat64Array {
        let newValue = PackedFloat64Array()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            newValue.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.toTypeConstructor_packedFloat64Array(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    /// Returns the underlying value, without checking that the underlying type
    /// matches the requested type.
    ///
    /// Godot might stop running when requesting a non matching type.
    public var uncheckedPackedStringArrayValue: PackedStringArray {
        let newValue = PackedStringArray()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            newValue.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.toTypeConstructor_packedStringArray(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    /// Returns the underlying value, without checking that the underlying type
    /// matches the requested type.
    ///
    /// Godot might stop running when requesting a non matching type.
    public var uncheckedPackedVector2ArrayValue: PackedVector2Array {
        let newValue = PackedVector2Array()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            newValue.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.toTypeConstructor_packedVector2Array(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    /// Returns the underlying value, without checking that the underlying type
    /// matches the requested type.
    ///
    /// Godot might stop running when requesting a non matching type.
    public var uncheckedPackedVector3ArrayValue: PackedVector3Array {
        let newValue = PackedVector3Array()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            newValue.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.toTypeConstructor_packedVector3Array(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    /// Returns the underlying value, without checking that the underlying type
    /// matches the requested type.
    ///
    /// Godot might stop running when requesting a non matching type.
    public var uncheckedPackedColorArrayValue: PackedColorArray {
        let newValue = PackedColorArray()
        
        self.withUnsafeExtensionPointer { extensionTypePtr in
            newValue.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.toTypeConstructor_packedColorArray(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - Variant Transformable

extension Bool: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = .int
    
    public var variant: Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                Variant.fromTypeConstructor_bool(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public init(typedVariant: Variant) {
        self = typedVariant.uncheckedBoolValue
    }
}

extension Int: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = .int
    
    public var variant: Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                Variant.fromTypeConstructor_int(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public init(typedVariant: Variant) {
        self = typedVariant.uncheckedIntValue
    }
}

extension Double: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = .float
    
    public var variant: Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                Variant.fromTypeConstructor_float(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public init(typedVariant: Variant) {
        self = typedVariant.uncheckedDoubleValue
    }
}

extension Float: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = Double.variantStorageType

    public var variant: Variant {
        Double(self).variant
    }

    public init(typedVariant: Variant) {
        self = Float(Double(typedVariant: typedVariant))
    }
}

extension Real: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = Double.variantStorageType

    public var variant: Variant {
        Double(self).variant
    }

    public init(typedVariant: Variant) {
        self = Real(Double(typedVariant: typedVariant))
    }
}

extension String: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = .string
    
    public var variant: Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            self.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_string(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public init(typedVariant: Variant) {
        self = typedVariant.uncheckedStringValue
    }
}

extension Vector2: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = .vector2
    
    public var variant: Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                Variant.fromTypeConstructor_vector2(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public init(typedVariant: Variant) {
        self = typedVariant.uncheckedVector2Value
    }
}

extension Vector2i: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = .vector2i
    
    public var variant: Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                Variant.fromTypeConstructor_vector2i(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public init(typedVariant: Variant) {
        self = typedVariant.uncheckedVector2iValue
    }
}

extension Rect2: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = .rect2
    
    public var variant: Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                Variant.fromTypeConstructor_rect2(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public init(typedVariant: Variant) {
        self = typedVariant.uncheckedRect2Value
    }
}

extension Rect2i: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = .rect2i
    
    public var variant: Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                Variant.fromTypeConstructor_rect2i(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public init(typedVariant: Variant) {
        self = typedVariant.uncheckedRect2iValue
    }
}

extension Vector3: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = .vector3
    
    public var variant: Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                Variant.fromTypeConstructor_vector3(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public init(typedVariant: Variant) {
        self = typedVariant.uncheckedVector3Value
    }
}

extension Vector3i: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = .vector3i
    
    public var variant: Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                Variant.fromTypeConstructor_vector3i(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public init(typedVariant: Variant) {
        self = typedVariant.uncheckedVector3iValue
    }
}

extension Transform2D: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = .transform2D
    
    public var variant: Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                Variant.fromTypeConstructor_transform2D(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public init(typedVariant: Variant) {
        self = typedVariant.uncheckedTransform2DValue
    }
}

extension Vector4: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = .vector4
    
    public var variant: Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                Variant.fromTypeConstructor_vector4(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public init(typedVariant: Variant) {
        self = typedVariant.uncheckedVector4Value
    }
}

extension Vector4i: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = .vector4i
    
    public var variant: Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                Variant.fromTypeConstructor_vector4i(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public init(typedVariant: Variant) {
        self = typedVariant.uncheckedVector4iValue
    }
}

extension Plane: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = .plane
    
    public var variant: Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                Variant.fromTypeConstructor_plane(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public init(typedVariant: Variant) {
        self = typedVariant.uncheckedPlaneValue
    }
}

extension Quaternion: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = .quaternion
    
    public var variant: Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                Variant.fromTypeConstructor_quaternion(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public init(typedVariant: Variant) {
        self = typedVariant.uncheckedQuaternionValue
    }
}

extension AABB: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = .aabb
    
    public var variant: Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                Variant.fromTypeConstructor_aabb(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public init(typedVariant: Variant) {
        self = typedVariant.uncheckedAABBValue
    }
}

extension Basis: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = .basis
    
    public var variant: Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                Variant.fromTypeConstructor_basis(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public init(typedVariant: Variant) {
        self = typedVariant.uncheckedBasisValue
    }
}

extension Transform3D: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = .transform3D
    
    public var variant: Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                Variant.fromTypeConstructor_transform3D(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public init(typedVariant: Variant) {
        self = typedVariant.uncheckedTransform3DValue
    }
}

extension Projection: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = .projection
    
    public var variant: Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                Variant.fromTypeConstructor_projection(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public init(typedVariant: Variant) {
        self = typedVariant.uncheckedProjectionValue
    }
}

extension Color: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = .color
    
    public var variant: Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                Variant.fromTypeConstructor_color(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public init(typedVariant: Variant) {
        self = typedVariant.uncheckedColorValue
    }
}

extension StringName: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = .stringName
    
    public var variant: Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            self.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_stringName(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public init(typedVariant: Variant) {
        self = typedVariant.uncheckedStringNameValue
    }
}

extension NodePath: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = .nodePath
    
    public var variant: Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            self.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_nodePath(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public init(typedVariant: Variant) {
        self = typedVariant.uncheckedNodePathValue
    }
}

extension RID: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = .rid
    
    public var variant: Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            self.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_rid(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public init(typedVariant: Variant) {
        self = typedVariant.uncheckedRIDValue
    }
}

extension Object: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = .object

    public var variant: Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            self.withUnsafeExtensionPointer { otherNativeTypePtr in
                withUnsafePointer(to: otherNativeTypePtr) { pointer in
                    Variant.fromTypeConstructor_object(extensionTypePtr, UnsafeMutableRawPointer(mutating: pointer))
                }
            }
        }
        return variant
    }
}

extension Callable: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = .callable
    
    public var variant: Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            self.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_callable(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public init(typedVariant: Variant) {
        self = typedVariant.uncheckedCallableValue
    }
}

extension Signal: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = .signal
    
    public var variant: Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            self.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_signal(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public init(typedVariant: Variant) {
        self = typedVariant.uncheckedSignalValue
    }
}

extension Dictionary: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = .dictionary
    
    public var variant: Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            self.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_dictionary(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public init(typedVariant: Variant) {
        self = typedVariant.uncheckedDictionaryValue
    }
}

extension Array: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = .array
    
    public var variant: Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            self.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_array(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public init(typedVariant: Variant) {
        self = typedVariant.uncheckedArrayValue
    }
}

extension PackedByteArray: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = .packedByteArray
    
    public var variant: Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            self.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_packedByteArray(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public init(typedVariant: Variant) {
        self = typedVariant.uncheckedPackedByteArrayValue
    }
}

extension PackedInt32Array: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = .packedInt32Array
    
    public var variant: Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            self.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_packedInt32Array(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public init(typedVariant: Variant) {
        self = typedVariant.uncheckedPackedInt32ArrayValue
    }
}

extension PackedInt64Array: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = .packedInt64Array
    
    public var variant: Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            self.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_packedInt64Array(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public init(typedVariant: Variant) {
        self = typedVariant.uncheckedPackedInt64ArrayValue
    }
}

extension PackedFloat32Array: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = .packedFloat32Array
    
    public var variant: Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            self.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_packedFloat32Array(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public init(typedVariant: Variant) {
        self = typedVariant.uncheckedPackedFloat32ArrayValue
    }
}

extension PackedFloat64Array: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = .packedFloat64Array
    
    public var variant: Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            self.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_packedFloat64Array(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public init(typedVariant: Variant) {
        self = typedVariant.uncheckedPackedFloat64ArrayValue
    }
}

extension PackedStringArray: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = .packedStringArray
    
    public var variant: Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            self.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_packedStringArray(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public init(typedVariant: Variant) {
        self = typedVariant.uncheckedPackedStringArrayValue
    }
}

extension PackedVector2Array: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = .packedVector2Array
    
    public var variant: Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            self.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_packedVector2Array(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public init(typedVariant: Variant) {
        self = typedVariant.uncheckedPackedVector2ArrayValue
    }
}

extension PackedVector3Array: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = .packedVector3Array
    
    public var variant: Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            self.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_packedVector3Array(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public init(typedVariant: Variant) {
        self = typedVariant.uncheckedPackedVector3ArrayValue
    }
}

extension PackedColorArray: TypedVariantTransformable {
    public static let variantStorageType: Variant.ValueType = .packedColorArray
    
    public var variant: Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            self.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_packedColorArray(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public init(typedVariant: Variant) {
        self = typedVariant.uncheckedPackedColorArrayValue
    }
}

import GodotExtensionHeaders

extension Variant {
    public typealias GodotType = RepresentationType
    
    /// The representation type of a variant.
    public enum RepresentationType: Int {
        case `nil`
        case bool
        case uint8
        case uint16
        case uint32
        case uint64
        case int8
        case int16
        case int32
        case int64
        case float
        case double
        case string
        case vector2
        case vector2i
        case rect2
        case rect2i
        case vector3
        case vector3i
        case transform2D
        case vector4
        case vector4i
        case plane
        case quaternion
        case aabb
        case basis
        case transform3D
        case projection
        case color
        case stringName
        case nodePath
        case rid
        case object
        case callable
        case signal
        case dictionary
        case array
        case packedByteArray
        case packedInt32Array
        case packedInt64Array
        case packedFloat32Array
        case packedFloat64Array
        case packedStringArray
        case packedVector2Array
        case packedVector3Array
        case packedColorArray
        
        /// Returns the storage type associated with the representation type.
        ///
        /// For example, the representation type `uint8` will
        /// be stored inside a variant as an `Int`, so
        /// its storage type will be `GDEXTENSION_VARIANT_TYPE_INT`.
        var storageType: GDExtensionVariantType {
            switch self {
            case .nil: GDEXTENSION_VARIANT_TYPE_NIL
            case .bool: GDEXTENSION_VARIANT_TYPE_BOOL
            case .uint8: GDEXTENSION_VARIANT_TYPE_INT
            case .uint16: GDEXTENSION_VARIANT_TYPE_INT
            case .uint32: GDEXTENSION_VARIANT_TYPE_INT
            case .uint64: GDEXTENSION_VARIANT_TYPE_INT
            case .int8: GDEXTENSION_VARIANT_TYPE_INT
            case .int16: GDEXTENSION_VARIANT_TYPE_INT
            case .int32: GDEXTENSION_VARIANT_TYPE_INT
            case .int64: GDEXTENSION_VARIANT_TYPE_INT
            case .float: GDEXTENSION_VARIANT_TYPE_FLOAT
            case .double: GDEXTENSION_VARIANT_TYPE_FLOAT
            case .string: GDEXTENSION_VARIANT_TYPE_STRING
            case .vector2: GDEXTENSION_VARIANT_TYPE_VECTOR2
            case .vector2i: GDEXTENSION_VARIANT_TYPE_VECTOR2I
            case .rect2: GDEXTENSION_VARIANT_TYPE_RECT2
            case .rect2i: GDEXTENSION_VARIANT_TYPE_RECT2I
            case .vector3: GDEXTENSION_VARIANT_TYPE_VECTOR3
            case .vector3i: GDEXTENSION_VARIANT_TYPE_VECTOR3I
            case .transform2D: GDEXTENSION_VARIANT_TYPE_TRANSFORM2D
            case .vector4: GDEXTENSION_VARIANT_TYPE_VECTOR4
            case .vector4i: GDEXTENSION_VARIANT_TYPE_VECTOR4I
            case .plane: GDEXTENSION_VARIANT_TYPE_PLANE
            case .quaternion: GDEXTENSION_VARIANT_TYPE_QUATERNION
            case .aabb: GDEXTENSION_VARIANT_TYPE_AABB
            case .basis: GDEXTENSION_VARIANT_TYPE_BASIS
            case .transform3D: GDEXTENSION_VARIANT_TYPE_TRANSFORM3D
            case .projection: GDEXTENSION_VARIANT_TYPE_PROJECTION
            case .color: GDEXTENSION_VARIANT_TYPE_COLOR
            case .stringName: GDEXTENSION_VARIANT_TYPE_STRING_NAME
            case .nodePath: GDEXTENSION_VARIANT_TYPE_NODE_PATH
            case .rid: GDEXTENSION_VARIANT_TYPE_RID
            case .object: GDEXTENSION_VARIANT_TYPE_OBJECT
            case .callable: GDEXTENSION_VARIANT_TYPE_CALLABLE
            case .signal: GDEXTENSION_VARIANT_TYPE_SIGNAL
            case .dictionary: GDEXTENSION_VARIANT_TYPE_DICTIONARY
            case .array: GDEXTENSION_VARIANT_TYPE_ARRAY
            case .packedByteArray: GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY
            case .packedInt32Array: GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY
            case .packedInt64Array: GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY
            case .packedFloat32Array: GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT32_ARRAY
            case .packedFloat64Array: GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY
            case .packedStringArray: GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY
            case .packedVector2Array: GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR2_ARRAY
            case .packedVector3Array: GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY
            case .packedColorArray: GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY
            }
        }
        
        var argumentMetadata: GDExtensionClassMethodArgumentMetadata {
            switch self {
            case .uint8: GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT8
            case .uint16: GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT16
            case .uint32: GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT32
            case .uint64: GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT64
            case .int8: GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT8
            case .int16: GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT16
            case .int32: GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT32
            case .int64: GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT64
            case .float: GDEXTENSION_METHOD_ARGUMENT_METADATA_REAL_IS_FLOAT
            case .double: GDEXTENSION_METHOD_ARGUMENT_METADATA_REAL_IS_DOUBLE
            default: GDEXTENSION_METHOD_ARGUMENT_METADATA_NONE
            }
        }
    }
}

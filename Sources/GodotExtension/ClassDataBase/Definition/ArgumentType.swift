import Foundation
import GodotExtensionHeaders

public enum ArgumentType {
    
    // MARK: Atomic types
    
    case bool
    
    case int8
    case int16
    case int32
    case int64
    
    case uInt8
    case uInt16
    case uInt32
    case uInt64
    
    case float
    case double
    
    case string
    
    // MARK: Math types
    
    case vector2
    case vector2i
    case rect2
    case rect2i
    case vector3
    case vector3i
    case transform2d
    case vector4
    case vector4i
    case plane
    case quaternion
    case axisAlignedBoundingBox
    case basis
    case transform3d
    case projection
    
    // MARK: Misc types
    
    case color
    case stringName
    case nodePath
    case rid
    case object
    case callable
    case signal
    case dictionary
    case array
    
    // MARK: Types arrays
    
    case packedByteArray
    case packedInt32Array
    case packedInt64Array
    case packedFloat32Array
    case packedFloat64Array
    case packedStringArray
    case packedVector2Array
    case packedVector3Array
    case packedColorArray

}

// MARK: - Variant type

extension ArgumentType {
    var variantType: GDNativeVariantType {
        switch self {
        case .bool: return GDNATIVE_VARIANT_TYPE_BOOL
        case .int8, .int16, .int32, .int64, .uInt8, .uInt16, .uInt32, .uInt64: return GDNATIVE_VARIANT_TYPE_INT
        case .float, .double: return GDNATIVE_VARIANT_TYPE_FLOAT
        case .string: return GDNATIVE_VARIANT_TYPE_STRING
        case .vector2: return GDNATIVE_VARIANT_TYPE_VECTOR2
        case .vector2i: return GDNATIVE_VARIANT_TYPE_VECTOR2I
        case .rect2: return GDNATIVE_VARIANT_TYPE_RECT2
        case .rect2i: return GDNATIVE_VARIANT_TYPE_RECT2I
        case .vector3: return GDNATIVE_VARIANT_TYPE_VECTOR3
        case .vector3i: return GDNATIVE_VARIANT_TYPE_VECTOR3I
        case .transform2d: return GDNATIVE_VARIANT_TYPE_TRANSFORM2D
        case .vector4: return GDNATIVE_VARIANT_TYPE_VECTOR4
        case .vector4i: return GDNATIVE_VARIANT_TYPE_VECTOR4I
        case .plane: return GDNATIVE_VARIANT_TYPE_PLANE
        case .quaternion: return GDNATIVE_VARIANT_TYPE_QUATERNION
        case .axisAlignedBoundingBox: return GDNATIVE_VARIANT_TYPE_AABB
        case .basis: return GDNATIVE_VARIANT_TYPE_BASIS
        case .transform3d: return GDNATIVE_VARIANT_TYPE_TRANSFORM3D
        case .projection: return GDNATIVE_VARIANT_TYPE_PROJECTION
        case .color: return GDNATIVE_VARIANT_TYPE_COLOR
        case .stringName: return GDNATIVE_VARIANT_TYPE_STRING_NAME
        case .nodePath: return GDNATIVE_VARIANT_TYPE_NODE_PATH
        case .rid: return GDNATIVE_VARIANT_TYPE_RID
        case .object: return GDNATIVE_VARIANT_TYPE_OBJECT
        case .callable: return GDNATIVE_VARIANT_TYPE_CALLABLE
        case .signal: return GDNATIVE_VARIANT_TYPE_SIGNAL
        case .dictionary: return GDNATIVE_VARIANT_TYPE_DICTIONARY
        case .array: return GDNATIVE_VARIANT_TYPE_ARRAY
        case .packedByteArray: return GDNATIVE_VARIANT_TYPE_PACKED_BYTE_ARRAY
        case .packedInt32Array: return GDNATIVE_VARIANT_TYPE_PACKED_INT32_ARRAY
        case .packedInt64Array: return GDNATIVE_VARIANT_TYPE_PACKED_INT64_ARRAY
        case .packedFloat32Array: return GDNATIVE_VARIANT_TYPE_PACKED_FLOAT32_ARRAY
        case .packedFloat64Array: return GDNATIVE_VARIANT_TYPE_PACKED_FLOAT64_ARRAY
        case .packedStringArray: return GDNATIVE_VARIANT_TYPE_PACKED_STRING_ARRAY
        case .packedVector2Array: return GDNATIVE_VARIANT_TYPE_PACKED_VECTOR2_ARRAY
        case .packedVector3Array: return GDNATIVE_VARIANT_TYPE_PACKED_VECTOR3_ARRAY
        case .packedColorArray: return GDNATIVE_VARIANT_TYPE_PACKED_COLOR_ARRAY
        }
    }
}

extension Optional where Wrapped == ArgumentType {
    var variantType: GDNativeVariantType {
        self?.variantType ?? GDNATIVE_VARIANT_TYPE_NIL
    }
}

// MARK: - Meta data

extension ArgumentType {
    var metaData: GDNativeExtensionClassMethodArgumentMetadata {
        switch self {
        case .int8: return GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT8
        case .int16: return GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT16
        case .int32: return GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT32
        case .int64: return GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT64
        case .uInt8: return GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT8
        case .uInt16: return GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT16
        case .uInt32: return GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT32
        case .uInt64: return GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT64
        case .float: return GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_REAL_IS_FLOAT
        case .double: return GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_REAL_IS_DOUBLE
        default: return GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_NONE
        }
    }
}

extension Optional where Wrapped == ArgumentType {
    var metaData: GDNativeExtensionClassMethodArgumentMetadata {
        self?.metaData ?? GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_NONE
    }
}

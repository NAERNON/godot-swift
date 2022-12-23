import Foundation
import GodotExtensionHeaders

extension Variant {
    public enum ValueType: UInt32 {
        case `nil`               = 0
        case bool                = 1
        case int                 = 2
        case float               = 3
        case string              = 4
        case vector2             = 5
        case vector2i            = 6
        case rect2               = 7
        case rect2i              = 8
        case vector3             = 9
        case vector3i            = 10
        case transform2D         = 11
        case vector4             = 12
        case vector4i            = 13
        case plane               = 14
        case quaternion          = 15
        case aabb                = 16
        case basis               = 17
        case transform3D         = 18
        case projection          = 19
        case color               = 20
        case stringName          = 21
        case nodePath            = 22
        case rid                 = 23
        case object              = 24
        case callable            = 25
        case signal              = 26
        case dictionary          = 27
        case array               = 28
        case packedByteArray     = 29
        case packedInt32Array    = 30
        case packedInt64Array    = 31
        case packedFloat32Array  = 32
        case packedFloat64Array  = 33
        case packedStringArray   = 34
        case packedVector2Array  = 35
        case packedVector3Array  = 36
        case packedColorArray    = 37
    }
}

// MARK: - Godot type

extension Variant.ValueType {
    init(godotType: GDNativeVariantType) {
        switch godotType {
        case GDNATIVE_VARIANT_TYPE_NIL: self = .nil
        case GDNATIVE_VARIANT_TYPE_BOOL: self = .bool
        case GDNATIVE_VARIANT_TYPE_INT: self = .int
        case GDNATIVE_VARIANT_TYPE_FLOAT: self = .float
        case GDNATIVE_VARIANT_TYPE_STRING: self = .string
        case GDNATIVE_VARIANT_TYPE_VECTOR2: self = .vector2
        case GDNATIVE_VARIANT_TYPE_VECTOR2I: self = .vector2i
        case GDNATIVE_VARIANT_TYPE_RECT2: self = .rect2
        case GDNATIVE_VARIANT_TYPE_RECT2I: self = .rect2i
        case GDNATIVE_VARIANT_TYPE_VECTOR3: self = .vector3
        case GDNATIVE_VARIANT_TYPE_VECTOR3I: self = .vector3i
        case GDNATIVE_VARIANT_TYPE_TRANSFORM2D: self = .transform2D
        case GDNATIVE_VARIANT_TYPE_VECTOR4: self = .vector4
        case GDNATIVE_VARIANT_TYPE_VECTOR4I: self = .vector4i
        case GDNATIVE_VARIANT_TYPE_PLANE: self = .plane
        case GDNATIVE_VARIANT_TYPE_QUATERNION: self = .quaternion
        case GDNATIVE_VARIANT_TYPE_AABB: self = .aabb
        case GDNATIVE_VARIANT_TYPE_BASIS: self = .basis
        case GDNATIVE_VARIANT_TYPE_TRANSFORM3D: self = .transform3D
        case GDNATIVE_VARIANT_TYPE_PROJECTION: self = .projection
        case GDNATIVE_VARIANT_TYPE_COLOR: self = .color
        case GDNATIVE_VARIANT_TYPE_STRING_NAME: self = .stringName
        case GDNATIVE_VARIANT_TYPE_NODE_PATH: self = .nodePath
        case GDNATIVE_VARIANT_TYPE_RID: self = .rid
        case GDNATIVE_VARIANT_TYPE_OBJECT: self = .object
        case GDNATIVE_VARIANT_TYPE_CALLABLE: self = .callable
        case GDNATIVE_VARIANT_TYPE_SIGNAL: self = .signal
        case GDNATIVE_VARIANT_TYPE_DICTIONARY: self = .dictionary
        case GDNATIVE_VARIANT_TYPE_ARRAY: self = .array
        case GDNATIVE_VARIANT_TYPE_PACKED_BYTE_ARRAY: self = .packedByteArray
        case GDNATIVE_VARIANT_TYPE_PACKED_INT32_ARRAY: self = .packedInt32Array
        case GDNATIVE_VARIANT_TYPE_PACKED_INT64_ARRAY: self = .packedInt64Array
        case GDNATIVE_VARIANT_TYPE_PACKED_FLOAT32_ARRAY: self = .packedFloat32Array
        case GDNATIVE_VARIANT_TYPE_PACKED_FLOAT64_ARRAY: self = .packedFloat64Array
        case GDNATIVE_VARIANT_TYPE_PACKED_STRING_ARRAY: self = .packedStringArray
        case GDNATIVE_VARIANT_TYPE_PACKED_VECTOR2_ARRAY: self = .packedVector2Array
        case GDNATIVE_VARIANT_TYPE_PACKED_VECTOR3_ARRAY: self = .packedVector3Array
        case GDNATIVE_VARIANT_TYPE_PACKED_COLOR_ARRAY: self = .packedColorArray
        default: fatalError("Cannot retreive Variant type from GDNativeVariantType")
        }
    }
    
    var godotType: GDNativeVariantType {
        switch self {
        case .nil: return GDNATIVE_VARIANT_TYPE_NIL
        case .bool: return GDNATIVE_VARIANT_TYPE_BOOL
        case .int: return GDNATIVE_VARIANT_TYPE_INT
        case .float: return GDNATIVE_VARIANT_TYPE_FLOAT
        case .string: return GDNATIVE_VARIANT_TYPE_STRING
        case .vector2: return GDNATIVE_VARIANT_TYPE_VECTOR2
        case .vector2i: return GDNATIVE_VARIANT_TYPE_VECTOR2I
        case .rect2: return GDNATIVE_VARIANT_TYPE_RECT2
        case .rect2i: return GDNATIVE_VARIANT_TYPE_RECT2I
        case .vector3: return GDNATIVE_VARIANT_TYPE_VECTOR3
        case .vector3i: return GDNATIVE_VARIANT_TYPE_VECTOR3I
        case .transform2D: return GDNATIVE_VARIANT_TYPE_TRANSFORM2D
        case .vector4: return GDNATIVE_VARIANT_TYPE_VECTOR4
        case .vector4i: return GDNATIVE_VARIANT_TYPE_VECTOR4I
        case .plane: return GDNATIVE_VARIANT_TYPE_PLANE
        case .quaternion: return GDNATIVE_VARIANT_TYPE_QUATERNION
        case .aabb: return GDNATIVE_VARIANT_TYPE_AABB
        case .basis: return GDNATIVE_VARIANT_TYPE_BASIS
        case .transform3D: return GDNATIVE_VARIANT_TYPE_TRANSFORM3D
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

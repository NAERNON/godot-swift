import Foundation

extension ExtensionApi.BuiltinClass {
    var godotVariantType: String {
        switch name {
        case "Nil": return "GDNATIVE_VARIANT_TYPE_NIL"
        case "bool": return "GDNATIVE_VARIANT_TYPE_BOOL"
        case "int": return "GDNATIVE_VARIANT_TYPE_INT"
        case "float": return "GDNATIVE_VARIANT_TYPE_FLOAT"
        case "String": return "GDNATIVE_VARIANT_TYPE_STRING"
        case "Vector2": return "GDNATIVE_VARIANT_TYPE_VECTOR2"
        case "Vector2i": return "GDNATIVE_VARIANT_TYPE_VECTOR2I"
        case "Rect2": return "GDNATIVE_VARIANT_TYPE_RECT2"
        case "Rect2i": return "GDNATIVE_VARIANT_TYPE_RECT2I"
        case "Vector3": return "GDNATIVE_VARIANT_TYPE_VECTOR3"
        case "Vector3i": return "GDNATIVE_VARIANT_TYPE_VECTOR3I"
        case "Transform2D": return "GDNATIVE_VARIANT_TYPE_TRANSFORM2D"
        case "Vector4": return "GDNATIVE_VARIANT_TYPE_VECTOR4"
        case "Vector4i": return "GDNATIVE_VARIANT_TYPE_VECTOR4I"
        case "Plane": return "GDNATIVE_VARIANT_TYPE_PLANE"
        case "Quaternion": return "GDNATIVE_VARIANT_TYPE_QUATERNION"
        case "AABB": return "GDNATIVE_VARIANT_TYPE_AABB"
        case "Basis": return "GDNATIVE_VARIANT_TYPE_BASIS"
        case "Transform3D": return "GDNATIVE_VARIANT_TYPE_TRANSFORM3D"
        case "Projection": return "GDNATIVE_VARIANT_TYPE_PROJECTION"
        case "Color": return "GDNATIVE_VARIANT_TYPE_COLOR"
        case "StringName": return "GDNATIVE_VARIANT_TYPE_STRING_NAME"
        case "NodePath": return "GDNATIVE_VARIANT_TYPE_NODE_PATH"
        case "RID": return "GDNATIVE_VARIANT_TYPE_RID"
        case "Object": return "GDNATIVE_VARIANT_TYPE_OBJECT"
        case "Callable": return "GDNATIVE_VARIANT_TYPE_CALLABLE"
        case "Signal": return "GDNATIVE_VARIANT_TYPE_SIGNAL"
        case "Dictionary": return "GDNATIVE_VARIANT_TYPE_DICTIONARY"
        case "Array": return "GDNATIVE_VARIANT_TYPE_ARRAY"
        case "PackedByteArray": return "GDNATIVE_VARIANT_TYPE_PACKED_BYTE_ARRAY"
        case "PackedInt32Array": return "GDNATIVE_VARIANT_TYPE_PACKED_INT32_ARRAY"
        case "PackedInt64Array": return "GDNATIVE_VARIANT_TYPE_PACKED_INT64_ARRAY"
        case "PackedFloat32Array": return "GDNATIVE_VARIANT_TYPE_PACKED_FLOAT32_ARRAY"
        case "PackedFloat64Array": return "GDNATIVE_VARIANT_TYPE_PACKED_FLOAT64_ARRAY"
        case "PackedStringArray": return "GDNATIVE_VARIANT_TYPE_PACKED_STRING_ARRAY"
        case "PackedVector2Array": return "GDNATIVE_VARIANT_TYPE_PACKED_VECTOR2_ARRAY"
        case "PackedVector3Array": return "GDNATIVE_VARIANT_TYPE_PACKED_VECTOR3_ARRAY"
        case "PackedColorArray": return "GDNATIVE_VARIANT_TYPE_PACKED_COLOR_ARRAY"
        default: fatalError("No variant type provided for \(name)")
        }
    }
}

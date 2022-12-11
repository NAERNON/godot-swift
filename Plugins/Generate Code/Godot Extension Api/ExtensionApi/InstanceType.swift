import Foundation

/// All types in the `ExtensionApi` are `InstanceType`.
/// This type provides helpers functions for translation and more.
struct InstanceType {
    let godotName: String
    
    static let variant = InstanceType(godotName: "Variant")
    
    var isSwiftBaseType: Bool {
        swiftBaseTypes.contains(toSwift())
    }
    
    var isBuiltinValueType: Bool {
        builtinValueTypes.contains(toSwift())
    }
    
    var isValueType: Bool {
        isSwiftBaseType || isBuiltinValueType
    }
    
    /// Converts this type to a variable name. Ex: `PackedByteArray` becomes `packedByteArray`.
    /// - Parameter scopeType: The scope in which the type is used.
    /// Depending on the scope, the same type could return different types.
    func toVariableName(scopeType: InstanceType? = nil) -> String {
        NamingConvention.pascal.convert(string: toSwift(scopeType: scopeType), to: .camel)
    }
    
    /// Converts a given Godot type to the Swift equivalent.
    ///
    /// For instance, an `int` value would give an `Int` value in Swift.
    /// - Parameter scopeType: The scope in which the type is used.
    /// Depending on the scope, the same type could return different types.
    func toSwift(scopeType: InstanceType? = nil) -> String {
        switch godotName {
        case "float":
            // For Float types, it can be either a Float, a Double or a Real.
            // Double is used for builtin base classes that do use opaque.
            // Float is used for Color.
            // Real is used for all the other types
            guard let scopeType,
                  scopeType.isBuiltinValueType else {
                return "Double"
            }
            
            return scopeType.godotName == "Color" ? "Float" : "Real"
        case "int": return "Int"
        case "bool": return "Bool"
        default: return godotName
        }
    }
    
    /// The godot native variant enum value: `GDNATIVE_VARIANT_TYPE_<type>`.
    var godotVariantType: String {
        switch godotName {
        case "Nil", "Variant": return "GDNATIVE_VARIANT_TYPE_NIL"
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
        default: fatalError("No variant type provided for \"\(godotName)\"")
        }
    }
    
    /// Builtin base types already have a default constructor. This function returns the name of the arguments.
    func builtinBaseConstructorArguments() -> [String] {
        switch godotName {
        case "AABB": return ["position", "size"]
        case "Basis": return ["x", "y", "z"]
        case "Color": return ["r", "g", "b", "a"]
        case "Plane": return ["normal", "d"]
        case "Projection": return ["x", "y", "z", "w"]
        case "Quaternion": return ["x", "y", "z", "w"]
        case "Rect2": return ["position", "size"]
        case "Rect2i": return ["position", "size"]
        case "Transform2D": return ["x", "y", "origin"]
        case "Transform3D": return ["basis", "origin"]
        case "Vector2": return ["x", "y"]
        case "Vector2i": return ["x", "y"]
        case "Vector3": return ["x", "y", "z"]
        case "Vector3i": return ["x", "y", "z"]
        case "Vector4": return ["x", "y", "z", "w"]
        case "Vector4i": return ["x", "y", "z", "w"]
        default: return []
        }
    }
    
    static func == (lhs: InstanceType, rhs: String) -> Bool {
        lhs.godotName == rhs || lhs.toSwift() == rhs
    }
}

extension InstanceType: Decodable {
    init(from decoder: Decoder) throws {
        godotName = try String(from: decoder)
    }
}

extension InstanceType: Equatable {
    static func == (lhs: InstanceType, rhs: InstanceType) -> Bool {
        lhs.godotName == rhs.godotName
    }
}

// MARK: Types

/// The base types defined by Swift.
private let swiftBaseTypes: Set<String> = [
    "Nil",
    "Bool",
    "Int",
    "Float",
    "Double",
    "GDNativeInt",
]

/// The builtin structs defined as value types.
private let builtinValueTypes: Set<String> = [
    "AABB",
    "Basis",
    "Color",
    "Plane",
    "Projection",
    "Quaternion",
    "Rect2",
    "Rect2i",
    "Transform2D",
    "Transform3D",
    "Vector2",
    "Vector2i",
    "Vector3",
    "Vector3i",
    "Vector4",
    "Vector4i",
    "Real",
]

// MARK: Extensions

extension Optional where Wrapped == InstanceType {
    var godotVariantType: String {
        self?.godotVariantType ?? "GDNATIVE_VARIANT_TYPE_NIL"
    }
}

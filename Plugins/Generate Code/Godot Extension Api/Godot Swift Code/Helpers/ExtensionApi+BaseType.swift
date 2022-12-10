import Foundation

private let swiftBaseTypes: Set<String> = [
    "Nil",
    "void",
    "bool",
    "real_t",
    "float",
    "double",
    "int",
    "int8_t",
    "uint8_t",
    "int16_t",
    "uint16_t",
    "int32_t",
    "int64_t",
    "uint32_t",
    "uint64_t",
    "Real",
    "Float",
    "Double",
    "GDNativeInt"
]

private let builtinBaseTypes: Set<String> = [
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
]

private let convertedSwiftBaseType = swiftBaseTypes.map { ExtensionApi.convert(type: $0) }
private let swiftGlobalBaseTypes = swiftBaseTypes.union(convertedSwiftBaseType)

extension ExtensionApi {
    /// Returns true if the type is a fundamental type of Swift.
    /// If so, the Swift type should be used and not a generated one.
    static func isSwiftBaseType(_ type: String) -> Bool {
        swiftGlobalBaseTypes.contains(type)
    }
    
    /// Returns true if the type is a builtin type of Godot that is already inside the Godot target.
    static func isBuiltinBaseType(_ type: String) -> Bool {
        builtinBaseTypes.contains(type)
    }
    
    static func isBaseType(_ type: String) -> Bool {
        isSwiftBaseType(type) || isBuiltinBaseType(type)
    }
}

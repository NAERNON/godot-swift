import Foundation

extension ExtensionApi {
    /// Builtin base types already have a default constructor. This function returns the name of the arguments.
    static func builtinBaseConstructorArguments(forType type: String) -> [String] {
        switch type {
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
}


private let subsetClasses: Set<GodotType> = [
    "Object",
    "RefCounted",
    "RandomNumberGenerator",
    "TextServer",
    "AStar2D",
    "Control",
    "CanvasItem",
    "Node",
    "Node2D",
    "Sprite2D",
    "Shape2D",
    "RectangleShape2D",
    "CollisionObject2D",
    "PhysicsBody2D",
    "RigidBody2D",
    "StaticBody2D",
    "CollisionShape2D",
    "Resource",
    "ResourceLoader",
    "Texture",
    "Texture2D",
    "CompressedTexture2D",
    "Engine",
    "Node3D",
    "VisualInstance3D",
    "GeometryInstance3D",
    "MeshInstance3D",
    "Mesh",
    "PrimitiveMesh",
    "BoxMesh",
    "TorusMesh",
]

extension GodotExtensionAPI {
    /// Returns a new `GodotExtensionAPI` with only a small subset of classes.
    func subset() -> GodotExtensionAPI {
        filter { classType in
            subsetClasses.contains(classType) ||
            classType.syntax().hasPrefix("Input")
        }
    }
}

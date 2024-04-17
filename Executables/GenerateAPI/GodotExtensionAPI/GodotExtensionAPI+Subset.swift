
private let subsetClasses: Set<GodotType> = [
    .base("Object"),
    .base("RefCounted"),
    .base("RandomNumberGenerator"),
    .base("TextServer"),
    .base("AStar2D"),
    .base("Control"),
    .base("CanvasItem"),
    .base("Node"),
    .base("Node2D"),
    .base("Sprite2D"),
    .base("Shape2D"),
    .base("RectangleShape2D"),
    .base("CollisionObject2D"),
    .base("PhysicsBody2D"),
    .base("RigidBody2D"),
    .base("StaticBody2D"),
    .base("CollisionShape2D"),
    .base("Resource"),
    .base("ResourceLoader"),
    .base("Texture"),
    .base("Texture2D"),
    .base("CompressedTexture2D"),
    .base("Engine"),
    .base("Node3D"),
    .base("VisualInstance3D"),
    .base("GeometryInstance3D"),
    .base("MeshInstance3D"),
    .base("Mesh"),
    .base("PrimitiveMesh"),
    .base("BoxMesh"),
    .base("TorusMesh"),
    .base("JSON"),
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

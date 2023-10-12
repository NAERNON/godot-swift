
/// Returns a Resource from the filesystem located at the absolute path.
///
/// - Parameters:
///   - path: The absolute path of the resource.
///   - type: The type of resource to load.
///
/// The load function infers the resource type so you don't
/// have to specify it.
/// In the following example, the `texture` property
/// is of type `Texture2D` and the load function
/// infers the resource type:
///
/// ```swift
/// // self.texture is a Texture2D
/// self.texture = load("res://images/sprite.png")
/// ```
///
/// When the type could not be inferred, use the `type` parameter:
///
/// ```swift
/// // resource is a Resource (default behavior)
/// let resource = load("res://images/sprite.png")
///
/// // texture is a Texture2D
/// let texture = load("res://images/sprite.png", as: Texture2D.self)
/// ```
///
/// ## See Also
///
/// - ``ResourceLoader``
///
public func load<Data>(
    _ path: GodotString,
    as type: Data.Type = Data.self
) -> Data? where Data : Resource {
    ResourceLoader.shared.load(path: path) as? Data
}

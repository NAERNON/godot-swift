
/// A representation of a Godot argument.
///
/// It can be decoded from the `extension_api.json` file.
struct GodotArgument: Decodable {
    var name: String
    var type: GodotType
    var meta: String?
    var defaultValue: GodotConstant?
}

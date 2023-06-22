
/// A representation of a Godot singleton.
///
/// It can be decoded from the `extension_api.json` file.
struct GodotSingleton: Decodable {
    var name: String
    var type: GodotType
}

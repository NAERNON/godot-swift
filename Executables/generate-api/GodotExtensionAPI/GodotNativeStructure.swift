
/// A representation of a Godot native structure.
///
/// It can be decoded from the `extension_api.json` file.
struct GodotNativeStructure: Decodable {
    var name: String
//    var format: NativeStructureFormat // TODO: Add this
}

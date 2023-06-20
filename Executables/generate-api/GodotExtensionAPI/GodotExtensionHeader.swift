
/// A representation of a Godot extension header.
///
/// It can be decoded from the `extension_api.json` file.
struct GodotExtensionHeader: Decodable {
    var versionMajor: Int
    var versionMinor: Int
    var versionPatch: Int
    var versionStatus: String
    var versionBuild: String
    var versionFullName: String
}

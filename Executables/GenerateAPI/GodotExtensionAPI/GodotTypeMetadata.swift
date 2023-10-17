
/// A representation of a Godot type metadata.
///
/// It can be decoded from the `extension_api.json` file.
enum GodotTypeMetadata: String, Decodable {
    case int8
    case int16
    case int32
    case int64
    case uint8
    case uint16
    case uint32
    case uint64
    case float
    case double
}

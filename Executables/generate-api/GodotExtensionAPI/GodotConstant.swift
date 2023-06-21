
/// A representation of a Godot constant.
///
/// It can be decoded from the `extension_api.json` file.
///
/// A constant is a type expression such as "`Vector2(a, b)`".
struct GodotConstant: Decodable, Equatable {
    /// The constant `String` such as `"Vector2(a, b)"`.
    let string: String
    
    static let `nil` = GodotConstant(string: "null")
    
    // MARK: Init
    
    init(string: String) {
        self.string = string
    }
    
    init(from decoder: Decoder) throws {
        string = try String(from: decoder)
    }
    
    // MARK: Syntax
    
    func syntax() -> String {
        string
    }
}

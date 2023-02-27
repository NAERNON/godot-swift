import Foundation

/// A constant used in the `ExtensionApi` type.
///
/// Types such as `Vector2` are initialized with the code **`Vector2(a, b)`** in Godot.
/// But in Swift, we need to use default initializers and convert this code to **`Vector2(x: a, y: b)`**.
struct ConstantValue {
    /// The constant `String` such as `"Vector2(a, b)"`.
    let string: String
    
    init(string: String) {
        self.string = string
    }
    
    var isNil: Bool {
        string == "null"
    }
}

extension ConstantValue: Decodable {
    init(from decoder: Decoder) throws {
        string = try String(from: decoder)
    }
}

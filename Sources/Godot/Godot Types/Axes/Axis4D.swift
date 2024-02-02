
/// A dimension in a 4D coordinate system.
///
/// The `rawValue` of this enum corresponds to the vector index:
///
/// ```swift
/// let vector: Vector4 = Vector4(1, 3, 6, 9)
/// print(vector[Axis4D.x.rawValue])
/// // Prints "1"
/// ```
///
/// Axis subscripts are also available on all vectors:
///
/// ```swift
/// let vector: Vector4 = Vector4(1, 3, 6, 9)
/// print(vector[axis: .x])
/// // Prints "1"
/// ```
public enum Axis4D: Int, GodotEnum {
    case x = 0
    case y = 1
    case z = 2
    case w = 3
    public static func hintValues() -> [(name: String, value: RawValue)] {
        [
            ("X", 0),
            ("Y", 1),
            ("Z", 2),
            ("W", 3),
        ]
    }
}

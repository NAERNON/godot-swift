
/// A dimension in a 2D coordinate system.
///
/// The `rawValue` of this enum corresponds to the vector index:
///
/// ```swift
/// let vector: Vector2 = Vector2(1, 3)
/// print(vector[Axis2D.x.rawValue])
/// // Prints "1"
/// ```
///
/// Axis subscripts are also available on all vectors:
///
/// ```swift
/// let vector: Vector2 = Vector2(1, 3)
/// print(vector[axis: .x])
/// // Prints "1"
/// ```
public enum Axis2D: Int, GodotEnum {
    case x = 0
    case y = 1
    public static func hintValues() -> [(name: String, value: RawValue)] {
        [
            ("X", 0),
            ("Y", 1),
        ]
    }
    
    /// The unit vector representing the axis.
    public var unitVector: Vector2 {
        switch self {
        case .x:
            Vector2(1, 0)
        case .y:
            Vector2(0, 1)
        }
    }
}

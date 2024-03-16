
/// A dimension in a 3D coordinate system.
///
/// The `rawValue` of this enum corresponds to the vector index:
///
/// ```swift
/// let vector: Vector3 = Vector3(1, 3, 6)
/// print(vector[Axis3D.x.rawValue])
/// // Prints "1"
/// ```
///
/// Axis subscripts are also available on all vectors:
///
/// ```swift
/// let vector: Vector3 = Vector3(1, 3, 6)
/// print(vector[axis: .x])
/// // Prints "1"
/// ```
public enum Axis3D: Int, GodotEnum {
    case x = 0
    case y = 1
    case z = 2
    public static func hintValues() -> [(name: String, value: RawValue)] {
        [
            ("X", 0),
            ("Y", 1),
            ("Z", 2),
        ]
    }
    
    /// The unit vector representing the axis.
    public var unitVector: Vector3 {
        switch self {
        case .x:
            Vector3(1, 0, 0)
        case .y:
            Vector3(0, 1, 0)
        case .z:
            Vector3(0, 0, 1)
        }
    }
}

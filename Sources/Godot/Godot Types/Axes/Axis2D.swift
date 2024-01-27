
/// A dimension in a 2D coordinate system.
public enum Axis2D: UInt32, GodotEnum {
    case x = 0
    case y = 1
    public static func hintValues() -> [(name: String, value: RawValue)] {
        [
            ("X", 0),
            ("Y", 1),
        ]
    }
}


/// A dimension in a 3D coordinate system.
public enum Axis3D: UInt32, GodotEnum {
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
}

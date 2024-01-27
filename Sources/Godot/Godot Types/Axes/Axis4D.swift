
/// A dimension in a 4D coordinate system.
public enum Axis4D: UInt32, GodotEnum {
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

import GodotExtensionHeaders

extension GDExtensionBool {
    init(_ boolValue: Bool) {
        if boolValue {
            self = 1
        } else {
            self = 0
        }
    }
}


extension Hint {
    /// Removes any Godot editor hint.
    internal static var none: Hint {
        .init(
            propertyHint: .none,
            string: .init()
        )
    }
}

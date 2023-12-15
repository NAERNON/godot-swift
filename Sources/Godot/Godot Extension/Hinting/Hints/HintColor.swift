
extension Hint where Value == Color {
    /// Hints that a color property should be edited
    /// without changing its alpha component,
    /// i.e. only R, G and B channels are edited.
    public static var noAlpha: Hint {
        .init(propertyHint: .colorNoAlpha, string: GodotString())
    }
}

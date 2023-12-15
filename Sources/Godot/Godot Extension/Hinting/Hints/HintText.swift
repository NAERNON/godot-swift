
extension Hint where Value : Collection<Character> {
    /// Hints that a string property is text with line breaks.
    /// Editing it will show a text input field where line breaks can be typed.
    public static var multiline: Hint {
        .init(propertyHint: .multilineText, string: GodotString())
    }
    
    /// Hints that a string property should have a placeholder
    /// text visible on its input field, whenever the property is empty.
    public static func placeholder(_ text: String) -> Hint {
        .init(
            propertyHint: .placeholderText,
            string: GodotString(swiftString: text)
        )
    }
}

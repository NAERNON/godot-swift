
extension Hint where Value : Exposable {
    /// Hints that an integer property
    /// should be within a given range.
    public static var typed: Hint {
        self.init(
            propertyHint: .typeString,
            string: GodotString(String(
                Value.variantRepresentationType.storageType.rawValue
            ))
        )
    }
}


extension Hint where Value : Node {
    /// Hints that a property is a node.
    /// Editing it will show a popup menu of available nodes.
    public static var node: Hint {
        .init(propertyHint: .nodeType, string: GodotString())
    }
}

extension Hint where Value : Resource {
    /// Hints that a property is an instance of a `Resource` type.
    /// Editing it will show a popup menu of valid resource types to instantiate.
    public static var resource: Hint {
        .init(
            propertyHint: .resourceType,
            string: GodotString(stringName: Value.lastDerivedExposedClassName)
        )
    }
}

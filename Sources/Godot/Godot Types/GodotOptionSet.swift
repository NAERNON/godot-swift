
/// An option set usable by Godot.
///
/// Do not declare `GodotOptionSet` conformances yourself.
/// Use the ``GodotOptionSet()`` macro instead.
public protocol GodotOptionSet: Hintable, ExposableRawRepresentable, OptionSet
where RawValue : FixedWidthInteger
{
    /// Returns the name and values used for hinting
    /// in the Godot editor.
    static func hintValues() -> [(name: String, value: RawValue)]
}

extension GodotOptionSet {
    public static var defaultHint: Hint<Self> {
        .optionSet
    }
}

// MARK: - Macro

/// Converts a Swift struct into an option set usable by Godot.
@attached(extension, conformances: GodotOptionSet, names:
    named(RawValue),
    named(godotExposableValues),
    named(hintValues)
)
public macro GodotOptionSet() = #externalMacro(module: "GodotMacros", type: "GodotOptionSetMacro")

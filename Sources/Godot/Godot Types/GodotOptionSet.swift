
/// An option set usable by Godot.
///
/// Do not declare `GodotOptionSet` conformances yourself.
/// Use the ``GodotOptionSet()`` macro instead.
public protocol GodotOptionSet: OptionSet where RawValue : FixedWidthInteger {
    /// Returns the name and values used for hinting
    /// in the Godot editor.
    static func hintValues() -> [(name: String, value: RawValue)]
}

// MARK: - Macro

/// Converts a Swift struct into an option set usable by Godot.
@attached(extension, conformances: GodotOptionSet, ExposableValue, names:
    named(variantRepresentationType),
    named(convertToStorage),
    named(convertFromCheckedStorage),
    named(convertFromStorage),
    named(godotExposableValues),
    named(hintValues)
)
@attached(member, names:
    named(RawValue)
)
public macro GodotOptionSet() = #externalMacro(module: "GodotMacros", type: "GodotOptionSetMacro")

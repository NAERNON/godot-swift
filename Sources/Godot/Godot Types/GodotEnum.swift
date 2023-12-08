
/// An enum usable by Godot.
///
/// Do not declare `GodotEnum` conformances yourself.
/// Use ``GodotEnum()`` macro instead.
public protocol GodotEnum: RawRepresentable where RawValue : FixedWidthInteger {
    /// Returns the name and values used for hinting
    /// in the Godot editor.
    static func hintValues() -> [(name: String, value: RawValue)]
}

// MARK: - Macro

/// Converts a Swift enum into an enum usable by Godot.
@attached(extension, conformances: GodotEnum, ExposableValue, names:
    named(variantRepresentationType),
    named(convertToStorage),
    named(convertFromCheckedStorage),
    named(convertFromStorage),
    named(godotExposableValues),
    named(hintValues)
)
public macro GodotEnum() = #externalMacro(module: "GodotMacros", type: "GodotEnumMacro")

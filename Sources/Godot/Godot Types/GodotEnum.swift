
/// An enum usable by Godot.
///
/// Do not declare `GodotEnum` conformances yourself.
/// Use the ``GodotEnum()`` macro instead.
public protocol GodotEnum: Hintable, ExposableRawRepresentable
where RawValue : FixedWidthInteger
{
    /// Returns the name and values used for hinting
    /// in the Godot editor.
    static func hintValues() -> [(name: String, value: RawValue)]
}

extension GodotEnum {
    public static var defaultHint: Hint<Self> {
        .enum
    }
}

// MARK: - Macro

/// Converts a Swift enum into an enum usable by Godot.
@attached(extension, conformances: GodotEnum, names:
    named(RawValue),
    named(godotExposableValues),
    named(hintValues)
)
public macro GodotEnum() = #externalMacro(module: "GodotMacros", type: "GodotEnumMacro")

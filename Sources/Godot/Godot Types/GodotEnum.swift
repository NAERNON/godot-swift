
/// An enum usable by Godot.
///
/// Do not declare `GodotEnum` conformances yourself.
/// Use ``GodotEnum()`` macro instead.
public protocol GodotEnum: RawRepresentable {
    /// Returns the name and values used for hinting
    /// in the Godot editor.
    static func hintValues() -> [(name: String, value: RawValue)]
}

// MARK: - Macro

/// Converts a Swift enum into an enum usable by Godot.
@attached(extension, conformances: VariantConvertible, GodotEnum, names:
    named(variantType),
    named(makeVariant),
    named(fromCompatibleVariant),
    named(fromVariant),
    named(godotExposableValues),
    named(hintValues)
)
public macro GodotEnum() = #externalMacro(module: "GodotMacros", type: "GodotEnumMacro")

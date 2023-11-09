
/// An option set usable by Godot.
///
/// Do not declare `GodotOptionSet` conformances yourself.
/// Use ``GodotOptionSet()`` macro instead.
public protocol GodotOptionSet: OptionSet {
    /// Returns the name and values used for hinting
    /// in the Godot editor.
    static func hintValues() -> [(name: String, value: RawValue)]
}

// MARK: - Macro

/// Converts a Swift struct into an option set usable by Godot.
@attached(extension, conformances: GodotOptionSet, VariantConvertible, names:
    named(variantType),
    named(makeVariant),
    named(fromCompatibleVariant),
    named(fromVariant),
    named(godotExposableValues),
    named(hintValues)
)
@attached(member, names:
    named(RawValue),
    named(rawValue),
    named(init)
)
public macro GodotOptionSet() = #externalMacro(module: "GodotMacros", type: "GodotOptionSetMacro")

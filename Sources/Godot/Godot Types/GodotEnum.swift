
/// An enum usable by Godot.
///
/// Do not declare `GodotEnum` conformances yourself.
/// Use the ``GodotEnum()`` macro instead.
public protocol GodotEnum: HintableValue, ExposableRawRepresentableValue
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

internal extension GodotEnum {
    func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafePointer(to: self) { try body($0) }
    }
    
    mutating func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafeMutablePointer(to: &self) { try body($0) }
    }
    
    static func fromMutatingGodotUnsafePointer(_ body: (UnsafeMutableRawPointer) -> Void) -> Self {
        var value = RawValue()
        withUnsafeMutablePointer(to: &value) { body($0) }
        return .init(rawValue: value)!
    }
}

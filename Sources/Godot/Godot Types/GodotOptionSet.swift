
/// An option set usable by Godot.
///
/// Do not declare `GodotOptionSet` conformances yourself.
/// Use the ``GodotOptionSet()`` macro instead.
public protocol GodotOptionSet: ExposableRawRepresentableValue, OptionSet where RawValue : FixedWidthInteger {
    /// Returns the name and values used for hinting
    /// in the Godot editor.
    static func hintValues() -> [(name: String, value: RawValue)]
}

// MARK: - Macro

/// Converts a Swift struct into an option set usable by Godot.
@attached(extension, conformances: GodotOptionSet, names:
    named(RawValue),
    named(godotExposableValues),
    named(hintValues)
)
public macro GodotOptionSet() = #externalMacro(module: "GodotMacros", type: "GodotOptionSetMacro")

internal extension GodotOptionSet {
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
        return .init(rawValue: value)
    }
}

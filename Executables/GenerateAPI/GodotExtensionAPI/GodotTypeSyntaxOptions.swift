import Foundation

/// Options for ``GodotType`` syntax generation.
struct GodotTypeSyntaxOptions: OptionSet {
    let rawValue: Int
    
    /// A `float` is translated to `Double`.
    static let floatAsDouble   = GodotTypeSyntaxOptions(rawValue: 1 << 0)
    /// A `float` is translated to `Real`.
    static let floatAsReal     = GodotTypeSyntaxOptions(rawValue: 1 << 1)
    /// All types are immutable.
    static let immutable       = GodotTypeSyntaxOptions(rawValue: 1 << 2)
    /// The type is prefixed by the Godot namespace if it is a Godot type
    /// at the root of the Godot target.
    static let prefixByGodot   = GodotTypeSyntaxOptions(rawValue: 1 << 3)
    /// All Godot classes are marked optional.
    static let optionalClasses = GodotTypeSyntaxOptions(rawValue: 1 << 4)
    /// All types named "Typed" are named "StorageType"
    /// instead of "GodotType".
    static let typeIsStorageType = GodotTypeSyntaxOptions(rawValue: 1 << 5)
}

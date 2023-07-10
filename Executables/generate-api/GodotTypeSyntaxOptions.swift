import Foundation

/// Options for ``GodotType`` syntax generation.
struct GodotTypeSyntaxOptions: OptionSet {
    let rawValue: Int
    
    /// A `float` is translated to `Double`.
    static let floatAsDouble  = GodotTypeSyntaxOptions(rawValue: 1 << 0)
    /// A `float` is translated to `Real`.
    static let floatAsReal    = GodotTypeSyntaxOptions(rawValue: 1 << 1)
    /// All types are immutable.
    static let immutable        = GodotTypeSyntaxOptions(rawValue: 1 << 2)
}
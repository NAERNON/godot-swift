import Foundation

/// Options to generate syntax.
struct GodotSyntaxOptions: OptionSet {
    let rawValue: Int
    
    /// A `float` is translated to `Double`.
    static let floatAsDouble  = GodotSyntaxOptions(rawValue: 1 << 0)
    /// A `float` is translated to `Real`.
    static let floatAsReal    = GodotSyntaxOptions(rawValue: 1 << 1)
    /// All types are immutable.
    static let immutable        = GodotSyntaxOptions(rawValue: 1 << 2)
}

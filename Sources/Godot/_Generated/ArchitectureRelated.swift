//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

extension Variant {
    internal static let opaqueSize: Int = 24
}

/// A floating-point value type that depends on the Godot build configuration.
///
/// This typealias represents either a `Float` or a `Double`,
/// depending on the build configuration.
///
/// > important: Generating the APIs with a different build configuration might
/// change the `Scalar` type and break related code.
public typealias Scalar = Float

extension Int {
    public static let variantRepresentationType: Variant.RepresentationType = .int64
}

extension UInt {
    public static let variantRepresentationType: Variant.RepresentationType = .uint64
}


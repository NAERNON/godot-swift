
/// A type that enables its `SIMD` storage to be `VariantStorable`
///
/// Do not declare conformances to this protocol yourself.
public protocol VariantSIMDStorableScalar: SIMDScalar, Codable, Hashable {
    // SIMD2
    
    /// Returns a variant storage representing the given `SIMD2Storage`.
    static func convertSIMD2ToStorage(_ value: consuming SIMD2<Self>) -> Variant.Storage
    
    /// Converts a variant storage into an instance of the `SIMD2Storage`.
    static func convertSIMD2FromCheckedStorage(_ storage: borrowing Variant.Storage) -> SIMD2<Self>
    
    /// The variant representation type this `SIMD2Storage` type is converted to.
    static var variantSIMD2RepresentationType: Variant.RepresentationType { get }
    
    // SIMD3
    
    /// Returns a variant storage representing the given `SIMD3Storage`.
    static func convertSIMD3ToStorage(_ value: consuming SIMD3<Self>) -> Variant.Storage
    
    /// Converts a variant storage into an instance of the `SIMD3Storage`.
    static func convertSIMD3FromCheckedStorage(_ storage: borrowing Variant.Storage) -> SIMD3<Self>
    
    /// The variant representation type this `SIMD3Storage` type is converted to.
    static var variantSIMD3RepresentationType: Variant.RepresentationType { get }
    
    // SIMD4
    
    /// Returns a variant storage representing the given `SIMD4Storage`.
    static func convertSIMD4ToStorage(_ value: consuming SIMD4<Self>) -> Variant.Storage
    
    /// Converts a variant storage into an instance of the `SIMD4Storage`.
    static func convertSIMD4FromCheckedStorage(_ storage: borrowing Variant.Storage) -> SIMD4<Self>
    
    /// The variant representation type this `SIMD4Storage` type is converted to.
    static var variantSIMD4RepresentationType: Variant.RepresentationType { get }
}

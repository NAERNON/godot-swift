
/// A type exposable to the Godot editor.
///
/// Only `ExposableValue` types can be used as
/// exposable variables or function arguments.
public protocol ExposableValue: VariantStorable {
    /// The variant representation type this type
    /// is converted to.
    static var variantRepresentationType: Variant.RepresentationType { get }
}

public extension ExposableValue {
    static var variantStorageType: Variant.StorageType? {
        variantRepresentationType.storageType
    }
    
    static func convertFromStorage(_ storage: borrowing Variant.Storage) throws -> Self {
        try storage.checkIsConvertible(to: variantRepresentationType.storageType)
        
        return convertFromCheckedStorage(storage)
    }
}


/// A type exposable to the Godot editor.
///
/// Only `ExposableValue` types can be used as
/// exposable variables or function arguments.
public protocol ExposableValue: VariantStorable {
    /// The variant representation type this type
    /// is converted to.
    static var variantRepresentationType: Variant.RepresentationType { get }
    
    /// TODO: this
    consuming func copyToGodot(
        unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer
    )
    
    /// Creates or retrieves an instance from a given Godot pointer.
    static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self
}

// MARK: - Default implementation

public extension ExposableValue {
    static var variantStorageType: Variant.StorageType? {
        variantRepresentationType.storageType
    }
    
    static func convertFromStorage(_ storage: borrowing Variant.Storage) throws -> Self {
        try storage.checkIsConvertible(to: variantRepresentationType.storageType)
        
        return convertFromCheckedStorage(storage)
    }
}

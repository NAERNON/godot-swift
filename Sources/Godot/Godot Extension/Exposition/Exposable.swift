
/// A type exposable to the Godot editor.
///
/// Only `Exposable` types can be used as
/// exposable variables or function arguments.
public protocol Exposable: Variant.Storable {
    /// The variant representation type this type
    /// is converted to.
    static var variantRepresentationType: Variant.RepresentationType { get }
    
    /// Creates or retrieves an instance from a given Godot pointer.
    static func transferFromGodot(
        unsafePointer: UnsafeRawPointer?
    ) -> Self
    
    /// Transfers this instance to a given Godot destination.
    ///
    /// If this function is not applied to an object,
    /// it transfers all memory management to Godot.
    ///
    /// >important: If this instance is not an object, do not use,
    /// in any way, this instance after calling this function.
    func transferToGodot(
        unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer
    )
}

// MARK: - Default implementation

extension Exposable {
    public static func convertFromStorage(
        _ storage: borrowing Variant.Storage
    ) throws -> Self {
        try storage.checkIsConvertible(to: variantRepresentationType.storageType)
        
        return convertFromCheckedStorage(storage)
    }
}

// MARK: - Extension

extension Exposable {
    consuming public func transferVariantStorageToGodot(
        unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer
    ) {
        Self.convertToStorage(self).consumeByGodot(
            unsafePointer: destinationUnsafePointer
        )
    }
}

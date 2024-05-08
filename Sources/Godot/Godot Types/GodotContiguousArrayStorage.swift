
// MARK: - GodotContiguousArrayStorageProtocol

public protocol GodotContiguousArrayStorageProtocol: Variant.Storable {
    associatedtype Element: GodotContiguousArrayElement where Element.GodotContiguousArrayStorage == Self
    
    // MARK: Constructors
    
    init()
    
    // MARK: Collection
    
    var size: Int32 { get }
    
    mutating func resize(_ newSize: Int32)
    
    func withUnsafePointer<R>(
        _ body: (UnsafePointer<Element>?) throws -> R
    ) rethrows -> R
    
    mutating func withUnsafeMutablePointer<R>(
        _ body: (UnsafeMutablePointer<Element>?) throws -> R
    ) rethrows -> R
    
    // MARK: Transferring
    
    static var variantRepresentationType: Variant.RepresentationType { get }
    
    static func transferFromGodot(
        unsafePointer: UnsafeRawPointer?
    ) -> Self
    
    func transferToGodot(
        unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer
    )
    
    func withRawTypeUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer) throws -> Result
    ) rethrows -> Result

    mutating func withRawTypeUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result
    
    static func fromInitializingTransferrableRawTypeUnsafeRawPointer(
        _ body: (UnsafeMutableRawPointer) -> Void
    ) -> Self
}

// MARK: - Default Implementation

public extension GodotContiguousArrayStorageProtocol {
    static var variantStorageType: Variant.StorageType? {
        variantRepresentationType.storageType
    }
}

// MARK: - GodotContiguousArrayElement

public protocol GodotContiguousArrayElement {
    associatedtype GodotContiguousArrayStorage : GodotContiguousArrayStorageProtocol where GodotContiguousArrayStorage.Element == Self
}

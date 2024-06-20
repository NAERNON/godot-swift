
// MARK: - GodotContiguousArrayStorageProtocol

/// A contiguous array storage of a given element.
///
/// Do not declare new conformances to `GodotContiguousArrayStorageProtocol`.
/// Only a few Godot types are valid conforming types.
public protocol GodotContiguousArrayStorageProtocol: Exposable {
    associatedtype Element: GodotContiguousArrayElement where Element.GodotContiguousArrayStorage == Self
    
    // MARK: Constructors
    
    /// Creates an empty storage.
    init()
    
    // MARK: Collection
    
    /// The number of elements in this storage.
    var size: Int { get }
    
    /// Modifies the number of elements in this storage.
    mutating func resize(_ newSize: Int)
    
    /// Returns the equivalent of this array as bytes.
    func bytes() -> UInt8.GodotContiguousArrayStorage
    
    /// Calls a closure with a pointer to this storage.
    func withUnsafePointer<R>(
        _ body: (UnsafePointer<Element.GodotContiguousArrayElementSource>?) throws -> R
    ) rethrows -> R
    
    /// Calls a closure with a mutable pointer to this storage.
    mutating func withUnsafeMutablePointer<R>(
        _ body: (UnsafeMutablePointer<Element.GodotContiguousArrayElementSource>?) throws -> R
    ) rethrows -> R
    
    // MARK: Transferring
    
    func withUnsafeOpaquePointer<Result>(
        _ body: (UnsafeRawPointer) throws -> Result
    ) rethrows -> Result
    
    mutating func withUnsafeMutableOpaquePointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result
    
    static func fromInitializingTransferrableRawTypeUnsafeRawPointer(
        _ body: (UnsafeMutableRawPointer) -> Void
    ) -> Self
}

// MARK: - GodotContiguousArrayElement

/// A type that can be used as an element in a `GodotContiguousArray`.
public protocol GodotContiguousArrayElement {
    /// The associated storage.
    associatedtype GodotContiguousArrayStorage : GodotContiguousArrayStorageProtocol where GodotContiguousArrayStorage.Element == Self
    
    /// The representation of this type in a `GodotContiguousArray`.
    associatedtype GodotContiguousArrayElementSource
    
    /// Returns an instance of this type from the corresponding source.
    static func readGodotContiguousArrayValue(
        from source: GodotContiguousArrayElementSource
    ) -> Self
    
    /// Writes an instance of this type into the corresponding source.
    static func writeGodotContiguousArray(
        value: Self,
        to source: inout GodotContiguousArrayElementSource
    )
}

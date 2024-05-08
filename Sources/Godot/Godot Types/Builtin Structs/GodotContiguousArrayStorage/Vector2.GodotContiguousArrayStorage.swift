
extension Vector2: GodotContiguousArrayElement {
    @GodotOpaqueBuiltinClass
    public struct GodotContiguousArrayStorage {
        public static var variantRepresentationType: Variant.RepresentationType {
            .packedVector2Array
        }
    }
}

extension Vector2.GodotContiguousArrayStorage: GodotContiguousArrayStorageProtocol {
    public init() {
        self = Self._make()
    }
    
    // MARK: Copy
    
    internal mutating func withCopiedOpaque() -> Self {
        return self // TODO: This
    }
    
    // MARK: Collection
    
    // TODO: Remove Int32 parsing on ALL functions
    
    public var size: Int32 {
        Int32(_size())
    }
    
    public mutating func resize(_ newSize: Int32) {
        _resize(newSize: Int(newSize))
    }
    
    public func withUnsafePointer<R>(
        _ body: (UnsafePointer<Vector2>?) throws -> R
    ) rethrows -> R {
        try withUnsafeRawBufferPointer { buffer in
            let ptr = GodotExtension.Interface.packedVector2ArrayOperatorIndexConst(
                buffer.baseAddress!,
                0
            )
            
            return try body(ptr?.assumingMemoryBound(to: Vector2.self))
        }
    }
    
    public mutating func withUnsafeMutablePointer<R>(
        _ body: (UnsafeMutablePointer<Vector2>?) throws -> R
    ) rethrows -> R {
        try withUnsafeMutableRawBufferPointer { buffer in
            let ptr = GodotExtension.Interface.packedVector2ArrayOperatorIndex(
                buffer.baseAddress!,
                0
            )
            
            return try body(ptr?.assumingMemoryBound(to: Vector2.self))
        }
    }
    
    // MARK: Variant.Storable
    
    public static func convertToStorage(
        _ value: consuming Self
    ) -> Variant.Storage {
        let storage = Variant.Storage()
        
        storage.withUnsafeMutableRawPointer { storagePtr in
            value.withUnsafeMutableRawPointer { valuePtr in
                fromTypeVariantConstructor(storagePtr, valuePtr)
            }
        }
        
        return storage
    }
    
    public static func convertFromStorage(
        _ storage: borrowing Variant.Storage
    ) throws -> Self {
        try storage.checkIsConvertible(to: variantRepresentationType.storageType)
        
        return convertFromCheckedStorage(storage)
    }
    
    public static func convertFromCheckedStorage(
        _ storage: borrowing Variant.Storage
    ) -> Self {
        var newValue = Self()
        
        storage.withUnsafeMutableRawPointer { storagePtr in
            newValue.withUnsafeMutableRawPointer { newValuePtr in
                toTypeVariantConstructor(newValuePtr, storagePtr)
            }
        }
        
        return newValue
    }
    
    public static func convertFromCheckedStorage(
        consuming storage: consuming Variant.Storage
    ) -> Self {
        convertFromCheckedStorage(storage)
    }
    
    // MARK: Pointer
    
    public func withRawTypeUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafeRawPointer(body)
    }

    public mutating func withRawTypeUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafeMutableRawPointer(body)
    }
    
    public static func fromInitializingTransferrableRawTypeUnsafeRawPointer(
        _ body: (UnsafeMutableRawPointer) -> Void
    ) -> Self {
        let opaque = Self.makeOpaque()
        opaque.withUnsafeMutableRawPointer(body)
        return .init(opaque: opaque)
    }
    
    // MARK: Transfer
    
    public static func transferFromGodot(
        unsafePointer: UnsafeRawPointer?
    ) -> Self {
        let opaque = Self.makeOpaque()
        opaque.withUnsafeMutableRawPointer { opaquePointer in
            opaquePointer.copyMemory(from: unsafePointer!, byteCount: opaque.size)
        }
        return .init(opaque: opaque)
    }
}

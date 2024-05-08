
extension Int64: GodotContiguousArrayElement {
    /// Contiguous array storage of colors 64 bit integers.
    @BuiltinOpaque
    public struct GodotContiguousArrayStorage {
        public typealias Element = Int64
        
        internal mutating func makeUniqueIfSharedOpaque() {
            guard !isKnownUniquelyReferenced(&opaque) else {
                return
            }
            
            self = Self.make(from: self)
        }
    }
    
    public static func readGodotContiguousArrayValue(
        from source: Int64
    ) -> Int64 {
        source
    }
    
    public static func writeGodotContiguousArray(
        value: Int64,
        to source: inout Int64
    ) {
        source = value
    }
}

extension Int64.GodotContiguousArrayStorage: GodotContiguousArrayStorageProtocol {
    public init() {
        self = Self.make()
    }
    
    public var size: Int {
        _size()
    }
    
    public mutating func resize(_ newSize: Int) {
        _resize(newSize: newSize)
    }
    
    public func bytes() -> UInt8.GodotContiguousArrayStorage {
        _toByteArray()
    }
    
    public func withUnsafePointer<R>(
        _ body: (UnsafePointer<Int64>?) throws -> R
    ) rethrows -> R {
        try withUnsafeOpaquePointer { pointer in
            let ptr = GodotExtension.Interface.packedInt64ArrayOperatorIndexConst(
                pointer,
                0
            )
            
            return try body(ptr)
        }
    }
    
    public mutating func withUnsafeMutablePointer<R>(
        _ body: (UnsafeMutablePointer<Int64>?) throws -> R
    ) rethrows -> R {
        makeUniqueIfSharedOpaque()
        
        return try withUnsafeMutableOpaquePointer { pointer in
            let ptr = GodotExtension.Interface.packedInt64ArrayOperatorIndex(
                pointer,
                0
            )
            
            return try body(ptr)
        }
    }
    
    // MARK: Variant.Storable
    
    public static var variantStorageType: Variant.StorageType? {
        .packedInt64Array
    }
    
    public static func convertToStorage(
        _ value: consuming Self
    ) -> Variant.Storage {
        let storage = Variant.Storage()
        
        storage.withUnsafeMutableRawPointer { storagePtr in
            value.withUnsafeMutableOpaquePointer { valuePtr in
                fromTypeVariantConstructor(storagePtr, valuePtr)
            }
        }
        
        return storage
    }
    
    public static func convertFromCheckedStorage(
        _ storage: borrowing Variant.Storage
    ) -> Self {
        var newValue = Self()
        
        storage.withUnsafeMutableRawPointer { storagePtr in
            newValue.withUnsafeMutableOpaquePointer { newValuePtr in
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
        try withUnsafeOpaquePointer(body)
    }

    public mutating func withRawTypeUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafeMutableOpaquePointer(body)
    }
    
    public static func fromInitializingTransferrableRawTypeUnsafeRawPointer(
        _ body: (UnsafeMutableRawPointer) -> Void
    ) -> Self {
        let opaque = Self.makeOpaque()
        opaque.withUnsafeMutableRawPointer(body)
        return .init(opaque: opaque)
    }
    
    // MARK: Exposable
    
    public static var variantRepresentationType: Variant.RepresentationType {
        .packedInt64Array
    }
    
    public consuming func transferToGodot(
        unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer
    ) {
        withUnsafeOpaquePointer { selfPtr in
            withUnsafeArgumentPackPointer(selfPtr) { accessPtr in
                Int64GodotContiguousArrayStorageBindings
                    .constructorFromGodotContiguousArrayInt64(destinationUnsafePointer, accessPtr)
            }
        }
    }
    
    public static func transferFromGodot(
        unsafePointer: UnsafeRawPointer?
    ) -> Self {
        let opaque: Opaque = makeOpaque()
        withUnsafeArgumentPackPointer(unsafePointer!) { accessPtr in
            opaque.withUnsafeMutableRawPointer { opaquePtr in
                Int64GodotContiguousArrayStorageBindings
                    .constructorFromGodotContiguousArrayInt64(opaquePtr, accessPtr)
            }
        }
        return Self.init(opaque: opaque)
    }
}

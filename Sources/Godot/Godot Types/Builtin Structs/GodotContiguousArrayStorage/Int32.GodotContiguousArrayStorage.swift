
extension Int32: GodotContiguousArrayElement {
    /// Contiguous array storage of colors 32 bit integers.
    @BuiltinOpaque
    public struct GodotContiguousArrayStorage {
        public typealias Element = Int32
        
        internal mutating func makeUniqueIfSharedOpaque() {
            guard !isKnownUniquelyReferenced(&opaque) else {
                return
            }
            
            self = Self.make(from: self)
        }
    }
    
    public static func readGodotContiguousArrayValue(
        from source: Int32
    ) -> Int32 {
        source
    }
    
    public static func writeGodotContiguousArray(
        value: Int32,
        to source: inout Int32
    ) {
        source = value
    }
}

extension Int32.GodotContiguousArrayStorage: GodotContiguousArrayStorageProtocol {
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
        _ body: (UnsafePointer<Int32>?) throws -> R
    ) rethrows -> R {
        try withUnsafeOpaquePointer { pointer in
            let ptr = GodotExtension.Interface.packedInt32ArrayOperatorIndexConst(
                pointer,
                0
            )
            
            return try body(ptr)
        }
    }
    
    public mutating func withUnsafeMutablePointer<R>(
        _ body: (UnsafeMutablePointer<Int32>?) throws -> R
    ) rethrows -> R {
        makeUniqueIfSharedOpaque()
        
        return try withUnsafeMutableOpaquePointer { pointer in
            let ptr = GodotExtension.Interface.packedInt32ArrayOperatorIndex(
                pointer,
                0
            )
            
            return try body(ptr)
        }
    }
    
    // MARK: Variant.Storable
    
    public static var variantStorageType: Variant.StorageType? {
        .packedInt32Array
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
        .packedInt32Array
    }
    
    public consuming func transferToGodot(
        unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer
    ) {
        withUnsafeOpaquePointer { selfPtr in
            withUnsafeArgumentPackPointer(selfPtr) { accessPtr in
                Int32GodotContiguousArrayStorageBindings
                    .constructorFromGodotContiguousArrayInt32(destinationUnsafePointer, accessPtr)
            }
        }
    }
    
    public static func transferFromGodot(
        unsafePointer: UnsafeRawPointer?
    ) -> Self {
        let opaque: Opaque = makeOpaque()
        withUnsafeArgumentPackPointer(unsafePointer!) { accessPtr in
            opaque.withUnsafeMutableRawPointer { opaquePtr in
                Int32GodotContiguousArrayStorageBindings
                    .constructorFromGodotContiguousArrayInt32(opaquePtr, accessPtr)
            }
        }
        return Self.init(opaque: opaque)
    }
}

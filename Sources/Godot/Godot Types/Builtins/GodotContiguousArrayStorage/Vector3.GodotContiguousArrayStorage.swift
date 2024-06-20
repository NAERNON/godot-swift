
extension Vector3: GodotContiguousArrayElement {
    /// Contiguous array storage of 3D vectors.
    public struct GodotContiguousArrayStorage {
        public typealias Element = Vector3
        
        private var opaque: Opaque

        internal init(storage: consuming Opaque.Storage) {
            self.opaque = .init(storage)
        }
        
        fileprivate mutating func makeUniqueIfSharedOpaque() {
            if !isKnownUniquelyReferenced(&opaque) {
                self.opaque = .init(Self.make(from: self))
            }
        }
        
        public func withUnsafeOpaquePointer<Result>(
            _ body: (UnsafeRawPointer) throws -> Result
        ) rethrows -> Result {
            try opaque.withUnsafeRawPointer(body)
        }

        public mutating func withUnsafeMutableOpaquePointer<Result>(
            _ body: (UnsafeMutableRawPointer) throws -> Result
        ) rethrows -> Result {
            try opaque.withUnsafeMutableRawPointer(body)
        }
    }
    
    public static func readGodotContiguousArrayValue(
        from source: Vector3
    ) -> Vector3 {
        source
    }
    
    public static func writeGodotContiguousArray(
        value: Vector3,
        to source: inout Vector3
    ) {
        source = value
    }
}

extension Vector3.GodotContiguousArrayStorage: GodotContiguousArrayStorageProtocol {
    public init() {
        self.init(storage: Self.make())
    }
    
    public var size: Int {
        _size()
    }
    
    public mutating func resize(_ newSize: Int) {
        makeUniqueIfSharedOpaque()
        
        _ = _resize(newSize: newSize)
    }
    
    public func bytes() -> UInt8.GodotContiguousArrayStorage {
        _toByteArray()
    }
    
    public func withUnsafePointer<R>(
        _ body: (UnsafePointer<Vector3>?) throws -> R
    ) rethrows -> R {
        try withUnsafeOpaquePointer { pointer in
            let ptr = GodotExtension.Interface.packedVector3ArrayOperatorIndexConst(
                pointer,
                0
            )
            
            return try body(ptr?.assumingMemoryBound(to: Vector3.self))
        }
    }
    
    public mutating func withUnsafeMutablePointer<R>(
        _ body: (UnsafeMutablePointer<Vector3>?) throws -> R
    ) rethrows -> R {
        makeUniqueIfSharedOpaque()
        
        return try withUnsafeMutableOpaquePointer { pointer in
            let ptr = GodotExtension.Interface.packedVector3ArrayOperatorIndex(
                pointer,
                0
            )
            
            return try body(ptr?.assumingMemoryBound(to: Vector3.self))
        }
    }
    
    // MARK: Variant.Storable
    
    public static var variantStorageType: Variant.StorageType? {
        .packedVector3Array
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
    
    public static func fromInitializingTransferrableRawTypeUnsafeRawPointer(
        _ body: (UnsafeMutableRawPointer) -> Void
    ) -> Self {
        var storage = Self.makeOpaqueStorage()
        storage.withUnsafeMutableRawPointer(body)
        return .init(storage: storage)
    }
    
    // MARK: Exposable
    
    public static var variantRepresentationType: Variant.RepresentationType {
        .packedVector3Array
    }
    
    public consuming func transferToGodot(
        unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer
    ) {
        withUnsafeOpaquePointer { selfPtr in
            withUnsafeArgumentPackPointer(selfPtr) { accessPtr in
                Vector3GodotContiguousArrayStorageBindings
                    .constructorFromGodotContiguousArrayVector3(destinationUnsafePointer, accessPtr)
            }
        }
    }
    
    public static func transferFromGodot(
        unsafePointer: UnsafeRawPointer?
    ) -> Self {
        var storage = makeOpaqueStorage()
        withUnsafeArgumentPackPointer(unsafePointer!) { accessPtr in
            storage.withUnsafeMutableRawPointer { opaquePtr in
                Vector3GodotContiguousArrayStorageBindings
                    .constructorFromGodotContiguousArrayVector3(opaquePtr, accessPtr)
            }
        }
        return Self.init(storage: storage)
    }
}

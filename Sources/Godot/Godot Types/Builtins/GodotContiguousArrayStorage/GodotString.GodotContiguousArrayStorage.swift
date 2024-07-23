
extension GodotString: GodotContiguousArrayElement {
    /// Contiguous array storage of strings.
    public struct GodotContiguousArrayStorage {
        public typealias Element = GodotString
        
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
    
    /// The representation of a Godot string in a contiguous array.
    public struct ContiguousArraySource {
        private var rawData: GodotStringRawOpaque
        
        public mutating func write(_ string: GodotString) {
            string.withUnsafeOpaquePointer { stringPtr in
                withUnsafeMutablePointer(to: &rawData) { rawPointer in
                    GodotStringBindings.destructor(rawPointer)
                    
                    withUnsafeArgumentPackPointer(stringPtr) { accessPtr in
                        GodotStringBindings.constructorFromGodotString(rawPointer, accessPtr)
                    }
                }
            }
        }
        
        public func read() -> GodotString {
            let storage = GodotString.makeOpaqueStorage()
            withUnsafePointer(to: rawData) { rawPointer in
                withUnsafeArgumentPackPointer(rawPointer) { accessPtr in
                    storage.withUnsafeMutableRawPointer { opaquePtr in
                        GodotStringBindings.constructorFromGodotString(opaquePtr, accessPtr)
                    }
                }
            }
            return GodotString(storage: storage)
        }
    }
    
    public static func readGodotContiguousArrayValue(
        from source: ContiguousArraySource
    ) -> GodotString {
        source.read()
    }
    
    public static func writeGodotContiguousArray(
        value: GodotString,
        to source: inout ContiguousArraySource
    ) {
        source.write(value)
    }
}

extension GodotString.GodotContiguousArrayStorage: GodotContiguousArrayStorageProtocol {
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
        _ body: (UnsafePointer<GodotString.ContiguousArraySource>?) throws -> R
    ) rethrows -> R {
        try withUnsafeOpaquePointer { pointer in
            let ptr = GodotExtension.Interface.packedStringArrayOperatorIndexConst(
                pointer,
                0
            )
            
            return try body(
                ptr?.assumingMemoryBound(
                    to: GodotString.ContiguousArraySource.self
                )
            )
        }
    }
    
    public mutating func withUnsafeMutablePointer<R>(
        _ body: (UnsafeMutablePointer<GodotString.ContiguousArraySource>?) throws -> R
    ) rethrows -> R {
        makeUniqueIfSharedOpaque()
        
        return try withUnsafeMutableOpaquePointer { pointer in
            let ptr = GodotExtension.Interface.packedStringArrayOperatorIndex(
                pointer,
                0
            )
            
            return try body(
                ptr?.assumingMemoryBound(
                    to: GodotString.ContiguousArraySource.self
                )
            )
        }
    }
    
    // MARK: Variant.Storable
    
    public static var variantStorageType: Variant.StorageType? {
        .packedStringArray
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
        let storage = Self.makeOpaqueStorage()
        storage.withUnsafeMutableRawPointer(body)
        return .init(storage: storage)
    }
    
    // MARK: Exposable
    
    public static var variantRepresentationType: Variant.RepresentationType {
        .packedStringArray
    }
    
    public func transferToGodot(
        unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer
    ) {
        withUnsafeOpaquePointer { selfPtr in
            withUnsafeArgumentPackPointer(selfPtr) { accessPtr in
                GodotStringGodotContiguousArrayStorageBindings
                    .constructorFromGodotContiguousArrayGodotString(destinationUnsafePointer, accessPtr)
            }
        }
    }
    
    public static func transferFromGodot(
        unsafePointer: UnsafeRawPointer?
    ) -> Self {
        let storage = makeOpaqueStorage()
        withUnsafeArgumentPackPointer(unsafePointer!) { accessPtr in
            storage.withUnsafeMutableRawPointer { opaquePtr in
                GodotStringGodotContiguousArrayStorageBindings
                    .constructorFromGodotContiguousArrayGodotString(opaquePtr, accessPtr)
            }
        }
        return Self.init(storage: storage)
    }
}

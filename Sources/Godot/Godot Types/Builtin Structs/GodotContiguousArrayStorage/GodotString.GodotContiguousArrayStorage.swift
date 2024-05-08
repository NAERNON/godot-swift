
extension GodotString: GodotContiguousArrayElement {
    /// Contiguous array storage of strings.
    @BuiltinOpaque
    public struct GodotContiguousArrayStorage {
        public typealias Element = GodotString
        
        internal mutating func makeUniqueIfSharedOpaque() {
            guard !isKnownUniquelyReferenced(&opaque) else {
                return
            }
            
            self = Self.make(from: self)
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
            let opaque: Opaque = GodotString.makeOpaque()
            withUnsafePointer(to: rawData) { rawPointer in
                withUnsafeArgumentPackPointer(rawPointer) { accessPtr in
                    opaque.withUnsafeMutableRawPointer { opaquePtr in
                        GodotStringBindings.constructorFromGodotString(opaquePtr, accessPtr)
                    }
                }
            }
            return GodotString(opaque: opaque)
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
        .packedStringArray
    }
    
    public consuming func transferToGodot(
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
        let opaque: Opaque = makeOpaque()
        withUnsafeArgumentPackPointer(unsafePointer!) { accessPtr in
            opaque.withUnsafeMutableRawPointer { opaquePtr in
                GodotStringGodotContiguousArrayStorageBindings
                    .constructorFromGodotContiguousArrayGodotString(opaquePtr, accessPtr)
            }
        }
        return Self.init(opaque: opaque)
    }
}

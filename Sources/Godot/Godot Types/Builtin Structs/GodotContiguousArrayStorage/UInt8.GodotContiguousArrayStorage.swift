import GodotExtensionHeaders

private var __constructorFromGodotContiguousArrayUInt8: GDExtensionPtrConstructor = {
    return GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, 1)!
}()

extension UInt8: GodotContiguousArrayElement {
//    @GodotOpaqueBuiltinClass
    public struct GodotContiguousArrayStorage {
        public static var variantRepresentationType: Variant.RepresentationType {
            .packedByteArray
        }
        
        private var opaque: Opaque

        internal init(opaque: Opaque) {
            self.opaque = opaque
        }

        /// When a function modifies the opaque array or any value associated,
        /// we should check that the `Opaque` value is uniquely referenced and if not,
        /// duplicate its value.
        internal mutating func replaceOpaqueValueIfNecessary() {
            guard !isKnownUniquelyReferenced(&opaque) else {
                return
            }
            
            self.opaque = self.withCopiedOpaque().opaque
        }

        public consuming func transferToGodot(
            unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer
        ) {
            
//            let __temporary: Opaque = .init(size: 16, destructorPtr: __destructor)
//            withUnsafeArgumentPackPointer(from) { __accessPtr in
//                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
//                    __constructorFromGodotContiguousArrayUInt8(__ptr___temporary, __accessPtr)
//                }
//            }
//            return Self.init(opaque: __temporary)
            godotPrint("okokoko")
            withUnsafeRawPointer { ptr in
                Swift.withUnsafePointer(to: ptr) { ppptr in
                    __constructorFromGodotContiguousArrayUInt8(destinationUnsafePointer, ppptr)
                }
            }
            
//            var copy = consume self
//            if isKnownUniquelyReferenced(&copy.opaque) {
//                copy.opaque.withUnsafeMutableRawPointer { ptr in
//                    destinationUnsafePointer.copyMemory(from: ptr, byteCount: copy.opaque.size)
//                }
//                copy.opaque.destructorPtr = nil
//            } else {
//                let newOpaque = copy.withCopiedOpaque().opaque
//                newOpaque.withUnsafeMutableRawPointer { ptr in
//                    destinationUnsafePointer.copyMemory(from: ptr, byteCount: newOpaque.size)
//                }
//                newOpaque.destructorPtr = nil
//            }
        }

        func withUnsafeRawBufferPointer<Result>(
            _ body: (UnsafeRawBufferPointer) throws -> Result
        ) rethrows -> Result {
            try opaque.withUnsafeRawBufferPointer(body)
        }

        mutating func withUnsafeMutableRawBufferPointer<Result>(
            _ body: (UnsafeMutableRawBufferPointer) throws -> Result
        ) rethrows -> Result {
            try opaque.withUnsafeMutableRawBufferPointer(body)
        }

        func withUnsafeRawPointer<Result>(
            _ body: (UnsafeRawPointer) throws -> Result
        ) rethrows -> Result {
            try opaque.withUnsafeRawPointer(body)
        }

        mutating func withUnsafeMutableRawPointer<Result>(
            _ body: (UnsafeMutableRawPointer) throws -> Result
        ) rethrows -> Result {
            try opaque.withUnsafeMutableRawPointer(body)
        }
    }
}

extension UInt8.GodotContiguousArrayStorage: GodotContiguousArrayStorageProtocol {
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
        _ body: (UnsafePointer<UInt8>?) throws -> R
    ) rethrows -> R {
        try withUnsafeRawBufferPointer { buffer in
            let ptr = GodotExtension.Interface.packedByteArrayOperatorIndexConst(
                buffer.baseAddress!,
                0
            )
            
            return try body(ptr)
        }
    }
    
    public mutating func withUnsafeMutablePointer<R>(
        _ body: (UnsafeMutablePointer<UInt8>?) throws -> R
    ) rethrows -> R {
        try withUnsafeMutableRawBufferPointer { buffer in
            let ptr = GodotExtension.Interface.packedByteArrayOperatorIndex(
                buffer.baseAddress!,
                0
            )
            
            return try body(ptr)
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
        _makeFromGodotContiguousArrayUInt8Pointer(from: unsafePointer!)
    }
}

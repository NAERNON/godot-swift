import GodotExtensionHeaders

extension Variant {
    /// The representation of the data stored in a variant.
    ///
    /// This struct is non copyable.
    /// Because variants are used almost every time
    /// a function parameter is passed between Godot and Swift,
    /// the use of a non copyable structure makes for a great optimization.
    ///
    /// ### Mutability
    ///
    /// Note that a storage cannot mutate. Therefore, once its type is set,
    /// it cannot be unset.
    public struct Storage: ~Copyable {
        public enum Error: Swift.Error, CustomStringConvertible {
            case cannotConvertType(from: StorageType, to: StorageType)
            
            public var description: String {
                switch self {
                case .cannotConvertType(let from, let to):
                    "Attempting to convert a variant typed \(from) to a variant typed \(to)."
                }
            }
        }
        
        private var rawData: UnsafeMutableRawBufferPointer
        
        init() {
            self.rawData = .allocate(byteCount: Variant.opaqueSize, alignment: 1)
            
            GodotExtension.Interface.variantNewNil(rawData.baseAddress)
        }
        
        init(godotExtensionPointer: UnsafeMutableRawPointer) {
            self.rawData = .allocate(byteCount: Variant.opaqueSize, alignment: 1)
            
            GodotExtension.Interface.variantNewCopy(
                rawData.baseAddress,
                godotExtensionPointer
            )
        }
        
        init(godotExtensionPointer: UnsafeRawPointer) {
            self.rawData = .allocate(byteCount: Variant.opaqueSize, alignment: 1)
            
            GodotExtension.Interface.variantNewCopy(
                rawData.baseAddress,
                godotExtensionPointer
            )
        }
        
        init<T>(_ value: consuming T) where T : Variant.Storable {
            self = T.convertToStorage(value)
        }
        
        deinit {
            GodotExtension.Interface.variantDestroy(rawData.baseAddress)
            
            rawData.deallocate()
        }
        
        // MARK: Consume & copy
        
        /// Copies this storage to a newly created storage.
        func copy() -> Variant.Storage {
            let newStorage = Storage()
            GodotExtension.Interface.variantNewCopy(
                newStorage.rawData.baseAddress,
                rawData.baseAddress
            )
            return newStorage
        }
        
        consuming func consumeByGodot(
            unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer
        ) {
            let destination = UnsafeMutableRawBufferPointer(
                start: destinationUnsafePointer,
                count: rawData.count
            )
            destination.copyMemory(from: UnsafeRawBufferPointer(rawData))
            discard self
        }
        
        /// Calls a closure with a raw buffer pointer of the variant storage.
        func withUnsafeMutableRawBufferPointer<Result>(
            _ body: (UnsafeMutableRawBufferPointer) throws -> Result
        ) rethrows -> Result {
            try body(rawData)
        }
        
        /// Calls a closure with an extension type pointer of the variant storage.
        func withUnsafeRawPointer<Result>(
            _ body: (UnsafeRawPointer) throws -> Result
        ) rethrows -> Result {
            try body(rawData.baseAddress!)
        }
        
        /// Calls a closure with an extension type pointer of the variant storage.
        func withUnsafeMutableRawPointer<Result>(
            _ body: (UnsafeMutableRawPointer) throws -> Result
        ) rethrows -> Result {
            try body(rawData.baseAddress!)
        }
        
        /// Calls a closure with a storage of the given value.
        public static func withStorage<Result>(
            of value: Variant,
            _ body: (borrowing Storage) throws -> Result
        ) rethrows -> Result {
            try body(value.storage)
        }
        
        /// Calls a closure with a storage of the given value.
        public static func withStorage<Value, Result>(
            of value: Value,
            _ body: (borrowing Storage) throws -> Result
        ) rethrows -> Result where Value : Variant.Storable {
            try body(Value.convertToStorage(value))
        }
        
        // MARK: Tools
        
        /// Returns the variant type.
        private var extensionType: GDExtensionVariantType {
            GodotExtension.Interface.variantGetType(rawData.baseAddress!)
        }
        
        /// Returns the variant type.
        public var type: StorageType {
            .init(rawValue: extensionType.rawValue)!
        }
        
        /// A Boolean value indicating whether this storage is nil.
        public var isEmpty: Bool {
            extensionType == GDEXTENSION_VARIANT_TYPE_NIL
        }
        
        public var hashValue: Int {
            Int(GodotExtension.Interface.variantHash(rawData.baseAddress!))
        }
        
        public var description: String {
            let string = GodotString()
            
            string.withUnsafeMutableOpaquePointer { stringNativeTypePtr in
                GodotExtension.Interface.variantStringify(
                    rawData.baseAddress!,
                    stringNativeTypePtr
                )
            }
            
            return String(godotString: string)
        }
        
        /// Throws an error if the variant cannot be converted
        /// to a given type.
        public func checkIsConvertible(to storageType: Variant.StorageType) throws {
            if !isConvertible(to: storageType) {
                throw Error.cannotConvertType(from: self.type, to: storageType)
            }
        }
        
        /// Returns a Boolean value indicating whether the variant can
        /// be converted to a given type.
        public func isConvertible(to type: StorageType) -> Bool {
            GodotExtension.Interface.variantCanConvert(
                self.extensionType,
                type.extensionType
            ) == 0 ? false : true
        }
        
        /// Returns a Boolean value indicating whether the variant can
        /// be converted to a given type using stricter rules.
        public func isStrictlyConvertible(to type: StorageType) -> Bool {
            GodotExtension.Interface.variantCanConvertStrict(
                self.extensionType,
                type.extensionType
            ) == 0 ? false : true
        }
        
        /// Swaps the two variants raw values.
        internal mutating func swap(with other: inout Variant.Storage) {
            let selfRawData = self.rawData
            self.rawData = other.rawData
            other.rawData = selfRawData
        }
        
        // MARK: Operators
        
        func evaluate(
            _ `operator`: Operator,
            with other: borrowing Variant.Storage
        ) -> Variant.Storage {
            var isValid: GDExtensionBool = 0
            let returnVariant = Variant.Storage()
            
            self.withUnsafeRawPointer { extensionTypePtr in
                other.withUnsafeRawPointer { otherNativeTypePtr in
                    returnVariant.withUnsafeMutableRawPointer { returnNativeTypePtr in
                        GodotExtension.Interface.variantEvaluate(
                            `operator`.godotOperator,
                            extensionTypePtr,
                            otherNativeTypePtr,
                            returnNativeTypePtr,
                            &isValid
                        )
                    }
                }
            }
            
            assert(isValid != 0, "The variant operator evaluation is invalid.")
            return returnVariant
        }
        
        static public func == (
            lhs: borrowing Variant.Storage,
            rhs: borrowing Variant.Storage
        ) -> Bool {
            Bool.convertFromCheckedStorage(
                lhs.evaluate(.equal, with: rhs)
            )
        }
        
        static public func != (
            lhs: borrowing Variant.Storage,
            rhs: borrowing Variant.Storage
        ) -> Bool {
            Bool.convertFromCheckedStorage(
                lhs.evaluate(.notEqual, with: rhs)
            )
        }
    }
}

import GodotExtensionHeaders

extension Variant {
    /// The representation of the data stored in a variant.
    ///
    /// This struct is non copyable.
    /// Because variants are used almost every time
    /// a function parameter is passed between Godot and Swift,
    /// the use of a non copyable structure makes for a great optimization.
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
        
        private var rawData: UnsafeMutablePointer<UInt8>
        
        public init() {
            self.rawData = .allocate(capacity: Variant.opaqueSize)
            
            GodotExtension.Interface.variantNewNil(rawData)
        }
        
        public init(godotExtensionPointer: GDExtensionVariantPtr) {
            self.rawData = .allocate(capacity: Variant.opaqueSize)
            
            GodotExtension.Interface.variantNewCopy(rawData, godotExtensionPointer)
        }
        
        public init(godotExtensionPointer: GDExtensionConstVariantPtr) {
            self.rawData = .allocate(capacity: Variant.opaqueSize)
            
            GodotExtension.Interface.variantNewCopy(rawData, godotExtensionPointer)
        }
        
        public init<T>(_ value: consuming T) where T : VariantStorableIn {
            self = T.convertToStorage(value)
        }
        
        deinit {
            GodotExtension.Interface.variantDestroy(rawData)
            
            rawData.deinitialize(count: Variant.opaqueSize)
            rawData.deallocate()
        }
        
        // MARK: Consume & copy
        
        /// Copies the variant to the given destination.
        public func copyToGodot(unsafePointer destination: GDExtensionVariantPtr) {
            GodotExtension.Interface.variantNewCopy(destination, rawData)
        }
        
        /// Copies this storage to a newly created storage.
        public func copy() -> Variant.Storage {
            let newStorage = Storage()
            GodotExtension.Interface.variantNewCopy(newStorage.rawData, rawData)
            return newStorage
        }
        
        /// Calls a closure with an extension type pointer of the underlying object.
        public func withGodotUnsafeRawPointer<Result>(
            _ body: (UnsafeRawPointer) throws -> Result
        ) rethrows -> Result {
            try body(rawData)
        }
        
        /// Calls a closure with an extension type pointer of the underlying object.
        func withGodotUnsafeMutableRawPointer<Result>(
            _ body: (UnsafeMutableRawPointer) throws -> Result
        ) rethrows -> Result {
            try body(rawData)
        }
        
        static func fromMutatingGodotUnsafePointer(_ body: (UnsafeMutableRawPointer) -> Void) -> Self {
            let value = Self()
            value.withGodotUnsafeMutableRawPointer(body)
            return value
        }
        
        static func fromGodotUnsafePointer(
            _ unsafePointer: UnsafeRawPointer?
        ) -> Self {
            Self(godotExtensionPointer: unsafePointer!)
        }
        
        // MARK: Tools
        
        /// Returns the variant type.
        private var extensionType: GDExtensionVariantType {
            GodotExtension.Interface.variantGetType(rawData)
        }
        
        /// Returns the variant type.
        public var type: StorageType {
            .init(rawValue: extensionType.rawValue)!
        }
        
        /// Returns a Boolean value indicating whether the storage is nil.
        public var isNil: Bool {
            extensionType == GDEXTENSION_VARIANT_TYPE_NIL
        }
        
        public var hashValue: Int {
            Int(GodotExtension.Interface.variantHash(rawData))
        }
        
        public var description: String {
            var string = GodotString()
            
            string.withGodotUnsafeMutableRawPointer { stringNativeTypePtr in
                GodotExtension.Interface.variantStringify(rawData, stringNativeTypePtr)
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
        
        func evaluate(other: borrowing Variant.Storage, `operator`: Operator) -> Variant.Storage {
            var isValid: GDExtensionBool = 0
            let returnVariant = Variant.Storage()
            
            self.withGodotUnsafeRawPointer { extensionTypePtr in
                other.withGodotUnsafeRawPointer { otherNativeTypePtr in
                    returnVariant.withGodotUnsafeMutableRawPointer { returnNativeTypePtr in
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
        
        static public func == (lhs: borrowing Variant.Storage, rhs: borrowing Variant.Storage) -> Bool {
            Bool.convertFromCheckedStorage(lhs.evaluate(other: rhs, operator: .equal))
        }
        
        static public func != (lhs: borrowing Variant.Storage, rhs: borrowing Variant.Storage) -> Bool {
            Bool.convertFromCheckedStorage(lhs.evaluate(other: rhs, operator: .notEqual))
        }
    }
}

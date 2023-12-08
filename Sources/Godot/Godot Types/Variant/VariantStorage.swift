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
        
        private let rawData: UnsafeMutablePointer<UInt8>
        
        public init() {
            self.rawData = .allocate(capacity: Variant.opaqueSize)
            
            gdextension_interface_variant_new_nil(rawData)
        }
        
        public init(godotExtensionPointer: GDExtensionVariantPtr) {
            self.rawData = .allocate(capacity: Variant.opaqueSize)
            
            gdextension_interface_variant_new_copy(rawData, godotExtensionPointer)
        }
        
        public init(godotExtensionPointer: GDExtensionConstVariantPtr) {
            self.rawData = .allocate(capacity: Variant.opaqueSize)
            
            gdextension_interface_variant_new_copy(rawData, godotExtensionPointer)
        }
        
        public init<T>(_ value: consuming T) where T : VariantStorableIn {
            self = T.convertToStorage(value)
        }
        
        deinit {
            gdextension_interface_variant_destroy(rawData)
            
            rawData.deinitialize(count: Variant.opaqueSize)
            rawData.deallocate()
        }
        
        // MARK: Consume & copy
        
        /// Copies the variant to the given destination.
        public func consumeByGodot(ontoUnsafePointer destination: GDExtensionVariantPtr) {
            gdextension_interface_variant_new_copy(destination, rawData)
        }
        
        /// Copies this storage to a newly created storage.
        public func copy() -> Variant.Storage {
            let newStorage = Storage()
            gdextension_interface_variant_new_copy(newStorage.rawData, rawData)
            return newStorage
        }
        
        /// Calls a closure with an extension type pointer of the underlying object.
        public func withUnsafeRawPointer<Result>(
            _ body: (GDExtensionVariantPtr) throws -> Result
        ) rethrows -> Result {
            try body(rawData)
        }
        
        // MARK: Tools
        
        /// Returns the variant type.
        private var extensionType: GDExtensionVariantType {
            gdextension_interface_variant_get_type(rawData)
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
            Int(gdextension_interface_variant_hash(rawData))
        }
        
        public var description: String {
            let string = GodotString()
            
            string.withUnsafeRawPointer { stringNativeTypePtr in
                gdextension_interface_variant_stringify(rawData, stringNativeTypePtr)
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
            gdextension_interface_variant_can_convert(
                self.extensionType,
                type.extensionType
            ) == 0 ? false : true
        }
        
        /// Returns a Boolean value indicating whether the variant can
        /// be converted to a given type using stricter rules.
        public func isStrictlyConvertible(to type: StorageType) -> Bool {
            gdextension_interface_variant_can_convert_strict(
                self.extensionType,
                type.extensionType
            ) == 0 ? false : true
        }
        
        // MARK: Operators
        
        func evaluate(other: borrowing Variant.Storage, `operator`: Operator) -> Variant.Storage {
            var isValid: GDExtensionBool = 0
            let returnVariant = Variant.Storage()
            
            self.withUnsafeRawPointer { extensionTypePtr in
                other.withUnsafeRawPointer { otherNativeTypePtr in
                    returnVariant.withUnsafeRawPointer { returnNativeTypePtr in
                        gdextension_interface_variant_evaluate(
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

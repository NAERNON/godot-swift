import GodotExtensionHeaders

extension Variant {
    /// The representation of the data stored in a variant.
    ///
    /// This struct is non copyable.
    /// Because variants are used almost every time
    /// a function parameter is passed between Godot and Swift,
    /// the use of a non copyable structure makes for a great optimization.
    public struct Storage: ~Copyable {
        internal enum Error: Swift.Error {
            case unmatchingTypes(variantRepresentationType: GDExtensionVariantType, checkedType: GDExtensionVariantType)
            
            var localizedDescription: String {
                switch self {
                case .unmatchingTypes(let variantRepresentationType, let checkedType):
                    "The variant types don't match (\(variantRepresentationType) and \(checkedType))."
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
        
        public init<T>(_ value: T) where T : VariantEncodable {
            self = T.encodeVariantStorage(value)
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
        public var type: GDExtensionVariantType {
            gdextension_interface_variant_get_type(rawData)
        }
        
        /// Returns a Boolean value indicating whether the storage is nil.
        public var isNil: Bool {
            type == GDEXTENSION_VARIANT_TYPE_NIL
        }
        
        /// Checks that the variant type matches the given type.
        public func checkType(_ type: RepresentationType) throws {
            if self.type != type.storageType {
                throw Error.unmatchingTypes(variantRepresentationType: self.type, checkedType: type.storageType)
            }
        }
        
        /// A Boolean value indicating whether this variant is an `Int` or a `Float` value.
        public var isNumeric: Bool {
            let type = self.type
            return type == GDEXTENSION_VARIANT_TYPE_INT || type == GDEXTENSION_VARIANT_TYPE_FLOAT
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
        
        // MARK: Operators
        
        func evaluate(other: borrowing Variant.Storage, `operator`: Operator) -> Variant.Storage {
            var isValid: GDExtensionBool = 0
            let returnVariant = Variant.Storage()
            
            self.withUnsafeRawPointer { extensionTypePtr in
                other.withUnsafeRawPointer { otherNativeTypePtr in
                    returnVariant.withUnsafeRawPointer { returnNativeTypePtr in
                        withUnsafeMutablePointer(to: &isValid) { validPtr in
                            gdextension_interface_variant_evaluate(
                                `operator`.godotOperator,
                                extensionTypePtr,
                                otherNativeTypePtr,
                                returnNativeTypePtr,
                                validPtr
                            )
                        }
                    }
                }
            }
            
            assert(isValid != 0, "The variant operator evaluation is invalid.")
            return returnVariant
        }
        
        static public func == (lhs: borrowing Variant.Storage, rhs: borrowing Variant.Storage) -> Bool {
            Bool.decodeCompatibleVariantStorage(lhs.evaluate(other: rhs, operator: .equal))
        }
        
        static public func != (lhs: borrowing Variant.Storage, rhs: borrowing Variant.Storage) -> Bool {
            Bool.decodeCompatibleVariantStorage(lhs.evaluate(other: rhs, operator: .notEqual))
        }
        
        static public func < (lhs: borrowing Variant.Storage, rhs: borrowing Variant.Storage) -> Bool {
            Bool.decodeCompatibleVariantStorage(lhs.evaluate(other: rhs, operator: .less))
        }
        
        static public func <= (lhs: borrowing Variant.Storage, rhs: borrowing Variant.Storage) -> Bool {
            Bool.decodeCompatibleVariantStorage(lhs.evaluate(other: rhs, operator: .lessEqual))
        }
        
        static public func > (lhs: borrowing Variant.Storage, rhs: borrowing Variant.Storage) -> Bool {
            Bool.decodeCompatibleVariantStorage(lhs.evaluate(other: rhs, operator: .greater))
        }
        
        static public func >= (lhs: borrowing Variant.Storage, rhs: borrowing Variant.Storage) -> Bool {
            Bool.decodeCompatibleVariantStorage(lhs.evaluate(other: rhs, operator: .greaterEqual))
        }
    }
}

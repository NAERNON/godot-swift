import GodotExtensionHeaders

/// A type used to transform Swift types to and from Godot types.
public final class Variant {
    // MARK: Inits
    
    /// The storage containing the variant data.
    public private(set) var storage: Storage
    
    public init(storage: consuming Storage) {
        self.storage = storage
    }
    
    /// Creates a new `nil` variant.
    public init() {
        self.storage = Storage()
    }
    
    /// Creates a variant containing the given value.
    public init<T>(_ value: consuming T) where T : Variant.Storable {
        self.storage = T.convertToStorage(value)
    }
    
    public init(godotExtensionPointer: GDExtensionConstVariantPtr) {
        self.storage = .init(godotExtensionPointer: godotExtensionPointer)
    }
    
    // MARK: Bindings
    
    private(set) static var fromTypeConstructors: Constructors!
    private(set) static var toTypeConstructors: Constructors!
    
    internal static func loadConstructors() {
        fromTypeConstructors = .init({ GodotExtension.Interface.getVariantFromTypeConstructor($0)! })
        toTypeConstructors = .init({ GodotExtension.Interface.getVariantToTypeConstructor($0)! })
    }
    
    // MARK: Getters
    
    /// Returns the value contained inside the `Variant`.
    ///
    /// - Parameter type: The type stored in the `Variant`.
    public func unwrap<T>(_ type: T.Type) throws -> T where T : Variant.Storable {
        try type.convertFromStorage(storage)
    }
    
    /// Returns the value contained inside the `Variant`.
    ///
    /// This method assumes this variant
    /// can be converted to the given type.
    ///
    /// >important: Requesting a type non compatible with
    /// this variant may stop execution.
    ///
    /// Use ``unwrap(_:)`` for a throwing version of this function.
    ///
    /// - Parameter type: The type stored in the `Variant`.
    public func unwrap<T>(assuming type: T.Type) -> T where T : Variant.Storable {
        type.convertFromCheckedStorage(storage)
    }
    
    /// Returns the type of value this variant stores.
    public var type: StorageType {
        storage.type
    }
}

// MARK: - Extensions

extension Variant: CustomStringConvertible {
    public var description: String {
        storage.description
    }
}

extension Variant: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Variant(type: \(type), value: \(storage.description))"
    }
}

extension Variant: Equatable {
    static public func == (lhs: Variant, rhs: Variant) -> Bool {
        lhs.storage == rhs.storage
    }
    
    static public func != (lhs: Variant, rhs: Variant) -> Bool {
        lhs.storage != rhs.storage
    }
}

extension Variant: Variant.Storable {
    public static var variantStorageType: StorageType? { nil }
    
    public static func convertToStorage(
        _ value: consuming Variant
    ) -> Storage {
        value.storage.copy()
    }
    
    public static func convertToStorageTemporarily<Result>(
        _ value: consuming Variant,
        body: (_ storage: borrowing Variant.Storage) throws -> Result
    ) rethrows -> Result {
        try body(value.storage)
    }
    
    public static func convertFromStorage(
        _ storage: borrowing Storage
    ) throws -> Variant {
        Variant(storage: storage.copy())
    }
    
    public static func convertFromCheckedStorage(
        _ storage: borrowing Storage
    ) -> Variant {
        Variant(storage: storage.copy())
    }
    
    public static func convertFromCheckedStorage(
        consuming storage: consuming Storage
    ) -> Variant {
        Variant(storage: storage)
    }
}

extension Variant: Hintable {
    public typealias HintingValue = Variant
    public static var defaultHint: Hint<Variant> { .none }
}

extension Variant: Exposable {
    public static var variantRepresentationType: RepresentationType {
        .int64
    }
    
    public consuming func transferToGodot(
        unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer
    ) {
        if isKnownUniquelyReferenced(&self) {
            var emptyStorage = Storage()
            emptyStorage.swap(with: &self.storage)
            // Now the empty storage has the variant storage
            emptyStorage.consumeByGodot(unsafePointer: destinationUnsafePointer)
        } else {
            storage.copy().consumeByGodot(unsafePointer: destinationUnsafePointer)
        }
    }
    
    consuming public func transferVariantStorageToGodot(
        unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer
    ) {
        self.transferToGodot(unsafePointer: destinationUnsafePointer)
    }
    
    public static func transferFromGodot(
        unsafePointer: UnsafeRawPointer?
    ) -> Self {
        Self(godotExtensionPointer: unsafePointer!)
    }
}

extension Variant: GodotRawPointerAccessible {
    /// Calls a closure with an extension type pointer of the underlying object.
    public func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer?) throws -> Result
    ) rethrows -> Result {
        try storage.withUnsafeRawPointer {
            try body($0)
        }
    }
    
    /// Calls a closure with an extension type pointer of the underlying object.
    func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer?) throws -> Result
    ) rethrows -> Result {
        try storage.withUnsafeMutableRawPointer {
            try body($0)
        }
    }
    
    static func fromInitializingMutatingGodotUnsafePointer(
        _ body: (UnsafeMutableRawPointer) -> Void
    ) -> Self {
        let value = Self()
        value.storage.withUnsafeMutableRawPointer(body)
        return value
    }
}

extension Variant: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(storage.hashValue)
    }
}

extension Variant: ExpressibleByFloatLiteral {
    convenience public init(floatLiteral value: Double) {
        self.init(value)
    }
}

extension Variant: ExpressibleByStringLiteral, ExpressibleByStringInterpolation {
    convenience public init(stringLiteral value: Swift.String) {
        self.init(value)
    }
}

extension Variant: ExpressibleByIntegerLiteral {
    convenience public init(integerLiteral value: Int) {
        self.init(value)
    }
}

extension Variant: ExpressibleByBooleanLiteral {
    convenience public init(booleanLiteral value: BooleanLiteralType) {
        self.init(value)
    }
}

extension Variant: ExpressibleByNilLiteral {
    convenience public init(nilLiteral: ()) {
        self.init()
    }
}

extension Variant {
    static func withStorageUnsafeRawPointer<Value, Result>(
        to value: Value,
        _ body: (GDExtensionVariantPtr) throws -> Result
    ) rethrows -> Result where Value : Variant.Storable {
        try Value.convertToStorageTemporarily(value) { storage in
            try storage.withUnsafeMutableRawPointer { rawPointer in
                try body(rawPointer)
            }
        }
    }
}

// MARK: - Constructors

extension Variant {
    struct Constructors {
        private let constructors: ContiguousArray<GDExtensionVariantFromTypeConstructorFunc>
        
        init(
            _ getter: @escaping (GDExtensionVariantType) -> GDExtensionVariantFromTypeConstructorFunc
        ) {
            // We drop the first because it is the nil variant.
            constructors = .init(StorageType.allCases.dropFirst().lazy.map { type in
                getter(type.extensionType)
            })
        }
        
        subscript(storageType: StorageType) -> GDExtensionVariantFromTypeConstructorFunc {
            // We shift of one because of the nil variant.
            constructors[Int(storageType.rawValue)-1]
        }
    }
}

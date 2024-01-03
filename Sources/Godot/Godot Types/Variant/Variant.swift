import GodotExtensionHeaders

/// A type used to transform Swift types to and from Godot types.
public final class Variant {
    // MARK: Inits
    
    /// The storage containing the variant data.
    public let storage: Storage
    
    public init(storage: consuming Storage) {
        self.storage = storage
    }
    
    /// Creates a new `nil` variant.
    public init() {
        self.storage = Storage()
    }
    
    /// Creates a variant containing the given value.
    public init<T>(_ value: consuming T) where T : VariantStorableIn {
        self.storage = T.convertToStorage(value)
    }
    
    public init(godotExtensionPointer: GDExtensionConstVariantPtr) {
        self.storage = .init(godotExtensionPointer: godotExtensionPointer)
    }
    
    // MARK: Getters
    
    /// Returns the value contained inside the `Variant`.
    ///
    /// - Parameter type: The type stored in the `Variant`.
    public func unwrap<T>(_ type: T.Type) throws -> T where T : VariantStorableOut {
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
    public func unwrap<T>(assuming type: T.Type) -> T where T : VariantStorableOut {
        type.convertFromCheckedStorage(storage)
    }
    
    // MARK: Handle data
    
    /// Calls a closure with an extension type pointer of the underlying object.
    public func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer) throws -> Result
    ) rethrows -> Result {
        try storage.withGodotUnsafeRawPointer {
            try body($0)
        }
    }
    
    /// Calls a closure with an extension type pointer of the underlying object.
    func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result {
        try storage.withGodotUnsafeMutableRawPointer {
            try body($0)
        }
    }
    
    /// Calls a closure with a storage of the given value.
    public static func withStorage<Value, Result>(
        of value: Value,
        _ body: (borrowing Storage) throws -> Result
    ) rethrows -> Result where Value : VariantStorableIn {
        try Value.withValueStorage(value) { storage in
            try body(storage)
        }
    }
    
    /// Calls a closure with an extension type pointer of the given value storage.
    public static func withStorageUnsafeRawPointer<Value, Result>(
        to value: Value,
        _ body: (GDExtensionVariantPtr) throws -> Result
    ) rethrows -> Result where Value : VariantStorableIn {
        try Value.withValueStorage(value) { storage in
            try storage.withGodotUnsafeMutableRawPointer { rawPointer in
                try body(rawPointer)
            }
        }
    }
    
    static func fromMutatingGodotUnsafePointer(_ body: (UnsafeMutableRawPointer) -> Void) -> Self {
        let value = Self()
        value.withGodotUnsafeMutableRawPointer(body)
        return value
    }
    
    // MARK: Tools
    
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

extension Variant: VariantStorable {
    public static var variantStorageType: StorageType? { nil }
    
    public static func convertToStorage(_ value: consuming Variant) -> Storage {
        value.storage.copy()
    }
    
    public static func withValueStorage<Result>(
        _ value: consuming Variant,
        body: (borrowing Storage) throws -> Result
    ) rethrows -> Result {
        try body(value.storage)
    }
    
    public static func convertFromStorage(_ storage: borrowing Storage) throws -> Variant {
        Variant(storage: storage.copy())
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Storage) -> Variant {
        Variant(storage: storage.copy())
    }
    
    public static func convertFromCheckedStorage(consuming storage: consuming Storage) -> Variant {
        Variant(storage: storage)
    }
}

extension Variant: ExposableValue {
    public static var variantRepresentationType: RepresentationType {
        .int64
    }
    
    /// Copies the variant to the given destination.
    public func copyToGodot(unsafePointer destination: GDExtensionVariantPtr) {
        storage.copyToGodot(unsafePointer: destination)
    }
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        Self(godotExtensionPointer: unsafePointer!)
    }
}

extension Variant: HintableValue {
    public typealias HintingValue = Variant
    public static var defaultHint: Hint<Variant> { .none }
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

import GodotExtensionHeaders

/// A type used to transform Swift types to and from Godot types.
public final class Variant {
    // MARK: Inits
    
    /// The storage containing the variant data.
    public let storage: Storage
    
    public init(_ storage: consuming Storage) {
        self.storage = storage
    }
    
    /// Creates a new `nil` variant.
    public init() {
        self.storage = Storage()
    }
    
    /// Creates a variant containing the given value.
    public init<T>(_ value: T) where T : ConvertibleToVariant {
        self.storage = value.makeVariant()
    }
    
    public init(godotExtensionPointer: GDExtensionConstVariantPtr) {
        self.storage = .init(godotExtensionPointer: godotExtensionPointer)
    }
    
    // MARK: Getters
    
    /// Returns the value contained inside the `Variant`.
    ///
    /// - Parameter type: The type stored in the `Variant`.
    public func typed<T>(_ type: T.Type) throws -> T where T : ConvertibleFromVariant {
        try type.fromVariant(storage)
    }
    
    /// Returns the value contained inside the `Variant`.
    ///
    /// This method assumes this variant
    /// can be converted to the given type.
    ///
    /// >important: Requesting a type non compatible with
    /// this variant may stop execution.
    ///
    /// Use ``typed(_:)`` for a throwing version of this function.
    ///
    /// - Parameter type: The type stored in the `Variant`.
    public func typed<T>(compatibleWith type: T.Type) -> T where T : ConvertibleFromVariant {
        type.fromCompatibleVariant(storage)
    }
    
    // MARK: Handle data
    
    /// Copies the variant to the given destination.
    public func consumeByGodot(ontoUnsafePointer destination: GDExtensionVariantPtr) {
        storage.consumeByGodot(ontoUnsafePointer: destination)
    }
    
    /// Calls a closure with an extension type pointer of the underlying object.
    public func withUnsafeRawPointer<Result>(
        _ body: (GDExtensionVariantPtr) throws -> Result
    ) rethrows -> Result {
        try storage.withUnsafeRawPointer(body)
    }
    
    // MARK: Tools
    
    /// Returns the type of value this variant stores.
    public var type: GDExtensionVariantType {
        storage.type
    }
}

// MARK: - Extensions

extension Variant: CustomDebugStringConvertible {
    public var debugDescription: String {
        storage.debugDescription
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

extension Variant: ConvertibleToVariant, ConvertibleFromVariant {
    public func makeVariant() -> Variant.Storage {
        self.storage.copy()
    }
    
    public static func fromVariant(_ variant: borrowing Variant.Storage) throws -> Variant {
        Variant(variant.copy())
    }
    
    public static func fromCompatibleVariant(_ variant: borrowing Variant.Storage) -> Variant {
        Variant(variant.copy())
    }
}

extension Variant: Comparable {
    static public func < (lhs: Variant, rhs: Variant) -> Bool {
        lhs.storage < rhs.storage
    }
    
    static public func <= (lhs: Variant, rhs: Variant) -> Bool {
        lhs.storage <= rhs.storage
    }
    
    static public func > (lhs: Variant, rhs: Variant) -> Bool {
        lhs.storage > rhs.storage
    }
    
    static public func >= (lhs: Variant, rhs: Variant) -> Bool {
        lhs.storage >= rhs.storage
    }
}

extension Variant: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(storage.hashValue)
    }
}

extension Variant: ExpressibleByFloatLiteral {
    public convenience init(floatLiteral value: Double) {
        self.init(value)
    }
}

extension Variant: ExpressibleByStringLiteral, ExpressibleByStringInterpolation {
    public convenience init(stringLiteral value: String) {
        self.init(value)
    }
}

extension Variant: ExpressibleByIntegerLiteral {
    public convenience init(integerLiteral value: Int) {
        self.init(value)
    }
}

extension Variant: ExpressibleByBooleanLiteral {
    public convenience init(booleanLiteral value: BooleanLiteralType) {
        self.init(value)
    }
}

extension Variant: ExpressibleByNilLiteral {
    public convenience init(nilLiteral: ()) {
        self.init()
    }
}

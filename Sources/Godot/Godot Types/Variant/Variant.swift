import GodotExtensionHeaders

/// A type capable of containing several kinds of Godot types.
public final class Variant {
    // MARK: Inits
    
    /// The storage containing the variant data.
    internal var storage: Storage
    
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
    private static var areBindingsLoaded = false
    
    /// Loads all builtin classes constructors and destructors,
    /// as well as all their bindings.
    internal static func loadBindings() {
        precondition(!areBindingsLoaded, "Variant bindings are already loaded.")
        areBindingsLoaded = true
        
        fromTypeConstructors = .init({ GodotExtension.Interface.getVariantFromTypeConstructor($0)! })
        toTypeConstructors = .init({ GodotExtension.Interface.getVariantToTypeConstructor($0)! })
        
        CallableBindings.loadBindings()
        GodotArrayBindings.loadBindings()
        GodotDictionaryBindings.loadBindings()
        GodotStringBindings.loadBindings()
        GodotStringNameBindings.loadBindings()
        NodePathBindings.loadBindings()
        PackedByteArrayBindings.loadBindings()
        PackedColorArrayBindings.loadBindings()
        PackedFloat32ArrayBindings.loadBindings()
        PackedFloat64ArrayBindings.loadBindings()
        PackedInt32ArrayBindings.loadBindings()
        PackedInt64ArrayBindings.loadBindings()
        PackedStringArrayBindings.loadBindings()
        PackedVector2ArrayBindings.loadBindings()
        PackedVector3ArrayBindings.loadBindings()
        RIDBindings.loadBindings()
        SignalBindings.loadBindings()
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
    
    /// A Boolean value indicating whether this `Variant` is nil.
    public var isEmpty: Bool {
        storage.isEmpty
    }
    
    func withStorageUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer) throws -> Result
    ) rethrows -> Result {
        try storage.withUnsafeRawPointer(body)
    }
    
    func withStorageUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result {
        try storage.withUnsafeMutableRawPointer(body)
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
        storage.description
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

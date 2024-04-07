import GodotExtensionHeaders

// MARK: - Protocol definition

extension Variant {
    /// A type convertible from and to a variant.
    public protocol Storable {
        // MARK: Properties
        
        /// The variant storage type this type
        /// is converted to.
        ///
        /// Returns `nil` if the converted variant storage type is not fixed or unknown.
        static var variantStorageType: Variant.StorageType? { get }
        
        /// The class name of the variant representation if applicable.
        static var _exposedClassName: GodotStringName { get }
        
        // MARK: Convert to
        
        /// Returns a variant storage representing the given value.
        static func convertToStorage(
            _ value: consuming Self
        ) -> Variant.Storage
        
        /// Invokes the given closure with a variant storage representing the given value.
        static func convertToStorageTemporarily<Result>(
            _ value: consuming Self,
            body: (_ storage: borrowing Variant.Storage) throws -> Result
        ) rethrows -> Result
        
        // MARK: Convert from
        
        /// Converts a variant storage into an instance of this type.
        static func convertFromStorage(
            _ storage: borrowing Variant.Storage
        ) throws -> Self
        
        /// Converts a variant storage into an instance of this type.
        ///
        /// This method assumes the given variant
        /// can be converted to this type.
        ///
        /// >important: Passing an incompatible variant may stop execution.
        ///
        /// See the ``convertFromStorage(_:)`` method to get a throwing version
        /// of this method.
        ///
        /// This method acts as the reversed method of
        /// ``Variant/Storable/convertToStorage(_:)``.
        /// Therefore, for any instance *x*, the following is true:
        /// *convertFromCheckedStorage(convertToStorage(x)) = x*
        static func convertFromCheckedStorage(
            _ storage: borrowing Variant.Storage
        ) -> Self
        
        /// Converts a variant storage into an instance of this type.
        ///
        /// This method assumes the given variant
        /// can be converted to this type.
        ///
        /// >important: Passing an incompatible variant may stop execution.
        ///
        /// See the ``convertFromStorage(_:)`` method to get a throwing version
        /// of this method.
        ///
        /// This method acts as the reversed method of
        /// ``Variant/Storable/convertToStorage(_:)``.
        /// Therefore, for any instance *x*, the following is true:
        /// *convertFromCheckedStorage(convertToStorage(x)) = x*
        static func convertFromCheckedStorage(
            consuming storage: consuming Variant.Storage
        ) -> Self
    }
}

// MARK: - Default implementation

public extension Variant.Storable {
    static var _exposedClassName: GodotStringName { GodotStringName() }
    
    static func convertToStorageTemporarily<Result>(
        _ value: consuming Self,
        body: (_ storage: borrowing Variant.Storage) throws -> Result
    ) rethrows -> Result {
        try body(Self.convertToStorage(value))
    }
}

// MARK: - Extensions

extension Variant.Storable {
    internal static var fromTypeVariantConstructor: GDExtensionVariantFromTypeConstructorFunc
    {
        Variant.fromTypeConstructors[variantStorageType!]
    }
    
    internal static var toTypeVariantConstructor: GDExtensionVariantFromTypeConstructorFunc
    {
        Variant.toTypeConstructors[variantStorageType!]
    }
    
    public static func convertFromStorage(
        unsafePointer: UnsafeRawPointer
    ) -> Self {
        convertFromCheckedStorage(consuming: .init(godotExtensionPointer: unsafePointer))
    }
}

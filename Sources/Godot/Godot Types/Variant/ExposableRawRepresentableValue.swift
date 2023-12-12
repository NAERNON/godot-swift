
public protocol ExposableRawRepresentableValue: ExposableValue, RawRepresentable
where RawValue : ExposableValue {}

// MARK: - Default implementation

internal enum ExposableRawRepresentableValueError: Error, CustomStringConvertible {
    case cannotInitializeWithRawValue(Any.Type)
    
    var description: String {
        switch self {
        case .cannotInitializeWithRawValue(let any):
            "\(any) rawValue initializer returned nil."
        }
    }
}

public extension ExposableRawRepresentableValue {
    static func convertToStorage(_ value: consuming Self) -> Variant.Storage {
        RawValue.convertToStorage(value.rawValue)
    }
    
    static func withValueStorage<Result>(
        _ value: consuming Self,
        body: (borrowing Variant.Storage) throws -> Result
    ) rethrows -> Result {
        try RawValue.withValueStorage(value.rawValue, body: body)
    }
    
    static func convertFromStorage(_ storage: borrowing Variant.Storage) throws -> Self {
        guard let value = try Self(rawValue: RawValue.convertFromStorage(storage)) else {
            throw ExposableRawRepresentableValueError.cannotInitializeWithRawValue(Self.self)
        }
        
        return value
    }
    
    static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        Self(rawValue: RawValue.convertFromCheckedStorage(storage))!
    }
    
    static func convertFromCheckedStorage(consuming storage: consuming Variant.Storage) -> Self {
        Self(rawValue: RawValue.convertFromCheckedStorage(consuming: storage))!
    }
    
    static var variantStorageType: Variant.StorageType? {
        RawValue.variantStorageType
    }
    
    static var variantRepresentationType: Variant.RepresentationType {
        RawValue.variantRepresentationType
    }
    
    consuming func copyToGodot(
        unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer
    ) {
        rawValue.copyToGodot(unsafePointer: destinationUnsafePointer)
    }
    
    static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        Self(rawValue: RawValue.fromGodotUnsafePointer(unsafePointer))!
    }
}

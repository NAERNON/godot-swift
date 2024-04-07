
extension Optional: Variant.Storable where Wrapped : Variant.Storable {
    public static var variantStorageType: Variant.StorageType? { nil }
    
    public static func convertToStorage(
        _ value: consuming Self
    ) -> Variant.Storage {
        switch value {
        case .none:
            Variant.Storage()
        case .some(let wrapped):
            Wrapped.convertToStorage(wrapped)
        }
    }
    
    public static func convertToStorageTemporarily<Result>(
        _ value: consuming Optional<Wrapped>,
        body: (borrowing Variant.Storage) throws -> Result
    ) rethrows -> Result {
        switch value {
        case .none:
            try body(Variant.Storage())
        case .some(let wrapped):
            try Wrapped.convertToStorageTemporarily(wrapped, body: body)
        }
    }
    
    public static func convertFromStorage(
        _ storage: borrowing Variant.Storage
    ) throws -> Optional<Wrapped> {
        if storage.isNil {
            return nil
        } else {
            return try Wrapped.convertFromStorage(storage)
        }
    }
    
    public static func convertFromCheckedStorage(
        _ storage: borrowing Variant.Storage
    ) -> Self {
        if storage.isNil {
            nil
        } else {
            Wrapped.convertFromCheckedStorage(storage)
        }
    }
    
    public static func convertFromCheckedStorage(
        consuming storage: consuming Variant.Storage
    ) -> Self {
        if storage.isNil {
            nil
        } else {
            Wrapped.convertFromCheckedStorage(consuming: storage)
        }
    }
}

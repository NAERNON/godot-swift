
extension Bool: Variant.Storable {
    public static let variantStorageType: Variant.StorageType? = .bool
    
    public static func convertToStorage(
        _ value: consuming Self
    ) -> Variant.Storage {
        let storage = Variant.Storage()
        
        storage.withUnsafeMutableRawPointer { storagePtr in
            withUnsafeMutablePointer(to: &value) { valuePtr in
                fromTypeVariantConstructor(storagePtr, valuePtr)
            }
        }
        
        return storage
    }
    
    public static func convertFromCheckedStorage(
        _ storage: borrowing Variant.Storage
    ) -> Self {
        var newValue = UInt8()
        
        storage.withUnsafeMutableRawPointer { storagePtr in
            withUnsafeMutablePointer(to: &newValue) { newValuePtr in
                toTypeVariantConstructor(newValuePtr, storagePtr)
            }
        }
        
        return newValue != 0
    }
    
    public static func convertFromCheckedStorage(
        consuming storage: consuming Variant.Storage
    ) -> Self {
        convertFromCheckedStorage(storage)
    }
}

extension Bool: Hintable {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension Bool: Exposable {
    public static let variantRepresentationType: Variant.RepresentationType = .bool
    
    public static func transferFromGodot(
        unsafePointer: UnsafeRawPointer?
    ) -> Self {
        unsafePointer!.load(as: Self.self)
    }
    
    public func transferToGodot(
        unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer
    ) {
        destinationUnsafePointer.storeBytes(of: self, as: Self.self)
    }
}

extension Bool: GodotRawPointerAccessible {
    func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer?) throws -> Result
    ) rethrows -> Result {
        try withUnsafePointer(to: self) { try body($0) }
    }
    
    mutating func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer?) throws -> Result
    ) rethrows -> Result {
        try withUnsafeMutablePointer(to: &self) { try body($0) }
    }
    
    static func fromInitializingMutatingGodotUnsafePointer(
        _ body: (UnsafeMutableRawPointer) -> Void
    ) -> Self {
        var value = Self()
        withUnsafeMutablePointer(to: &value) { body($0) }
        return value
    }
}

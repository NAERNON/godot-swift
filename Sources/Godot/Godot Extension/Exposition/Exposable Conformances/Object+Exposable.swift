
extension Object: Variant.Storable {
    private enum VariantConversionError: Error, CustomStringConvertible {
        case cannotConvertToObject(type: Object.Type)
        
        var description: String {
            switch self {
            case .cannotConvertToObject(let type):
                "Error while retrieving an instance of type \(type._exposedClassName)."
            }
        }
    }
    
    public static let variantStorageType: Variant.StorageType? = .object
    
    public static func convertToStorage(
        _ value: consuming Object
    ) -> Variant.Storage {
        let storage = Variant.Storage()
        
        storage.withUnsafeMutableRawPointer { storagePtr in
            value.withUnsafeMutableRawPointer { valuePtr in
                withUnsafePointer(to: valuePtr) { pointer in
                    fromTypeVariantConstructor(
                        storagePtr,
                        UnsafeMutableRawPointer(mutating: pointer)
                    )
                }
            }
        }
        
        return storage
    }
    
    public final class func convertFromStorage(
        _ storage: borrowing Variant.Storage
    ) throws -> Self {
        try storage.checkIsConvertible(to: .object)
        
        var instancePtr = UnsafeMutableRawPointer(bitPattern: 0)
        
        storage.withUnsafeMutableRawPointer { extensionTypePtr in
            toTypeVariantConstructor(&instancePtr, extensionTypePtr)
        }
        
        guard let instance = Self.retrievedInstanceManagedByGodot(instancePtr) else {
            throw VariantConversionError.cannotConvertToObject(type: Self.self)
        }
        
        return instance
    }
    
    public final class func convertFromCheckedStorage(
        _ storage: borrowing Variant.Storage
    ) -> Self {
        var instancePtr = UnsafeMutableRawPointer(bitPattern: 0)
        
        storage.withUnsafeMutableRawPointer { extensionTypePtr in
            toTypeVariantConstructor(&instancePtr, extensionTypePtr)
        }
        
        let instance = Self.retrievedInstanceManagedByGodot(instancePtr)
        
        assert(instance != nil, "Attempting to retrieve a non optional Object from a nil variant.")
        
        return instance!
    }
    
    public static func convertFromCheckedStorage(
        consuming storage: consuming Variant.Storage
    ) -> Self {
        convertFromCheckedStorage(storage)
    }
}

extension Object: GodotRawPointerAccessible {
    func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer?) throws -> Result
    ) rethrows -> Result {
        try body(self.extensionObjectPtr)
    }
    
    func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer?) throws -> Result
    ) rethrows -> Result {
        try body(self.extensionObjectPtr)
    }
    
    static func fromInitializingMutatingGodotUnsafePointer(
        _ body: (UnsafeMutableRawPointer) -> Void
    ) -> Self {
        var objectPointer: UnsafeMutableRawPointer!
        withUnsafeMutablePointer(to: &objectPointer) { pointer in
            body(pointer)
        }
        return Self.retrievedInstanceManagedByGodot(objectPointer)!
    }
}

extension Node: Hintable {
    public typealias HintingValue = Node
    public static var defaultHint: Hint<Node> { .init(Hint<Self>.node) }
}

extension Resource: Hintable {
    public typealias HintingValue = Resource
    public static var defaultHint: Hint<Resource> { .init(Hint<Self>.resource) }
}

extension Optional: Hintable where Wrapped : Object, Wrapped : Hintable {
    public typealias HintingValue = Wrapped
    public static var defaultHint: Hint<Wrapped> { .init(Wrapped.defaultHint) }
}

extension Optional: Exposable where Wrapped : Object {
    public static var variantRepresentationType: Variant.RepresentationType {
        .object
    }
    
    public static var _exposedClassName: GodotStringName {
        Wrapped._exposedClassName
    }
    
    public func transferToGodot(
        unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer
    ) {
        switch self {
        case .none:
            return
        case .some(let wrapped):
            wrapped.transferToGodot(unsafePointer: destinationUnsafePointer)
        }
    }
    
    public static func transferFromGodot(
        unsafePointer: UnsafeRawPointer?
    ) -> Optional<Wrapped> {
        if let unsafePointer {
            Wrapped.retrievedInstanceManagedByGodot(GodotExtension.Interface.refGetObject(unsafePointer))
        } else {
            Wrapped.retrievedInstanceManagedByGodot(nil)
        }
    }
}

extension Optional: GodotRawPointerAccessible where Wrapped : Object {
    func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer?) throws -> Result
    ) rethrows -> Result {
        switch self {
        case .none:
            try body(nil)
        case .some(let wrapped):
            try body(wrapped.extensionObjectPtr)
        }
    }
    
    func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer?) throws -> Result
    ) rethrows -> Result {
        switch self {
        case .none:
            try body(nil)
        case .some(let wrapped):
            try body(wrapped.extensionObjectPtr)
        }
    }
    
    static func fromInitializingMutatingGodotUnsafePointer(
        _ body: (UnsafeMutableRawPointer) -> Void
    ) -> Self {
        var objectPointer: UnsafeMutableRawPointer!
        withUnsafeMutablePointer(to: &objectPointer) { pointer in
            body(pointer)
        }
        return Wrapped.retrievedInstanceManagedByGodot(objectPointer)
    }
}

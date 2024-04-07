
extension GodotArray: Variant.Storable {
    private enum VariantConversionError: Error, CustomStringConvertible {
        case typedArray
        case untypedArray
        case incorrectType(expected: Variant.StorageType, found: Variant.StorageType)
        case incorrectClassName(expected: GodotStringName, found: GodotStringName)
        
        var description: String {
            switch self {
            case .typedArray:
                "Attempting to convert a typed array to an untyped array."
            case .untypedArray:
                "Attempting to convert an untyped array to a typed array."
            case .incorrectType(let expected, let found):
                "Attempting to convert an array typed on \(found) to an array typed on \(expected)."
            case .incorrectClassName(let expected, let found):
                "Attempting to convert an array typed on class \(found) to an array typed on class \(expected)."
            }
        }
    }
    
    public static var variantStorageType: Variant.StorageType? {
        .array
    }
    
    public static func convertToStorage(
        _ value: consuming Self
    ) -> Variant.Storage {
        let storage = Variant.Storage()
        
        storage.withUnsafeMutableRawPointer { storagePtr in
            value.withUnsafeMutableRawPointer { valuePtr in
                fromTypeVariantConstructor(storagePtr, valuePtr)
            }
        }
        
        return storage
    }
    
    public static func convertFromStorage(
        _ storage: borrowing Variant.Storage
    ) throws -> Self {
        try storage.checkIsConvertible(to: .array)
        
        let array = GodotArray.convertFromCheckedStorage(storage)
        
        if let type = Element.variantStorageType {
            guard array._isTyped() else {
                throw VariantConversionError.untypedArray
            }
            
            let foundType = Variant.StorageType(rawValue: UInt32(array._typedBuiltin()))!
            guard foundType == type else {
                throw VariantConversionError.incorrectType(
                    expected: type,
                    found: foundType
                )
            }
            
            // If the class name is not empty, we must check against
            // the underlying array.
            if !Element._exposedClassName._isEmpty() {
                let foundClassName = array._typedClassName()
                guard foundClassName == Element._exposedClassName else {
                    throw VariantConversionError.incorrectClassName(
                        expected: Element._exposedClassName,
                        found: foundClassName
                    )
                }
            }
            
            return array
        } else {
            guard !array._isTyped() else {
                throw VariantConversionError.typedArray
            }
            
            return array
        }
    }
    
    public static func convertFromCheckedStorage(
        _ storage: borrowing Variant.Storage
    ) -> Self {
        var newValue = Self()
        
        storage.withUnsafeMutableRawPointer { storagePtr in
            newValue.withGodotUnsafeMutableRawPointer { newValuePtr in
                toTypeVariantConstructor(newValuePtr, storagePtr)
            }
        }
        
        // If no type is known for this array, then we must transform it into
        // a non typed array.
        // This is performed in O(1).
        if Element.variantStorageType == nil {
            let emptyScript: Object? = nil
            return Self._makeFromGodotArrayIntGodotStringNameVariant(
                newValue,
                0,
                "",
                emptyScript
            )
        } else {
            return newValue
        }
    }
    
    public static func convertFromCheckedStorage(
        consuming storage: consuming Variant.Storage
    ) -> Self {
        convertFromCheckedStorage(storage)
    }
}

extension GodotArray: Hintable where Element : Exportable {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .elements(Element.defaultHint) }
}

extension GodotArray: Exposable where Element : Exposable {
    public static var variantRepresentationType: Variant.RepresentationType {
        .array
    }
    
    public static func transferFromGodot(
        unsafePointer: UnsafeRawPointer?
    ) -> Self {
        Self._makeFromGodotArrayPointer(unsafePointer!)
    }
    
    // func transferToGodot
    // implemented in GodotOpaqueBuiltinClass macro
}

extension GodotArray: GodotRawPointerAccessible {
    func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer?) throws -> Result
    ) rethrows -> Result {
        try self.withUnsafeRawPointer {
            try body($0)
        }
    }
    
    mutating func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer?) throws -> Result
    ) rethrows -> Result {
        try self.withUnsafeMutableRawPointer {
            try body($0)
        }
    }
    
    // func fromInitializingMutatingGodotUnsafePointer
    // implemented in generated bindings
}

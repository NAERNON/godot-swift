import GodotExtensionHeaders

// MARK: - Bool

private var fromTypeConstructor_bool = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_BOOL)!
private var toTypeConstructor_bool = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_BOOL)!

extension Bool: VariantStorable {
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_bool(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = UInt8()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_bool(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue != 0
    }
    
    func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafePointer(to: self) { try body($0) }
    }
    
    mutating func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafeMutablePointer(to: &self) { try body($0) }
    }
    
    static func fromMutatingGodotUnsafePointer(_ body: (UnsafeMutableRawPointer) -> Void) -> Self {
        var value = Self()
        withUnsafeMutablePointer(to: &value) { body($0) }
        return value
    }
}

// MARK: - Int

private var fromTypeConstructor_int = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_INT)!
private var toTypeConstructor_int = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_INT)!

extension Int: VariantStorable {
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_int(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Self()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_int(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafePointer(to: self) { try body($0) }
    }
    
    mutating func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafeMutablePointer(to: &self) { try body($0) }
    }
    
    static func fromMutatingGodotUnsafePointer(_ body: (UnsafeMutableRawPointer) -> Void) -> Self {
        var value = Self()
        withUnsafeMutablePointer(to: &value) { body($0) }
        return value
    }
}

extension Int8: VariantStorable {
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_int(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Self()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_int(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafePointer(to: self) { try body($0) }
    }
    
    mutating func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafeMutablePointer(to: &self) { try body($0) }
    }
    
    static func fromMutatingGodotUnsafePointer(_ body: (UnsafeMutableRawPointer) -> Void) -> Self {
        var value = Self()
        withUnsafeMutablePointer(to: &value) { body($0) }
        return value
    }
}

extension Int16: VariantStorable {
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_int(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Self()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_int(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafePointer(to: self) { try body($0) }
    }
    
    mutating func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafeMutablePointer(to: &self) { try body($0) }
    }
    
    static func fromMutatingGodotUnsafePointer(_ body: (UnsafeMutableRawPointer) -> Void) -> Self {
        var value = Self()
        withUnsafeMutablePointer(to: &value) { body($0) }
        return value
    }
}

extension Int32: VariantStorable {
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_int(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Self()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_int(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafePointer(to: self) { try body($0) }
    }
    
    mutating func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafeMutablePointer(to: &self) { try body($0) }
    }
    
    static func fromMutatingGodotUnsafePointer(_ body: (UnsafeMutableRawPointer) -> Void) -> Self {
        var value = Self()
        withUnsafeMutablePointer(to: &value) { body($0) }
        return value
    }
}

extension Int64: VariantStorable {
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_int(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Self()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_int(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafePointer(to: self) { try body($0) }
    }
    
    mutating func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafeMutablePointer(to: &self) { try body($0) }
    }
    
    static func fromMutatingGodotUnsafePointer(_ body: (UnsafeMutableRawPointer) -> Void) -> Self {
        var value = Self()
        withUnsafeMutablePointer(to: &value) { body($0) }
        return value
    }
}

extension UInt8: VariantStorable {
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_int(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Self()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_int(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafePointer(to: self) { try body($0) }
    }
    
    mutating func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafeMutablePointer(to: &self) { try body($0) }
    }
    
    static func fromMutatingGodotUnsafePointer(_ body: (UnsafeMutableRawPointer) -> Void) -> Self {
        var value = Self()
        withUnsafeMutablePointer(to: &value) { body($0) }
        return value
    }
}

extension UInt: VariantStorable {
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_int(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Self()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_int(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafePointer(to: self) { try body($0) }
    }
    
    mutating func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafeMutablePointer(to: &self) { try body($0) }
    }
    
    static func fromMutatingGodotUnsafePointer(_ body: (UnsafeMutableRawPointer) -> Void) -> Self {
        var value = Self()
        withUnsafeMutablePointer(to: &value) { body($0) }
        return value
    }
}

extension UInt16: VariantStorable {
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_int(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Self()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_int(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafePointer(to: self) { try body($0) }
    }
    
    mutating func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafeMutablePointer(to: &self) { try body($0) }
    }
    
    static func fromMutatingGodotUnsafePointer(_ body: (UnsafeMutableRawPointer) -> Void) -> Self {
        var value = Self()
        withUnsafeMutablePointer(to: &value) { body($0) }
        return value
    }
}

extension UInt32: VariantStorable {
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_int(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Self()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_int(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafePointer(to: self) { try body($0) }
    }
    
    mutating func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafeMutablePointer(to: &self) { try body($0) }
    }
    
    static func fromMutatingGodotUnsafePointer(_ body: (UnsafeMutableRawPointer) -> Void) -> Self {
        var value = Self()
        withUnsafeMutablePointer(to: &value) { body($0) }
        return value
    }
}

extension UInt64: VariantStorable {
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_int(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Self()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_int(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafePointer(to: self) { try body($0) }
    }
    
    mutating func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafeMutablePointer(to: &self) { try body($0) }
    }
    
    static func fromMutatingGodotUnsafePointer(_ body: (UnsafeMutableRawPointer) -> Void) -> Self {
        var value = Self()
        withUnsafeMutablePointer(to: &value) { body($0) }
        return value
    }
}

// MARK: - Double

private var fromTypeConstructor_float = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_FLOAT)!
private var toTypeConstructor_float = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_FLOAT)!

extension Double: VariantStorable {
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_float(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Self()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_float(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafePointer(to: self) { try body($0) }
    }
    
    mutating func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafeMutablePointer(to: &self) { try body($0) }
    }
    
    static func fromMutatingGodotUnsafePointer(_ body: (UnsafeMutableRawPointer) -> Void) -> Self {
        var value = Self()
        withUnsafeMutablePointer(to: &value) { body($0) }
        return value
    }
}

// MARK: - Float

extension Float: VariantStorable {
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafePointer(to: Double(value)) { otherNativeTypePtr in
                fromTypeConstructor_float(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Double()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_float(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return Float(newValue)
    }
    
    func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafePointer(to: self) { try body($0) }
    }
    
    mutating func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafeMutablePointer(to: &self) { try body($0) }
    }
    
    static func fromMutatingGodotUnsafePointer(_ body: (UnsafeMutableRawPointer) -> Void) -> Self {
        var value = Self()
        withUnsafeMutablePointer(to: &value) { body($0) }
        return value
    }
}

// MARK: - GodotString

private var fromTypeConstructor_string = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_STRING)!
private var toTypeConstructor_string = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_STRING)!

extension GodotString: VariantStorable {
    public static func convertToStorage(_ value: consuming Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            value.withGodotUnsafeMutableRawPointer { otherNativeTypePtr in
                fromTypeConstructor_string(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = GodotString()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            newValue.withGodotUnsafeMutableRawPointer { otherNativeTypePtr in
                toTypeConstructor_string(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - Vector2

private var fromTypeConstructor_vector2 = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_VECTOR2)!
private var toTypeConstructor_vector2 = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_VECTOR2)!

extension Vector2: VariantStorableIn, VariantStorableOut, VariantStorable {
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_vector2(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Vector2()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_vector2(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafePointer(to: self) { try body($0) }
    }
    
    mutating func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafeMutablePointer(to: &self) { try body($0) }
    }
    
    static func fromMutatingGodotUnsafePointer(_ body: (UnsafeMutableRawPointer) -> Void) -> Self {
        var value = Self()
        withUnsafeMutablePointer(to: &value) { body($0) }
        return value
    }
}

// MARK: - Vector2I

private var fromTypeConstructor_vector2i = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_VECTOR2I)!
private var toTypeConstructor_vector2i = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_VECTOR2I)!

extension Vector2I: VariantStorable {
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_vector2i(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Vector2I()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_vector2i(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafePointer(to: self) { try body($0) }
    }
    
    mutating func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafeMutablePointer(to: &self) { try body($0) }
    }
    
    static func fromMutatingGodotUnsafePointer(_ body: (UnsafeMutableRawPointer) -> Void) -> Self {
        var value = Self()
        withUnsafeMutablePointer(to: &value) { body($0) }
        return value
    }
}

// MARK: - Rect2

private var fromTypeConstructor_rect2 = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_RECT2)!
private var toTypeConstructor_rect2 = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_RECT2)!

extension Rect2: VariantStorable {
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_rect2(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Rect2()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_rect2(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafePointer(to: self) { try body($0) }
    }
    
    mutating func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafeMutablePointer(to: &self) { try body($0) }
    }
    
    static func fromMutatingGodotUnsafePointer(_ body: (UnsafeMutableRawPointer) -> Void) -> Self {
        var value = Self()
        withUnsafeMutablePointer(to: &value) { body($0) }
        return value
    }
}

// MARK: - Rect2I

private var fromTypeConstructor_rect2i = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_RECT2I)!
private var toTypeConstructor_rect2i = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_RECT2I)!

extension Rect2I: VariantStorable {
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_rect2i(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Rect2I()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_rect2i(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafePointer(to: self) { try body($0) }
    }
    
    mutating func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafeMutablePointer(to: &self) { try body($0) }
    }
    
    static func fromMutatingGodotUnsafePointer(_ body: (UnsafeMutableRawPointer) -> Void) -> Self {
        var value = Self()
        withUnsafeMutablePointer(to: &value) { body($0) }
        return value
    }
}

// MARK: - Vector3

private var fromTypeConstructor_vector3 = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_VECTOR3)!
private var toTypeConstructor_vector3 = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_VECTOR3)!

extension Vector3: VariantStorable {
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_vector3(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Vector3()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_vector3(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafePointer(to: self) { try body($0) }
    }
    
    mutating func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafeMutablePointer(to: &self) { try body($0) }
    }
    
    static func fromMutatingGodotUnsafePointer(_ body: (UnsafeMutableRawPointer) -> Void) -> Self {
        var value = Self()
        withUnsafeMutablePointer(to: &value) { body($0) }
        return value
    }
}

// MARK: - Vector3I

private var fromTypeConstructor_vector3i = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_VECTOR3I)!
private var toTypeConstructor_vector3i = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_VECTOR3I)!

extension Vector3I: VariantStorable {
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_vector3i(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Vector3I()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_vector3i(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafePointer(to: self) { try body($0) }
    }
    
    mutating func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafeMutablePointer(to: &self) { try body($0) }
    }
    
    static func fromMutatingGodotUnsafePointer(_ body: (UnsafeMutableRawPointer) -> Void) -> Self {
        var value = Self()
        withUnsafeMutablePointer(to: &value) { body($0) }
        return value
    }
}

// MARK: - Transform2D

private var fromTypeConstructor_transform2D = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D)!
private var toTypeConstructor_transform2D = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D)!

extension Transform2D: VariantStorable {
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_transform2D(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Transform2D()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_transform2D(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafePointer(to: self) { try body($0) }
    }
    
    mutating func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafeMutablePointer(to: &self) { try body($0) }
    }
    
    static func fromMutatingGodotUnsafePointer(_ body: (UnsafeMutableRawPointer) -> Void) -> Self {
        var value = Self()
        withUnsafeMutablePointer(to: &value) { body($0) }
        return value
    }
}

// MARK: - Vector4

private var fromTypeConstructor_vector4 = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_VECTOR4)!
private var toTypeConstructor_vector4 = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_VECTOR4)!

extension Vector4: VariantStorable {
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_vector4(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Vector4()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_vector4(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafePointer(to: self) { try body($0) }
    }
    
    mutating func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafeMutablePointer(to: &self) { try body($0) }
    }
    
    static func fromMutatingGodotUnsafePointer(_ body: (UnsafeMutableRawPointer) -> Void) -> Self {
        var value = Self()
        withUnsafeMutablePointer(to: &value) { body($0) }
        return value
    }
}

// MARK: - Vector4I

private var fromTypeConstructor_vector4i = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_VECTOR4I)!
private var toTypeConstructor_vector4i = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_VECTOR4I)!

extension Vector4I: VariantStorable {
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_vector4i(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Vector4I()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_vector4i(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafePointer(to: self) { try body($0) }
    }
    
    mutating func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafeMutablePointer(to: &self) { try body($0) }
    }
    
    static func fromMutatingGodotUnsafePointer(_ body: (UnsafeMutableRawPointer) -> Void) -> Self {
        var value = Self()
        withUnsafeMutablePointer(to: &value) { body($0) }
        return value
    }
}

// MARK: - Plane

private var fromTypeConstructor_plane = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_PLANE)!
private var toTypeConstructor_plane = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_PLANE)!

extension Plane: VariantStorable {
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_plane(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Plane()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_plane(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafePointer(to: self) { try body($0) }
    }
    
    mutating func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafeMutablePointer(to: &self) { try body($0) }
    }
    
    static func fromMutatingGodotUnsafePointer(_ body: (UnsafeMutableRawPointer) -> Void) -> Self {
        var value = Self()
        withUnsafeMutablePointer(to: &value) { body($0) }
        return value
    }
}

// MARK: - Quaternion

private var fromTypeConstructor_quaternion = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_QUATERNION)!
private var toTypeConstructor_quaternion = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_QUATERNION)!

extension Quaternion: VariantStorable {
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_quaternion(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Quaternion()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_quaternion(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafePointer(to: self) { try body($0) }
    }
    
    mutating func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafeMutablePointer(to: &self) { try body($0) }
    }
    
    static func fromMutatingGodotUnsafePointer(_ body: (UnsafeMutableRawPointer) -> Void) -> Self {
        var value = Self()
        withUnsafeMutablePointer(to: &value) { body($0) }
        return value
    }
}

// MARK: - AABB

private var fromTypeConstructor_aabb = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_AABB)!
private var toTypeConstructor_aabb = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_AABB)!

extension AABB: VariantStorable {
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_aabb(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = AABB()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_aabb(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafePointer(to: self) { try body($0) }
    }
    
    mutating func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafeMutablePointer(to: &self) { try body($0) }
    }
    
    static func fromMutatingGodotUnsafePointer(_ body: (UnsafeMutableRawPointer) -> Void) -> Self {
        var value = Self()
        withUnsafeMutablePointer(to: &value) { body($0) }
        return value
    }
}

// MARK: - Basis

private var fromTypeConstructor_basis = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_BASIS)!
private var toTypeConstructor_basis = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_BASIS)!

extension Basis: VariantStorable {
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_basis(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Basis()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_basis(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafePointer(to: self) { try body($0) }
    }
    
    mutating func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafeMutablePointer(to: &self) { try body($0) }
    }
    
    static func fromMutatingGodotUnsafePointer(_ body: (UnsafeMutableRawPointer) -> Void) -> Self {
        var value = Self()
        withUnsafeMutablePointer(to: &value) { body($0) }
        return value
    }
}

// MARK: - Transform3D

private var fromTypeConstructor_transform3D = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D)!
private var toTypeConstructor_transform3D = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D)!

extension Transform3D: VariantStorable {
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_transform3D(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Transform3D()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_transform3D(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafePointer(to: self) { try body($0) }
    }
    
    mutating func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafeMutablePointer(to: &self) { try body($0) }
    }
    
    static func fromMutatingGodotUnsafePointer(_ body: (UnsafeMutableRawPointer) -> Void) -> Self {
        var value = Self()
        withUnsafeMutablePointer(to: &value) { body($0) }
        return value
    }
}

// MARK: - Projection

private var fromTypeConstructor_projection = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_PROJECTION)!
private var toTypeConstructor_projection = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_PROJECTION)!

extension Projection: VariantStorable {
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_projection(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Projection()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_projection(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafePointer(to: self) { try body($0) }
    }
    
    mutating func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafeMutablePointer(to: &self) { try body($0) }
    }
    
    static func fromMutatingGodotUnsafePointer(_ body: (UnsafeMutableRawPointer) -> Void) -> Self {
        var value = Self()
        withUnsafeMutablePointer(to: &value) { body($0) }
        return value
    }
}

// MARK: - Color

private var fromTypeConstructor_color = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_COLOR)!
private var toTypeConstructor_color = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_COLOR)!

extension Color: VariantStorable {
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_color(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Color()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_color(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafePointer(to: self) { try body($0) }
    }
    
    mutating func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result {
        try withUnsafeMutablePointer(to: &self) { try body($0) }
    }
    
    static func fromMutatingGodotUnsafePointer(_ body: (UnsafeMutableRawPointer) -> Void) -> Self {
        var value = Self()
        withUnsafeMutablePointer(to: &value) { body($0) }
        return value
    }
}

// MARK: - GodotStringName

private var fromTypeConstructor_stringName = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_STRING_NAME)!
private var toTypeConstructor_stringName = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_STRING_NAME)!

extension GodotStringName: VariantStorable {
    public static func convertToStorage(_ value: consuming Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            value.withGodotUnsafeMutableRawPointer { otherNativeTypePtr in
                fromTypeConstructor_stringName(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = GodotStringName()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            newValue.withGodotUnsafeMutableRawPointer { otherNativeTypePtr in
                toTypeConstructor_stringName(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - NodePath

private var fromTypeConstructor_nodePath = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_NODE_PATH)!
private var toTypeConstructor_nodePath = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_NODE_PATH)!

extension NodePath: VariantStorable {
    public static func convertToStorage(_ value: consuming Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            value.withGodotUnsafeMutableRawPointer { otherNativeTypePtr in
                fromTypeConstructor_nodePath(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = NodePath()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            newValue.withGodotUnsafeMutableRawPointer { otherNativeTypePtr in
                toTypeConstructor_nodePath(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - RID

private var fromTypeConstructor_rid = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_RID)!
private var toTypeConstructor_rid = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_RID)!

extension RID: VariantStorable {
    public static func convertToStorage(_ value: consuming Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            value.withGodotUnsafeMutableRawPointer { otherNativeTypePtr in
                fromTypeConstructor_rid(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = RID()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            newValue.withGodotUnsafeMutableRawPointer { otherNativeTypePtr in
                toTypeConstructor_rid(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - Object

private var fromTypeConstructor_object = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_OBJECT)!
private var toTypeConstructor_object = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_OBJECT)!

extension Object: VariantStorable {
    private enum VariantConversionError: Error, CustomStringConvertible {
        case cannotConvertToObject(type: Object.Type)
        
        var description: String {
            switch self {
            case .cannotConvertToObject(let type):
                "Error while retrieving an instance of type \(type._exposedClassName)."
            }
        }
    }
    
    public static var variantStorageType: Variant.StorageType? { .object }
    
    public final class func convertToStorage(_ value: consuming Object) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            value.withGodotUnsafeRawPointer { otherNativeTypePtr in
                withUnsafePointer(to: otherNativeTypePtr) { pointer in
                    fromTypeConstructor_object(extensionTypePtr, UnsafeMutableRawPointer(mutating: pointer))
                }
            }
        }
        return variant
    }
    
    public final class func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var instancePtr = UnsafeMutableRawPointer(bitPattern: 0)
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            toTypeConstructor_object(&instancePtr, extensionTypePtr)
        }
        
        let instance = Self.retrievedInstanceManagedByGodot(instancePtr)
        
        assert(instance != nil, "Attempting to retrieve a non optional Object from a nil variant.")
        
        return instance!
    }
    
    public final class func convertFromStorage(_ storage: borrowing Variant.Storage) throws -> Self {
        try storage.checkIsConvertible(to: .object)
        
        var instancePtr = UnsafeMutableRawPointer(bitPattern: 0)
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            toTypeConstructor_object(&instancePtr, extensionTypePtr)
        }
        
        guard let instance = Self.retrievedInstanceManagedByGodot(instancePtr) else {
            throw VariantConversionError.cannotConvertToObject(type: Self.self)
        }
        
        return instance
    }
    
    public func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer) throws -> Result
    ) rethrows -> Result {
        try body(extensionObjectPtr)
    }
    
    public func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result {
        try body(extensionObjectPtr)
    }
}

// MARK: - Optional<Object>

extension Optional: VariantStorable where Wrapped : Object {
    public static var variantStorageType: Variant.StorageType? { .object }
    
    public func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer?) throws -> Result
    ) rethrows -> Result {
        switch self {
        case .none:
            try body(nil)
        case .some(let wrapped):
            try wrapped.withGodotUnsafeRawPointer(body)
        }
    }
    
    public func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer?) throws -> Result
    ) rethrows -> Result {
        switch self {
        case .none:
            try body(nil)
        case .some(let wrapped):
            try wrapped.withGodotUnsafeMutableRawPointer(body)
        }
    }
    
    static func fromMutatingGodotUnsafePointer(_ body: (UnsafeMutableRawPointer) -> Void) -> Self {
        var objectPointer: UnsafeMutableRawPointer!
        withUnsafeMutablePointer(to: &objectPointer) { pointer in
            body(pointer)
        }
        return Wrapped.retrievedInstanceManagedByGodot(objectPointer)
    }
}

// MARK: - Callable

private var fromTypeConstructor_callable = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_CALLABLE)!
private var toTypeConstructor_callable = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_CALLABLE)!

extension Callable: VariantStorable {
    public static func convertToStorage(_ value: consuming Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            value.withGodotUnsafeMutableRawPointer { otherNativeTypePtr in
                fromTypeConstructor_callable(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Callable()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            newValue.withGodotUnsafeMutableRawPointer { otherNativeTypePtr in
                toTypeConstructor_callable(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - Signal

private var fromTypeConstructor_signal = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_SIGNAL)!
private var toTypeConstructor_signal = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_SIGNAL)!

extension Signal: VariantStorable {
    public static func convertToStorage(_ value: consuming Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            value.withGodotUnsafeMutableRawPointer { otherNativeTypePtr in
                fromTypeConstructor_signal(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Signal()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            newValue.withGodotUnsafeMutableRawPointer { otherNativeTypePtr in
                toTypeConstructor_signal(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - GodotDictionary

private var fromTypeConstructor_dictionary = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
private var toTypeConstructor_dictionary = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_DICTIONARY)!

extension GodotDictionary: VariantStorableIn {
    public static func convertToStorage(_ value: consuming Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            value.withGodotUnsafeMutableRawPointer { otherNativeTypePtr in
                fromTypeConstructor_dictionary(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
}

extension GodotDictionary: VariantStorableOut
where Key == Variant, AssociatedValue == Variant
{
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = GodotDictionary()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            newValue.withGodotUnsafeMutableRawPointer { otherNativeTypePtr in
                toTypeConstructor_dictionary(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension GodotDictionary: VariantStorable
where Key == Variant, AssociatedValue == Variant
{
    public static var variantStorageType: Variant.StorageType? { .dictionary }
}

// MARK: - GodotArray

private var fromTypeConstructor_array = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_ARRAY)!
private var toTypeConstructor_array = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_ARRAY)!

extension GodotArray: VariantStorable {
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
    
    public static var variantStorageType: Variant.StorageType? { .array }
    
    public static func convertToStorage(_ value: consuming Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            value.withGodotUnsafeMutableRawPointer { otherNativeTypePtr in
                fromTypeConstructor_array(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func convertFromStorage(_ storage: borrowing Variant.Storage) throws -> Self {
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
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = GodotArray()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            newValue.withGodotUnsafeMutableRawPointer { otherNativeTypePtr in
                toTypeConstructor_array(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - PackedByteArray

private var fromTypeConstructor_packedByteArray = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY)!
private var toTypeConstructor_packedByteArray = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY)!

extension PackedByteArray: VariantStorable {
    public static func convertToStorage(_ value: consuming Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            value.withGodotUnsafeMutableRawPointer { otherNativeTypePtr in
                fromTypeConstructor_packedByteArray(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = PackedByteArray()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            newValue.withGodotUnsafeMutableRawPointer { otherNativeTypePtr in
                toTypeConstructor_packedByteArray(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - PackedInt32Array

private var fromTypeConstructor_packedInt32Array = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY)!
private var toTypeConstructor_packedInt32Array = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY)!

extension PackedInt32Array: VariantStorable {
    public static func convertToStorage(_ value: consuming Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            value.withGodotUnsafeMutableRawPointer { otherNativeTypePtr in
                fromTypeConstructor_packedInt32Array(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = PackedInt32Array()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            newValue.withGodotUnsafeMutableRawPointer { otherNativeTypePtr in
                toTypeConstructor_packedInt32Array(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - PackedInt64Array

private var fromTypeConstructor_packedInt64Array = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY)!
private var toTypeConstructor_packedInt64Array = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY)!

extension PackedInt64Array: VariantStorable {
    public static func convertToStorage(_ value: consuming Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            value.withGodotUnsafeMutableRawPointer { otherNativeTypePtr in
                fromTypeConstructor_packedInt64Array(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = PackedInt64Array()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            newValue.withGodotUnsafeMutableRawPointer { otherNativeTypePtr in
                toTypeConstructor_packedInt64Array(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - PackedFloat32Array

private var fromTypeConstructor_packedFloat32Array = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT32_ARRAY)!
private var toTypeConstructor_packedFloat32Array = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT32_ARRAY)!

extension PackedFloat32Array: VariantStorable {
    public static func convertToStorage(_ value: consuming Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            value.withGodotUnsafeMutableRawPointer { otherNativeTypePtr in
                fromTypeConstructor_packedFloat32Array(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = PackedFloat32Array()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            newValue.withGodotUnsafeMutableRawPointer { otherNativeTypePtr in
                toTypeConstructor_packedFloat32Array(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - PackedFloat64Array

private var fromTypeConstructor_packedFloat64Array = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY)!
private var toTypeConstructor_packedFloat64Array = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY)!

extension PackedFloat64Array: VariantStorable {
    public static func convertToStorage(_ value: consuming Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            value.withGodotUnsafeMutableRawPointer { otherNativeTypePtr in
                fromTypeConstructor_packedFloat64Array(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = PackedFloat64Array()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            newValue.withGodotUnsafeMutableRawPointer { otherNativeTypePtr in
                toTypeConstructor_packedFloat64Array(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - PackedStringArray

private var fromTypeConstructor_packedStringArray = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY)!
private var toTypeConstructor_packedStringArray = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY)!

extension PackedStringArray: VariantStorable {
    public static func convertToStorage(_ value: consuming Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            value.withGodotUnsafeMutableRawPointer { otherNativeTypePtr in
                fromTypeConstructor_packedStringArray(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = PackedStringArray()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            newValue.withGodotUnsafeMutableRawPointer { otherNativeTypePtr in
                toTypeConstructor_packedStringArray(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - PackedVector2Array

private var fromTypeConstructor_packedVector2Array = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR2_ARRAY)!
private var toTypeConstructor_packedVector2Array = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR2_ARRAY)!

extension PackedVector2Array: VariantStorable {
    public static func convertToStorage(_ value: consuming Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            value.withGodotUnsafeMutableRawPointer { otherNativeTypePtr in
                fromTypeConstructor_packedVector2Array(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = PackedVector2Array()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            newValue.withGodotUnsafeMutableRawPointer { otherNativeTypePtr in
                toTypeConstructor_packedVector2Array(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - PackedVector3Array

private var fromTypeConstructor_packedVector3Array = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY)!
private var toTypeConstructor_packedVector3Array = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY)!

extension PackedVector3Array: VariantStorable {
    public static func convertToStorage(_ value: consuming Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            value.withGodotUnsafeMutableRawPointer { otherNativeTypePtr in
                fromTypeConstructor_packedVector3Array(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = PackedVector3Array()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            newValue.withGodotUnsafeMutableRawPointer { otherNativeTypePtr in
                toTypeConstructor_packedVector3Array(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - PackedColorArray

private var fromTypeConstructor_packedColorArray = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY)!
private var toTypeConstructor_packedColorArray = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY)!

extension PackedColorArray: VariantStorable {
    public static func convertToStorage(_ value: consuming Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            value.withGodotUnsafeMutableRawPointer { otherNativeTypePtr in
                fromTypeConstructor_packedColorArray(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = PackedColorArray()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            newValue.withGodotUnsafeMutableRawPointer { otherNativeTypePtr in
                toTypeConstructor_packedColorArray(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - Optional

extension Optional: VariantStorableIn where Wrapped : VariantStorableIn {
    public static func convertToStorage(_ value: consuming Self) -> Variant.Storage {
        switch value {
        case .none:
            Variant.Storage()
        case .some(let wrapped):
            Wrapped.convertToStorage(wrapped)
        }
    }
    
    public static func withValueStorage<Result>(
        _ value: consuming Optional<Wrapped>
        , body: (borrowing Variant.Storage) throws -> Result
    ) rethrows -> Result {
        switch value {
        case .none:
            try body(Variant.Storage())
        case .some(let wrapped):
            try Wrapped.withValueStorage(wrapped, body: body)
        }
    }
}

extension Optional: VariantStorableOut where Wrapped : VariantStorableOut {
    public static func convertFromStorage(_ storage: borrowing Variant.Storage) throws -> Self {
        if storage.isNil {
            nil
        } else {
            try Wrapped.convertFromStorage(storage)
        }
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        if storage.isNil {
            nil
        } else {
            Wrapped.convertFromCheckedStorage(storage)
        }
    }
    
    public static func convertFromCheckedStorage(consuming storage: consuming Variant.Storage) -> Self {
        if storage.isNil {
            nil
        } else {
            Wrapped.convertFromCheckedStorage(consuming: storage)
        }
    }
}

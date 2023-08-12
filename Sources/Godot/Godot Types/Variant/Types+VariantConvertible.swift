import GodotExtensionHeaders

// MARK: - Bool

private var fromTypeConstructor_bool = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_BOOL)!
private var toTypeConstructor_bool = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_BOOL)!

extension Bool: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .bool
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                fromTypeConstructor_bool(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = UInt8()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_bool(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue != 0
    }
}

// MARK: - Int

private var fromTypeConstructor_int = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_INT)!
private var toTypeConstructor_int = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_INT)!

extension Int: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .int
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                fromTypeConstructor_int(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Self()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_int(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    public static func fromVariant(_ variant: Variant) throws -> Self {
        guard variant.isNumeric else {
            throw Variant.ConversionError.variantToValue(from: variant.type, to: Self.variantType.storageType)
        }
        
        return fromMatchingTypeVariant(variant)
    }
}

extension Int8: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .int8
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                fromTypeConstructor_int(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Self()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_int(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    public static func fromVariant(_ variant: Variant) throws -> Self {
        guard variant.isNumeric else {
            throw Variant.ConversionError.variantToValue(from: variant.type, to: Self.variantType.storageType)
        }
        
        return fromMatchingTypeVariant(variant)
    }
}

extension Int16: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .int16
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                fromTypeConstructor_int(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Self()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_int(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    public static func fromVariant(_ variant: Variant) throws -> Self {
        guard variant.isNumeric else {
            throw Variant.ConversionError.variantToValue(from: variant.type, to: Self.variantType.storageType)
        }
        
        return fromMatchingTypeVariant(variant)
    }
}

extension Int32: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .int32
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                fromTypeConstructor_int(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Self()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_int(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    public static func fromVariant(_ variant: Variant) throws -> Self {
        guard variant.isNumeric else {
            throw Variant.ConversionError.variantToValue(from: variant.type, to: Self.variantType.storageType)
        }
        
        return fromMatchingTypeVariant(variant)
    }
}

extension Int64: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .int64
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                fromTypeConstructor_int(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Self()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_int(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    public static func fromVariant(_ variant: Variant) throws -> Self {
        guard variant.isNumeric else {
            throw Variant.ConversionError.variantToValue(from: variant.type, to: Self.variantType.storageType)
        }
        
        return fromMatchingTypeVariant(variant)
    }
}

extension UInt8: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .uint8
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                fromTypeConstructor_int(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Self()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_int(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    public static func fromVariant(_ variant: Variant) throws -> Self {
        guard variant.isNumeric else {
            throw Variant.ConversionError.variantToValue(from: variant.type, to: Self.variantType.storageType)
        }
        
        return fromMatchingTypeVariant(variant)
    }
}

extension UInt16: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .uint16
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                fromTypeConstructor_int(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Self()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_int(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    public static func fromVariant(_ variant: Variant) throws -> Self {
        guard variant.isNumeric else {
            throw Variant.ConversionError.variantToValue(from: variant.type, to: Self.variantType.storageType)
        }
        
        return fromMatchingTypeVariant(variant)
    }
}

extension UInt32: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .uint32
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                fromTypeConstructor_int(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Self()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_int(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    public static func fromVariant(_ variant: Variant) throws -> Self {
        guard variant.isNumeric else {
            throw Variant.ConversionError.variantToValue(from: variant.type, to: Self.variantType.storageType)
        }
        
        return fromMatchingTypeVariant(variant)
    }
}

extension UInt64: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .uint64
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                fromTypeConstructor_int(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Self()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_int(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    public static func fromVariant(_ variant: Variant) throws -> Self {
        guard variant.isNumeric else {
            throw Variant.ConversionError.variantToValue(from: variant.type, to: Self.variantType.storageType)
        }
        
        return fromMatchingTypeVariant(variant)
    }
}

// MARK: - Floating point

private var fromTypeConstructor_float = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_FLOAT)!
private var toTypeConstructor_float = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_FLOAT)!

extension Double: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .double
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                fromTypeConstructor_float(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Self()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_float(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    public static func fromVariant(_ variant: Variant) throws -> Self {
        guard variant.isNumeric else {
            throw Variant.ConversionError.variantToValue(from: variant.type, to: Self.variantType.storageType)
        }
        
        return fromMatchingTypeVariant(variant)
    }
}

extension Float: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .float
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                fromTypeConstructor_float(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Double()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_float(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return Float(newValue)
    }
    
    public static func fromVariant(_ variant: Variant) throws -> Self {
        guard variant.isNumeric else {
            throw Variant.ConversionError.variantToValue(from: variant.type, to: Self.variantType.storageType)
        }
        
        return fromMatchingTypeVariant(variant)
    }
}

extension Real: VariantConvertible {
    public static let variantType: Variant.RepresentationType = RawValue.variantType
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                fromTypeConstructor_float(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = RawValue()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_float(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return Real(newValue)
    }
    
    public static func fromVariant(_ variant: Variant) throws -> Self {
        guard variant.isNumeric else {
            throw Variant.ConversionError.variantToValue(from: variant.type, to: Self.variantType.storageType)
        }
        
        return fromMatchingTypeVariant(variant)
    }
}

// MARK: - GodotString

private var fromTypeConstructor_string = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_STRING)!
private var toTypeConstructor_string = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_STRING)!

extension GodotString: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .string
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            self.withUnsafeRawPointer { otherNativeTypePtr in
                fromTypeConstructor_string(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        let newValue = GodotString()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            newValue.withUnsafeRawPointer { otherNativeTypePtr in
                toTypeConstructor_string(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - Vector2

private var fromTypeConstructor_vector2 = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR2)!
private var toTypeConstructor_vector2 = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR2)!

extension Vector2: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .vector2
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                fromTypeConstructor_vector2(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Vector2()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_vector2(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - Vector2i

private var fromTypeConstructor_vector2i = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR2I)!
private var toTypeConstructor_vector2i = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR2I)!

extension Vector2i: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .vector2i
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                fromTypeConstructor_vector2i(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Vector2i()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_vector2i(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - Rect2

private var fromTypeConstructor_rect2 = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_RECT2)!
private var toTypeConstructor_rect2 = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_RECT2)!

extension Rect2: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .rect2
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                fromTypeConstructor_rect2(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Rect2()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_rect2(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - Rect2i

private var fromTypeConstructor_rect2i = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_RECT2I)!
private var toTypeConstructor_rect2i = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_RECT2I)!

extension Rect2i: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .rect2i
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                fromTypeConstructor_rect2i(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Rect2i()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_rect2i(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - Vector3

private var fromTypeConstructor_vector3 = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR3)!
private var toTypeConstructor_vector3 = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR3)!

extension Vector3: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .vector3
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                fromTypeConstructor_vector3(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Vector3()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_vector3(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - Vector3i

private var fromTypeConstructor_vector3i = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR3I)!
private var toTypeConstructor_vector3i = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR3I)!

extension Vector3i: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .vector3i
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                fromTypeConstructor_vector3i(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Vector3i()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_vector3i(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - Transform2D

private var fromTypeConstructor_transform2D = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D)!
private var toTypeConstructor_transform2D = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D)!

extension Transform2D: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .transform2D
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                fromTypeConstructor_transform2D(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Transform2D()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_transform2D(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - Vector4

private var fromTypeConstructor_vector4 = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR4)!
private var toTypeConstructor_vector4 = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR4)!

extension Vector4: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .vector4
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                fromTypeConstructor_vector4(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Vector4()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_vector4(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - Vector4i

private var fromTypeConstructor_vector4i = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR4I)!
private var toTypeConstructor_vector4i = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR4I)!

extension Vector4i: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .vector4i
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                fromTypeConstructor_vector4i(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Vector4i()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_vector4i(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - Plane

private var fromTypeConstructor_plane = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_PLANE)!
private var toTypeConstructor_plane = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_PLANE)!

extension Plane: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .plane
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                fromTypeConstructor_plane(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Plane()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_plane(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - Quaternion

private var fromTypeConstructor_quaternion = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_QUATERNION)!
private var toTypeConstructor_quaternion = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_QUATERNION)!

extension Quaternion: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .quaternion
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                fromTypeConstructor_quaternion(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Quaternion()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_quaternion(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - AABB

private var fromTypeConstructor_aabb = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_AABB)!
private var toTypeConstructor_aabb = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_AABB)!

extension AABB: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .aabb
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                fromTypeConstructor_aabb(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = AABB()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_aabb(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - Basis

private var fromTypeConstructor_basis = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_BASIS)!
private var toTypeConstructor_basis = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_BASIS)!

extension Basis: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .basis
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                fromTypeConstructor_basis(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Basis()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_basis(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - Transform3D

private var fromTypeConstructor_transform3D = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D)!
private var toTypeConstructor_transform3D = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D)!

extension Transform3D: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .transform3D
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                fromTypeConstructor_transform3D(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Transform3D()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_transform3D(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - Projection

private var fromTypeConstructor_projection = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_PROJECTION)!
private var toTypeConstructor_projection = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_PROJECTION)!

extension Projection: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .projection
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                fromTypeConstructor_projection(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Projection()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_projection(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - Color

private var fromTypeConstructor_color = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_COLOR)!
private var toTypeConstructor_color = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_COLOR)!

extension Color: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .color
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                fromTypeConstructor_color(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Color()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_color(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - GodotStringName

private var fromTypeConstructor_stringName = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_STRING_NAME)!
private var toTypeConstructor_stringName = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_STRING_NAME)!

extension GodotStringName: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .stringName
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            self.withUnsafeRawPointer { otherNativeTypePtr in
                fromTypeConstructor_stringName(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        let newValue = GodotStringName()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            newValue.withUnsafeRawPointer { otherNativeTypePtr in
                toTypeConstructor_stringName(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - NodePath

private var fromTypeConstructor_nodePath = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_NODE_PATH)!
private var toTypeConstructor_nodePath = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_NODE_PATH)!

extension NodePath: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .nodePath
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            self.withUnsafeRawPointer { otherNativeTypePtr in
                fromTypeConstructor_nodePath(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        let newValue = NodePath()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            newValue.withUnsafeRawPointer { otherNativeTypePtr in
                toTypeConstructor_nodePath(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - RID

private var fromTypeConstructor_rid = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_RID)!
private var toTypeConstructor_rid = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_RID)!

extension RID: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .rid
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            self.withUnsafeRawPointer { otherNativeTypePtr in
                fromTypeConstructor_rid(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        let newValue = RID()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            newValue.withUnsafeRawPointer { otherNativeTypePtr in
                toTypeConstructor_rid(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - Object

private var fromTypeConstructor_object = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_OBJECT)!
private var toTypeConstructor_object = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_OBJECT)!

extension Object: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .object
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            self.withUnsafeRawPointer { otherNativeTypePtr in
                withUnsafePointer(to: otherNativeTypePtr) { pointer in
                    fromTypeConstructor_object(extensionTypePtr, UnsafeMutableRawPointer(mutating: pointer))
                }
            }
        }
        return variant
    }
    
    public final class func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue: Self!
        let instanceOwner = UnsafeMutablePointer < UnsafeMutableRawPointer> .allocate(capacity: 1)
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            toTypeConstructor_object(UnsafeMutableRawPointer(mutating: instanceOwner), extensionTypePtr)
            
            let finalPtr = withUnsafePointer(to: Self.__instanceBindingCallbacks()) { bindingsPtr in
                gdextension_interface_object_get_instance_binding(
                    instanceOwner.pointee, GodotExtension.token, bindingsPtr
                )
            }
            
            newValue = Unmanaged < Self> .fromOpaque(finalPtr!).takeUnretainedValue()
        }
        
        instanceOwner.deinitialize(count: 1)
        instanceOwner.deallocate()
        
        return newValue
    }
}

// MARK: - Callable

private var fromTypeConstructor_callable = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_CALLABLE)!
private var toTypeConstructor_callable = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_CALLABLE)!

extension Callable: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .callable
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            self.withUnsafeRawPointer { otherNativeTypePtr in
                fromTypeConstructor_callable(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        let newValue = Callable()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            newValue.withUnsafeRawPointer { otherNativeTypePtr in
                toTypeConstructor_callable(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - Signal

private var fromTypeConstructor_signal = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_SIGNAL)!
private var toTypeConstructor_signal = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_SIGNAL)!

extension Signal: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .signal
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            self.withUnsafeRawPointer { otherNativeTypePtr in
                fromTypeConstructor_signal(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        let newValue = Signal()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            newValue.withUnsafeRawPointer { otherNativeTypePtr in
                toTypeConstructor_signal(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - GodotDictionary

private var fromTypeConstructor_dictionary = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
private var toTypeConstructor_dictionary = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_DICTIONARY)!

extension GodotDictionary: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .dictionary
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            self.withUnsafeRawPointer { otherNativeTypePtr in
                fromTypeConstructor_dictionary(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        let newValue = GodotDictionary()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            newValue.withUnsafeRawPointer { otherNativeTypePtr in
                toTypeConstructor_dictionary(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - GodotArray

private var fromTypeConstructor_array = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_ARRAY)!
private var toTypeConstructor_array = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_ARRAY)!

extension GodotArray: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .array
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            self.withUnsafeRawPointer { otherNativeTypePtr in
                fromTypeConstructor_array(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        let newValue = GodotArray()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            newValue.withUnsafeRawPointer { otherNativeTypePtr in
                toTypeConstructor_array(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - PackedByteArray

private var fromTypeConstructor_packedByteArray = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY)!
private var toTypeConstructor_packedByteArray = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY)!

extension PackedByteArray: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .packedByteArray
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            self.withUnsafeRawPointer { otherNativeTypePtr in
                fromTypeConstructor_packedByteArray(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        let newValue = PackedByteArray()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            newValue.withUnsafeRawPointer { otherNativeTypePtr in
                toTypeConstructor_packedByteArray(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - PackedInt32Array

private var fromTypeConstructor_packedInt32Array = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY)!
private var toTypeConstructor_packedInt32Array = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY)!

extension PackedInt32Array: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .packedInt32Array
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            self.withUnsafeRawPointer { otherNativeTypePtr in
                fromTypeConstructor_packedInt32Array(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        let newValue = PackedInt32Array()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            newValue.withUnsafeRawPointer { otherNativeTypePtr in
                toTypeConstructor_packedInt32Array(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - PackedInt64Array

private var fromTypeConstructor_packedInt64Array = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY)!
private var toTypeConstructor_packedInt64Array = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY)!

extension PackedInt64Array: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .packedInt64Array
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            self.withUnsafeRawPointer { otherNativeTypePtr in
                fromTypeConstructor_packedInt64Array(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        let newValue = PackedInt64Array()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            newValue.withUnsafeRawPointer { otherNativeTypePtr in
                toTypeConstructor_packedInt64Array(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - PackedFloat32Array

private var fromTypeConstructor_packedFloat32Array = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT32_ARRAY)!
private var toTypeConstructor_packedFloat32Array = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT32_ARRAY)!

extension PackedFloat32Array: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .packedFloat32Array
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            self.withUnsafeRawPointer { otherNativeTypePtr in
                fromTypeConstructor_packedFloat32Array(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        let newValue = PackedFloat32Array()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            newValue.withUnsafeRawPointer { otherNativeTypePtr in
                toTypeConstructor_packedFloat32Array(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - PackedFloat64Array

private var fromTypeConstructor_packedFloat64Array = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY)!
private var toTypeConstructor_packedFloat64Array = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY)!

extension PackedFloat64Array: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .packedFloat64Array
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            self.withUnsafeRawPointer { otherNativeTypePtr in
                fromTypeConstructor_packedFloat64Array(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        let newValue = PackedFloat64Array()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            newValue.withUnsafeRawPointer { otherNativeTypePtr in
                toTypeConstructor_packedFloat64Array(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - PackedStringArray

private var fromTypeConstructor_packedStringArray = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY)!
private var toTypeConstructor_packedStringArray = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY)!

extension PackedStringArray: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .packedStringArray
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            self.withUnsafeRawPointer { otherNativeTypePtr in
                fromTypeConstructor_packedStringArray(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        let newValue = PackedStringArray()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            newValue.withUnsafeRawPointer { otherNativeTypePtr in
                toTypeConstructor_packedStringArray(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - PackedVector2Array

private var fromTypeConstructor_packedVector2Array = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR2_ARRAY)!
private var toTypeConstructor_packedVector2Array = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR2_ARRAY)!

extension PackedVector2Array: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .packedVector2Array
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            self.withUnsafeRawPointer { otherNativeTypePtr in
                fromTypeConstructor_packedVector2Array(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        let newValue = PackedVector2Array()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            newValue.withUnsafeRawPointer { otherNativeTypePtr in
                toTypeConstructor_packedVector2Array(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - PackedVector3Array

private var fromTypeConstructor_packedVector3Array = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY)!
private var toTypeConstructor_packedVector3Array = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY)!

extension PackedVector3Array: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .packedVector3Array
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            self.withUnsafeRawPointer { otherNativeTypePtr in
                fromTypeConstructor_packedVector3Array(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        let newValue = PackedVector3Array()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            newValue.withUnsafeRawPointer { otherNativeTypePtr in
                toTypeConstructor_packedVector3Array(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - PackedColorArray

private var fromTypeConstructor_packedColorArray = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY)!
private var toTypeConstructor_packedColorArray = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY)!

extension PackedColorArray: VariantConvertible {
    public static let variantType: Variant.RepresentationType = .packedColorArray
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeRawPointer { extensionTypePtr in
            self.withUnsafeRawPointer { otherNativeTypePtr in
                fromTypeConstructor_packedColorArray(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        let newValue = PackedColorArray()
        
        variant.withUnsafeRawPointer { extensionTypePtr in
            newValue.withUnsafeRawPointer { otherNativeTypePtr in
                toTypeConstructor_packedColorArray(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}


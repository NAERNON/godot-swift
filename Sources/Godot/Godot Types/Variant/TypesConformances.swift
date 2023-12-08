import GodotExtensionHeaders

// MARK: - Bool

private var fromTypeConstructor_bool = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_BOOL)!
private var toTypeConstructor_bool = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_BOOL)!

extension Bool: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .bool
    
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_bool(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = UInt8()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
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

extension Int: ExposableValue {
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_int(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Self()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_int(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension Int8: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .int8
    
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_int(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Self()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_int(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension Int16: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .int16
    
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_int(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Self()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_int(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension Int32: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .int32
    
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_int(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Self()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_int(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension Int64: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .int64
    
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_int(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Self()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_int(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension UInt8: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .uint8
    
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_int(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Self()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_int(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension UInt: ExposableValue {
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_int(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Self()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_int(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension UInt16: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .uint16
    
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_int(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Self()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_int(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension UInt32: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .uint32
    
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_int(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Self()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_int(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension UInt64: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .uint64
    
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_int(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Self()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_int(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - Double

private var fromTypeConstructor_float = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_FLOAT)!
private var toTypeConstructor_float = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_FLOAT)!

extension Double: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .double
    
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_float(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Self()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_float(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

// MARK: - Float

extension Float: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .float
    
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: Double(value)) { otherNativeTypePtr in
                fromTypeConstructor_float(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Double()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_float(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return Float(newValue)
    }
}

// MARK: - GodotString

private var fromTypeConstructor_string = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_STRING)!
private var toTypeConstructor_string = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_STRING)!

extension GodotString: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .string
    
    public static func convertToStorage(_ value: consuming Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            value.withUnsafeRawPointer { otherNativeTypePtr in
                fromTypeConstructor_string(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        let newValue = GodotString()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
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

extension Vector2: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .vector2
    
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_vector2(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Vector2()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
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

extension Vector2i: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .vector2i
    
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_vector2i(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Vector2i()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
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

extension Rect2: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .rect2
    
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_rect2(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Rect2()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
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

extension Rect2i: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .rect2i
    
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_rect2i(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Rect2i()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
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

extension Vector3: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .vector3
    
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_vector3(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Vector3()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
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

extension Vector3i: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .vector3i
    
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_vector3i(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Vector3i()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
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

extension Transform2D: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .transform2D
    
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_transform2D(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Transform2D()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
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

extension Vector4: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .vector4
    
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_vector4(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Vector4()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
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

extension Vector4i: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .vector4i
    
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_vector4i(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Vector4i()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
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

extension Plane: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .plane
    
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_plane(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Plane()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
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

extension Quaternion: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .quaternion
    
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_quaternion(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Quaternion()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
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

extension AABB: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .aabb
    
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_aabb(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = AABB()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
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

extension Basis: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .basis
    
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_basis(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Basis()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
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

extension Transform3D: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .transform3D
    
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_transform3D(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Transform3D()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
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

extension Projection: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .projection
    
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_projection(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Projection()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
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

extension Color: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .color
    
    public static func convertToStorage(_ value: Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_color(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var newValue = Color()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
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

extension GodotStringName: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .stringName
    
    public static func convertToStorage(_ value: consuming Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            value.withUnsafeRawPointer { otherNativeTypePtr in
                fromTypeConstructor_stringName(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        let newValue = GodotStringName()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
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

extension NodePath: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .nodePath
    
    public static func convertToStorage(_ value: consuming Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            value.withUnsafeRawPointer { otherNativeTypePtr in
                fromTypeConstructor_nodePath(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        let newValue = NodePath()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
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

extension RID: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .rid
    
    public static func convertToStorage(_ value: consuming Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            value.withUnsafeRawPointer { otherNativeTypePtr in
                fromTypeConstructor_rid(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        let newValue = RID()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
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

extension Object: VariantStorable {
    private enum VariantConversionError: Error, CustomStringConvertible {
        case cannotConvertToObject(type: Object.Type)
        
        var description: String {
            switch self {
            case .cannotConvertToObject(let type):
                "Error while retrieving an instance of type \(type._$className)."
            }
        }
    }
    
    public static var variantStorageType: Variant.StorageType? { .object }
    
    public final class func convertToStorage(_ value: consuming Object) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            value.withUnsafeRawPointer { otherNativeTypePtr in
                withUnsafePointer(to: otherNativeTypePtr) { pointer in
                    fromTypeConstructor_object(extensionTypePtr, UnsafeMutableRawPointer(mutating: pointer))
                }
            }
        }
        return variant
    }
    
    public final class func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        var instancePtr = UnsafeMutableRawPointer(bitPattern: 0)
        
        storage.withUnsafeRawPointer { extensionTypePtr in
            toTypeConstructor_object(&instancePtr, extensionTypePtr)
        }
        
        let instance = Self.retrievedInstanceManagedByGodot(instancePtr)
        
        assert(instance != nil, "Attempting to retrieve a non optional Object from a nil variant.")
        
        return instance!
    }
    
    public final class func convertFromStorage(_ storage: borrowing Variant.Storage) throws -> Self {
        try storage.checkIsConvertible(to: .object)
        
        var instancePtr = UnsafeMutableRawPointer(bitPattern: 0)
        
        storage.withUnsafeRawPointer { extensionTypePtr in
            toTypeConstructor_object(&instancePtr, extensionTypePtr)
        }
        
        guard let instance = Self.retrievedInstanceManagedByGodot(instancePtr) else {
            throw VariantConversionError.cannotConvertToObject(type: Self.self)
        }
        
        return instance
    }
}

// MARK: - Optional<Object>

extension Optional: VariantStorable where Wrapped : Object {
    public static var variantStorageType: Variant.StorageType? { .object }
}

extension Optional: ExposableValue where Wrapped : Object {
    public static var variantRepresentationType: Variant.RepresentationType { .object }
    public static var _$className: GodotStringName { Wrapped._$className }
}

// MARK: - Callable

private var fromTypeConstructor_callable = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_CALLABLE)!
private var toTypeConstructor_callable = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_CALLABLE)!

extension Callable: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .callable
    
    public static func convertToStorage(_ value: consuming Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            value.withUnsafeRawPointer { otherNativeTypePtr in
                fromTypeConstructor_callable(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        let newValue = Callable()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
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

extension Signal: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .signal
    
    public static func convertToStorage(_ value: consuming Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            value.withUnsafeRawPointer { otherNativeTypePtr in
                fromTypeConstructor_signal(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        let newValue = Signal()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
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

extension GodotDictionary: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .dictionary
    
    public static func convertToStorage(_ value: consuming Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            value.withUnsafeRawPointer { otherNativeTypePtr in
                fromTypeConstructor_dictionary(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        let newValue = GodotDictionary()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
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
        variant.withUnsafeRawPointer { extensionTypePtr in
            value.withUnsafeRawPointer { otherNativeTypePtr in
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
            if !Element._$className._isEmpty() {
                let foundClassName = array._typedClassName()
                guard foundClassName == Element._$className else {
                    throw VariantConversionError.incorrectClassName(
                        expected: Element._$className,
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
        let newValue = GodotArray()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
            newValue.withUnsafeRawPointer { otherNativeTypePtr in
                toTypeConstructor_array(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension GodotArray: ExposableValue where Element : ExposableValue {
    public static var variantRepresentationType: Variant.RepresentationType { .array }
}

// MARK: - PackedByteArray

private var fromTypeConstructor_packedByteArray = gdextension_interface_get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY)!
private var toTypeConstructor_packedByteArray = gdextension_interface_get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY)!

extension PackedByteArray: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .packedByteArray
    
    public static func convertToStorage(_ value: consuming Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            value.withUnsafeRawPointer { otherNativeTypePtr in
                fromTypeConstructor_packedByteArray(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        let newValue = PackedByteArray()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
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

extension PackedInt32Array: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .packedInt32Array
    
    public static func convertToStorage(_ value: consuming Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            value.withUnsafeRawPointer { otherNativeTypePtr in
                fromTypeConstructor_packedInt32Array(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        let newValue = PackedInt32Array()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
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

extension PackedInt64Array: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .packedInt64Array
    
    public static func convertToStorage(_ value: consuming Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            value.withUnsafeRawPointer { otherNativeTypePtr in
                fromTypeConstructor_packedInt64Array(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        let newValue = PackedInt64Array()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
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

extension PackedFloat32Array: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .packedFloat32Array
    
    public static func convertToStorage(_ value: consuming Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            value.withUnsafeRawPointer { otherNativeTypePtr in
                fromTypeConstructor_packedFloat32Array(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        let newValue = PackedFloat32Array()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
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

extension PackedFloat64Array: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .packedFloat64Array
    
    public static func convertToStorage(_ value: consuming Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            value.withUnsafeRawPointer { otherNativeTypePtr in
                fromTypeConstructor_packedFloat64Array(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        let newValue = PackedFloat64Array()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
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

extension PackedStringArray: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .packedStringArray
    
    public static func convertToStorage(_ value: consuming Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            value.withUnsafeRawPointer { otherNativeTypePtr in
                fromTypeConstructor_packedStringArray(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        let newValue = PackedStringArray()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
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

extension PackedVector2Array: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .packedVector2Array
    
    public static func convertToStorage(_ value: consuming Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            value.withUnsafeRawPointer { otherNativeTypePtr in
                fromTypeConstructor_packedVector2Array(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        let newValue = PackedVector2Array()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
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

extension PackedVector3Array: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .packedVector3Array
    
    public static func convertToStorage(_ value: consuming Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            value.withUnsafeRawPointer { otherNativeTypePtr in
                fromTypeConstructor_packedVector3Array(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        let newValue = PackedVector3Array()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
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

extension PackedColorArray: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .packedColorArray
    
    public static func convertToStorage(_ value: consuming Self) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withUnsafeRawPointer { extensionTypePtr in
            value.withUnsafeRawPointer { otherNativeTypePtr in
                fromTypeConstructor_packedColorArray(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func convertFromCheckedStorage(_ storage: borrowing Variant.Storage) -> Self {
        let newValue = PackedColorArray()
        
        storage.withUnsafeRawPointer { extensionTypePtr in
            newValue.withUnsafeRawPointer { otherNativeTypePtr in
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

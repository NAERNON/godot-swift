import GodotExtensionHeaders

// MARK: - FloatingPointType

private var fromTypeConstructor_vector2 = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_VECTOR2)!
private var toTypeConstructor_vector2 = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_VECTOR2)!
private var fromTypeConstructor_vector3 = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_VECTOR3)!
private var toTypeConstructor_vector3 = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_VECTOR3)!
private var fromTypeConstructor_vector4 = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_VECTOR4)!
private var toTypeConstructor_vector4 = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_VECTOR4)!

extension FloatingPointType: VariantSIMDStorableScalar {
    // MARK: SIMD2
    
    public static func convertSIMD2ToStorage(_ value: consuming SIMD2<Self>) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_vector2(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertSIMD2FromCheckedStorage(_ storage: borrowing Variant.Storage) -> SIMD2<Self> {
        var newValue = SIMD2<Self>()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_vector2(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    public static var variantSIMD2RepresentationType: Variant.RepresentationType {
        .vector2
    }
    
    // MARK: SIMD3
    
    public static func convertSIMD3ToStorage(_ value: consuming SIMD3<Self>) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_vector3(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertSIMD3FromCheckedStorage(_ storage: borrowing Variant.Storage) -> SIMD3<Self> {
        var newValue = SIMD3<Self>()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_vector3(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    public static var variantSIMD3RepresentationType: Variant.RepresentationType {
        .vector3
    }
    
    // MARK: SIMD4
    
    public static func convertSIMD4ToStorage(_ value: consuming SIMD4<Self>) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_vector4(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertSIMD4FromCheckedStorage(_ storage: borrowing Variant.Storage) -> SIMD4<Self> {
        var newValue = SIMD4<Self>()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_vector4(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    public static var variantSIMD4RepresentationType: Variant.RepresentationType {
        .vector4
    }
}

// MARK: - Int32

private var fromTypeConstructor_vector2i = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_VECTOR2I)!
private var toTypeConstructor_vector2i = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_VECTOR2I)!
private var fromTypeConstructor_vector3i = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_VECTOR3I)!
private var toTypeConstructor_vector3i = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_VECTOR3I)!
private var fromTypeConstructor_vector4i = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_VECTOR4I)!
private var toTypeConstructor_vector4i = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_VECTOR4I)!

extension Int32: VariantSIMDStorableScalar {
    // MARK: SIMD2
    
    public static func convertSIMD2ToStorage(_ value: consuming SIMD2<Self>) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_vector2i(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertSIMD2FromCheckedStorage(_ storage: borrowing Variant.Storage) -> SIMD2<Self> {
        var newValue = SIMD2<Self>()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_vector2i(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    public static var variantSIMD2RepresentationType: Variant.RepresentationType {
        .vector2I
    }
    
    // MARK: SIMD3
    
    public static func convertSIMD3ToStorage(_ value: consuming SIMD3<Self>) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_vector3i(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertSIMD3FromCheckedStorage(_ storage: borrowing Variant.Storage) -> SIMD3<Self> {
        var newValue = SIMD3<Self>()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_vector3i(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    public static var variantSIMD3RepresentationType: Variant.RepresentationType {
        .vector3I
    }
    
    // MARK: SIMD4
    
    public static func convertSIMD4ToStorage(_ value: consuming SIMD4<Self>) -> Variant.Storage {
        let variant = Variant.Storage()
        variant.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                fromTypeConstructor_vector4i(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func convertSIMD4FromCheckedStorage(_ storage: borrowing Variant.Storage) -> SIMD4<Self> {
        var newValue = SIMD4<Self>()
        
        storage.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                toTypeConstructor_vector4i(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
    
    public static var variantSIMD4RepresentationType: Variant.RepresentationType {
        .vector4I
    }
}

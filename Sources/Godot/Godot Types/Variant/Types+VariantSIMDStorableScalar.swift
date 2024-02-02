import GodotExtensionHeaders

// MARK: - FloatingPointType

private var fromTypeConstructor_vector2 = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_VECTOR2)!
private var toTypeConstructor_vector2 = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_VECTOR2)!

extension FloatingPointType: VariantSIMDStorableScalar {
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
}

// MARK: - Int32

private var fromTypeConstructor_vector2i = GodotExtension.Interface.getVariantFromTypeConstructor(GDEXTENSION_VARIANT_TYPE_VECTOR2I)!
private var toTypeConstructor_vector2i = GodotExtension.Interface.getVariantToTypeConstructor(GDEXTENSION_VARIANT_TYPE_VECTOR2I)!

extension Int32: VariantSIMDStorableScalar {
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
}

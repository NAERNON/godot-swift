extension Bool: VariantConvertible {
    public static let variantType: Variant.GodotType = .bool
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                Variant.fromTypeConstructor_bool(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = UInt8()
        
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_bool(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue != 0
    }
}

extension Int: VariantConvertible {
    public static let variantType: Variant.GodotType = .int
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                Variant.fromTypeConstructor_int(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Int()
        
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_int(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension Int8: VariantConvertible {
    public static let variantType: Variant.GodotType = Int.variantType
    
    public func makeVariant() -> Variant {
        Variant(Int(self))
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        Self(Int.fromMatchingTypeVariant(variant))
    }
}

extension Int16: VariantConvertible {
    public static let variantType: Variant.GodotType = Int.variantType
    
    public func makeVariant() -> Variant {
        Variant(Int(self))
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        Self(Int.fromMatchingTypeVariant(variant))
    }
}

extension Int32: VariantConvertible {
    public static let variantType: Variant.GodotType = Int.variantType
    
    public func makeVariant() -> Variant {
        Variant(Int(self))
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        Self(Int.fromMatchingTypeVariant(variant))
    }
}

extension Int64: VariantConvertible {
    public static let variantType: Variant.GodotType = Int.variantType
    
    public func makeVariant() -> Variant {
        Variant(Int(self))
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        Self(Int.fromMatchingTypeVariant(variant))
    }
}

extension UInt8: VariantConvertible {
    public static let variantType: Variant.GodotType = Int.variantType
    
    public func makeVariant() -> Variant {
        Variant(Int(self))
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        Self(Int.fromMatchingTypeVariant(variant))
    }
}

extension UInt16: VariantConvertible {
    public static let variantType: Variant.GodotType = Int.variantType
    
    public func makeVariant() -> Variant {
        Variant(Int(self))
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        Self(Int.fromMatchingTypeVariant(variant))
    }
}

extension UInt32: VariantConvertible {
    public static let variantType: Variant.GodotType = Int.variantType
    
    public func makeVariant() -> Variant {
        Variant(Int(self))
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        Self(Int.fromMatchingTypeVariant(variant))
    }
}

extension UInt64: VariantConvertible {
    public static let variantType: Variant.GodotType = Int.variantType
    
    public func makeVariant() -> Variant {
        Variant(Int(self))
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        Self(Int.fromMatchingTypeVariant(variant))
    }
}

extension Double: VariantConvertible {
    public static let variantType: Variant.GodotType = .float
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                Variant.fromTypeConstructor_float(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Double()
        
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_float(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension Float: VariantConvertible {
    public static let variantType: Variant.GodotType = Double.variantType
    
    public func makeVariant() -> Variant {
        Variant(Double(self))
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        Float(Double.fromMatchingTypeVariant(variant))
    }
}

extension Real: VariantConvertible {
    public static let variantType: Variant.GodotType = Double.variantType
    
    public func makeVariant() -> Variant {
        Double(self).makeVariant()
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        Real(Double.fromMatchingTypeVariant(variant))
    }
}

extension String: VariantConvertible {
    public static let variantType: Variant.GodotType = .string
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            self.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_string(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        let newValue = String()
        
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            newValue.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.toTypeConstructor_string(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension Vector2: VariantConvertible {
    public static let variantType: Variant.GodotType = .vector2
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                Variant.fromTypeConstructor_vector2(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Vector2()
        
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_vector2(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension Vector2i: VariantConvertible {
    public static let variantType: Variant.GodotType = .vector2i
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                Variant.fromTypeConstructor_vector2i(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Vector2i()
        
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_vector2i(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension Rect2: VariantConvertible {
    public static let variantType: Variant.GodotType = .rect2
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                Variant.fromTypeConstructor_rect2(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Rect2()
        
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_rect2(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension Rect2i: VariantConvertible {
    public static let variantType: Variant.GodotType = .rect2i
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                Variant.fromTypeConstructor_rect2i(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Rect2i()
        
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_rect2i(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension Vector3: VariantConvertible {
    public static let variantType: Variant.GodotType = .vector3
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                Variant.fromTypeConstructor_vector3(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Vector3()
        
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_vector3(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension Vector3i: VariantConvertible {
    public static let variantType: Variant.GodotType = .vector3i
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                Variant.fromTypeConstructor_vector3i(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Vector3i()
        
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_vector3i(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension Transform2D: VariantConvertible {
    public static let variantType: Variant.GodotType = .transform2D
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                Variant.fromTypeConstructor_transform2D(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Transform2D()
        
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_transform2D(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension Vector4: VariantConvertible {
    public static let variantType: Variant.GodotType = .vector4
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                Variant.fromTypeConstructor_vector4(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Vector4()
        
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_vector4(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension Vector4i: VariantConvertible {
    public static let variantType: Variant.GodotType = .vector4i
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                Variant.fromTypeConstructor_vector4i(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Vector4i()
        
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_vector4i(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension Plane: VariantConvertible {
    public static let variantType: Variant.GodotType = .plane
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                Variant.fromTypeConstructor_plane(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Plane()
        
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_plane(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension Quaternion: VariantConvertible {
    public static let variantType: Variant.GodotType = .quaternion
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                Variant.fromTypeConstructor_quaternion(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Quaternion()
        
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_quaternion(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension AABB: VariantConvertible {
    public static let variantType: Variant.GodotType = .aabb
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                Variant.fromTypeConstructor_aabb(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = AABB()
        
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_aabb(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension Basis: VariantConvertible {
    public static let variantType: Variant.GodotType = .basis
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                Variant.fromTypeConstructor_basis(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Basis()
        
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_basis(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension Transform3D: VariantConvertible {
    public static let variantType: Variant.GodotType = .transform3D
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                Variant.fromTypeConstructor_transform3D(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Transform3D()
        
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_transform3D(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension Projection: VariantConvertible {
    public static let variantType: Variant.GodotType = .projection
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                Variant.fromTypeConstructor_projection(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Projection()
        
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_projection(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension Color: VariantConvertible {
    public static let variantType: Variant.GodotType = .color
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafePointer(to: self) { otherNativeTypePtr in
                Variant.fromTypeConstructor_color(extensionTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        var newValue = Color()
        
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_color(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension StringName: VariantConvertible {
    public static let variantType: Variant.GodotType = .stringName
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            self.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_stringName(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        let newValue = StringName()
        
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            newValue.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.toTypeConstructor_stringName(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension NodePath: VariantConvertible {
    public static let variantType: Variant.GodotType = .nodePath
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            self.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_nodePath(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        let newValue = NodePath()
        
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            newValue.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.toTypeConstructor_nodePath(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension RID: VariantConvertible {
    public static let variantType: Variant.GodotType = .rid
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            self.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_rid(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        let newValue = RID()
        
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            newValue.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.toTypeConstructor_rid(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension Object: VariantConvertible {
    public static let variantType: Variant.GodotType = .object
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            self.withUnsafeExtensionPointer { otherNativeTypePtr in
                withUnsafePointer(to: otherNativeTypePtr) { pointer in
                    Variant.fromTypeConstructor_object(extensionTypePtr, UnsafeMutableRawPointer(mutating: pointer))
                }
            }
        }
        return variant
    }
}

extension Callable: VariantConvertible {
    public static let variantType: Variant.GodotType = .callable
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            self.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_callable(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        let newValue = Callable()
        
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            newValue.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.toTypeConstructor_callable(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension Signal: VariantConvertible {
    public static let variantType: Variant.GodotType = .signal
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            self.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_signal(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        let newValue = Signal()
        
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            newValue.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.toTypeConstructor_signal(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension Dictionary: VariantConvertible {
    public static let variantType: Variant.GodotType = .dictionary
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            self.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_dictionary(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        let newValue = Dictionary()
        
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            newValue.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.toTypeConstructor_dictionary(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension Array: VariantConvertible {
    public static let variantType: Variant.GodotType = .array
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            self.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_array(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        let newValue = Array()
        
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            newValue.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.toTypeConstructor_array(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension PackedByteArray: VariantConvertible {
    public static let variantType: Variant.GodotType = .packedByteArray
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            self.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_packedByteArray(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        let newValue = PackedByteArray()
        
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            newValue.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.toTypeConstructor_packedByteArray(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension PackedInt32Array: VariantConvertible {
    public static let variantType: Variant.GodotType = .packedInt32Array
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            self.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_packedInt32Array(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        let newValue = PackedInt32Array()
        
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            newValue.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.toTypeConstructor_packedInt32Array(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension PackedInt64Array: VariantConvertible {
    public static let variantType: Variant.GodotType = .packedInt64Array
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            self.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_packedInt64Array(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        let newValue = PackedInt64Array()
        
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            newValue.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.toTypeConstructor_packedInt64Array(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension PackedFloat32Array: VariantConvertible {
    public static let variantType: Variant.GodotType = .packedFloat32Array
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            self.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_packedFloat32Array(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        let newValue = PackedFloat32Array()
        
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            newValue.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.toTypeConstructor_packedFloat32Array(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension PackedFloat64Array: VariantConvertible {
    public static let variantType: Variant.GodotType = .packedFloat64Array
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            self.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_packedFloat64Array(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        let newValue = PackedFloat64Array()
        
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            newValue.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.toTypeConstructor_packedFloat64Array(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension PackedStringArray: VariantConvertible {
    public static let variantType: Variant.GodotType = .packedStringArray
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            self.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_packedStringArray(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        let newValue = PackedStringArray()
        
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            newValue.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.toTypeConstructor_packedStringArray(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension PackedVector2Array: VariantConvertible {
    public static let variantType: Variant.GodotType = .packedVector2Array
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            self.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_packedVector2Array(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        let newValue = PackedVector2Array()
        
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            newValue.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.toTypeConstructor_packedVector2Array(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension PackedVector3Array: VariantConvertible {
    public static let variantType: Variant.GodotType = .packedVector3Array
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            self.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_packedVector3Array(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        let newValue = PackedVector3Array()
        
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            newValue.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.toTypeConstructor_packedVector3Array(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}

extension PackedColorArray: VariantConvertible {
    public static let variantType: Variant.GodotType = .packedColorArray
    
    public func makeVariant() -> Variant {
        let variant = Variant()
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            self.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_packedColorArray(extensionTypePtr, otherNativeTypePtr)
            }
        }
        return variant
    }
    
    public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
        let newValue = PackedColorArray()
        
        variant.withUnsafeExtensionPointer { extensionTypePtr in
            newValue.withUnsafeExtensionPointer { otherNativeTypePtr in
                Variant.toTypeConstructor_packedColorArray(UnsafeMutableRawPointer(otherNativeTypePtr), extensionTypePtr)
            }
        }
        
        return newValue
    }
}


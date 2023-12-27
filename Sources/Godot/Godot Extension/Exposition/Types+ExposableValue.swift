import GodotExtensionHeaders

// MARK: - Bool

extension Bool: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .bool
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        unsafePointer!.load(as: Self.self)
    }
    
    public func copyToGodot(unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer) {
        destinationUnsafePointer.storeBytes(of: self, as: Self.self)
    }
}

// MARK: - Int

extension Int: ExposableValue {
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        unsafePointer!.load(as: Self.self)
    }
    
    public func copyToGodot(unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer) {
        destinationUnsafePointer.storeBytes(of: self, as: Self.self)
    }
}

extension Int8: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .int8
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        unsafePointer!.load(as: Self.self)
    }
    
    public func copyToGodot(unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer) {
        destinationUnsafePointer.storeBytes(of: self, as: Self.self)
    }
}

extension Int16: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .int16
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        unsafePointer!.load(as: Self.self)
    }
    
    public func copyToGodot(unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer) {
        destinationUnsafePointer.storeBytes(of: self, as: Self.self)
    }
}

extension Int32: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .int32
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        unsafePointer!.load(as: Self.self)
    }
    
    public func copyToGodot(unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer) {
        destinationUnsafePointer.storeBytes(of: self, as: Self.self)
    }
}

extension Int64: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .int64
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        unsafePointer!.load(as: Self.self)
    }
    
    public func copyToGodot(unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer) {
        destinationUnsafePointer.storeBytes(of: self, as: Self.self)
    }
}

extension UInt8: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .uint8
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        unsafePointer!.load(as: Self.self)
    }
    
    public func copyToGodot(unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer) {
        destinationUnsafePointer.storeBytes(of: self, as: Self.self)
    }
}

extension UInt: ExposableValue {
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        unsafePointer!.load(as: Self.self)
    }
    
    public func copyToGodot(unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer) {
        destinationUnsafePointer.storeBytes(of: self, as: Self.self)
    }
}

extension UInt16: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .uint16
        
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        unsafePointer!.load(as: Self.self)
    }
    
    public func copyToGodot(unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer) {
        destinationUnsafePointer.storeBytes(of: self, as: Self.self)
    }
}

extension UInt32: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .uint32
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        unsafePointer!.load(as: Self.self)
    }
    
    public func copyToGodot(unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer) {
        destinationUnsafePointer.storeBytes(of: self, as: Self.self)
    }
}

extension UInt64: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .uint64
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        unsafePointer!.load(as: Self.self)
    }
    
    public func copyToGodot(unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer) {
        destinationUnsafePointer.storeBytes(of: self, as: Self.self)
    }
}

// MARK: - Double

extension Double: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .double
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        unsafePointer!.load(as: Self.self)
    }
    
    public func copyToGodot(unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer) {
        destinationUnsafePointer.storeBytes(of: self, as: Self.self)
    }
}

// MARK: - Float

extension Float: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .float
        
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        unsafePointer!.load(as: Self.self)
    }
    
    public func copyToGodot(unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer) {
        destinationUnsafePointer.storeBytes(of: self, as: Self.self)
    }
}

// MARK: - GodotString

extension GodotString: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .string
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        Self._ptr_constructor_godotstring(from: unsafePointer!)
    }
}

// MARK: - Vector2

extension Vector2: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .vector2
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        unsafePointer!.load(as: Self.self)
    }
    
    public func copyToGodot(unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer) {
        destinationUnsafePointer.storeBytes(of: self, as: Self.self)
    }
}

// MARK: - Vector2i

extension Vector2i: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .vector2i
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        unsafePointer!.load(as: Self.self)
    }
    
    public func copyToGodot(unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer) {
        destinationUnsafePointer.storeBytes(of: self, as: Self.self)
    }
}

// MARK: - Rect2

extension Rect2: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .rect2
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        unsafePointer!.load(as: Self.self)
    }
    
    public func copyToGodot(unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer) {
        destinationUnsafePointer.storeBytes(of: self, as: Self.self)
    }
}

// MARK: - Rect2i

extension Rect2i: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .rect2i
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        unsafePointer!.load(as: Self.self)
    }
    
    public func copyToGodot(unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer) {
        destinationUnsafePointer.storeBytes(of: self, as: Self.self)
    }
}

// MARK: - Vector3

extension Vector3: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .vector3
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        unsafePointer!.load(as: Self.self)
    }
    
    public func copyToGodot(unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer) {
        destinationUnsafePointer.storeBytes(of: self, as: Self.self)
    }
}

// MARK: - Vector3i

extension Vector3i: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .vector3i
        
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        unsafePointer!.load(as: Self.self)
    }
    
    public func copyToGodot(unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer) {
        destinationUnsafePointer.storeBytes(of: self, as: Self.self)
    }
}

// MARK: - Transform2D

extension Transform2D: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .transform2D
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        unsafePointer!.load(as: Self.self)
    }
    
    public func copyToGodot(unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer) {
        destinationUnsafePointer.storeBytes(of: self, as: Self.self)
    }
}

// MARK: - Vector4

extension Vector4: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .vector4
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        unsafePointer!.load(as: Self.self)
    }
    
    public func copyToGodot(unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer) {
        destinationUnsafePointer.storeBytes(of: self, as: Self.self)
    }
}

// MARK: - Vector4i

extension Vector4i: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .vector4i
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        unsafePointer!.load(as: Self.self)
    }
    
    public func copyToGodot(unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer) {
        destinationUnsafePointer.storeBytes(of: self, as: Self.self)
    }
}

// MARK: - Plane

extension Plane: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .plane
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        unsafePointer!.load(as: Self.self)
    }
    
    public func copyToGodot(unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer) {
        destinationUnsafePointer.storeBytes(of: self, as: Self.self)
    }
}

// MARK: - Quaternion

extension Quaternion: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .quaternion
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        unsafePointer!.load(as: Self.self)
    }
    
    public func copyToGodot(unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer) {
        destinationUnsafePointer.storeBytes(of: self, as: Self.self)
    }
}

// MARK: - AABB

extension AABB: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .aabb
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        unsafePointer!.load(as: Self.self)
    }
    
    public func copyToGodot(unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer) {
        destinationUnsafePointer.storeBytes(of: self, as: Self.self)
    }
}

// MARK: - Basis

extension Basis: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .basis
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        unsafePointer!.load(as: Self.self)
    }
    
    public func copyToGodot(unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer) {
        destinationUnsafePointer.storeBytes(of: self, as: Self.self)
    }
}

// MARK: - Transform3D

extension Transform3D: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .transform3D
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        unsafePointer!.load(as: Self.self)
    }
    
    public func copyToGodot(unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer) {
        destinationUnsafePointer.storeBytes(of: self, as: Self.self)
    }
}

// MARK: - Projection

extension Projection: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .projection
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        unsafePointer!.load(as: Self.self)
    }
    
    public func copyToGodot(unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer) {
        destinationUnsafePointer.storeBytes(of: self, as: Self.self)
    }
}

// MARK: - Color

extension Color: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .color
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        unsafePointer!.load(as: Self.self)
    }
    
    public func copyToGodot(unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer) {
        destinationUnsafePointer.storeBytes(of: self, as: Self.self)
    }
}

// MARK: - GodotStringName

extension GodotStringName: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .stringName
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        Self._ptr_constructor_godotstringname(from: unsafePointer!)
    }
}

// MARK: - NodePath

extension NodePath: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .nodePath
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        Self._ptr_constructor_nodepath(from: unsafePointer!)
    }
}

// MARK: - RID

extension RID: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .rid
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        Self._ptr_constructor_rid(from: unsafePointer!)
    }
}

// MARK: - Object

extension Optional: ExposableValue where Wrapped : Object {
    public static var variantRepresentationType: Variant.RepresentationType { .object }
    public static var _exposedClassName: GodotStringName { Wrapped._exposedClassName }
    
    public consuming func copyToGodot(
        unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer
    ) {
        switch self {
        case .none:
            return
        case .some(let wrapped):
            wrapped.copyToGodot(unsafePointer: destinationUnsafePointer)
        }
    }
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        if let unsafePointer {
            Wrapped.retrievedInstanceManagedByGodot(GodotExtension.Interface.refGetObject(unsafePointer))
        } else {
            Wrapped.retrievedInstanceManagedByGodot(nil)
        }
    }
}

// MARK: - Callable

extension Callable: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .callable
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        Self._ptr_constructor_callable(from: unsafePointer!)
    }
}

// MARK: - Signal

extension Signal: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .signal
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        Self._ptr_constructor_signal(from: unsafePointer!)
    }
}

// MARK: - GodotDictionary

extension GodotDictionary: ExposableValue
where Key == Variant, AssociatedValue == Variant
{
    public static var variantRepresentationType: Variant.RepresentationType { .dictionary }
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        Self._ptr_constructor_godotdictionary(from: unsafePointer!)
    }
}

// MARK: - GodotArray

extension GodotArray: ExposableValue where Element : ExposableValue {
    public static var variantRepresentationType: Variant.RepresentationType { .array }
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        Self._ptr_constructor_godotarray(from: unsafePointer!)
    }
}

// MARK: - PackedByteArray

extension PackedByteArray: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .packedByteArray
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        Self._ptr_constructor_packedbytearray(from: unsafePointer!)
    }
}

// MARK: - PackedInt32Array

extension PackedInt32Array: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .packedInt32Array
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        Self._ptr_constructor_packedint32array(from: unsafePointer!)
    }
}

// MARK: - PackedInt64Array

extension PackedInt64Array: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .packedInt64Array
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        Self._ptr_constructor_packedint64array(from: unsafePointer!)
    }
}

// MARK: - PackedFloat32Array

extension PackedFloat32Array: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .packedFloat32Array
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        Self._ptr_constructor_packedfloat32array(from: unsafePointer!)
    }
}

// MARK: - PackedFloat64Array

extension PackedFloat64Array: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .packedFloat64Array
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        Self._ptr_constructor_packedfloat64array(from: unsafePointer!)
    }
}

// MARK: - PackedStringArray

extension PackedStringArray: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .packedStringArray
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        Self._ptr_constructor_packedstringarray(from: unsafePointer!)
    }
}

// MARK: - PackedVector2Array

extension PackedVector2Array: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .packedVector2Array
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        Self._ptr_constructor_packedvector2array(from: unsafePointer!)
    }
}

// MARK: - PackedVector3Array

extension PackedVector3Array: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .packedVector3Array
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        Self._ptr_constructor_packedvector3array(from: unsafePointer!)
    }
}

// MARK: - PackedColorArray

extension PackedColorArray: ExposableValue {
    public static let variantRepresentationType: Variant.RepresentationType = .packedColorArray
    
    public static func fromGodotUnsafePointer(_ unsafePointer: UnsafeRawPointer?) -> Self {
        Self._ptr_constructor_packedcolorarray(from: unsafePointer!)
    }
}

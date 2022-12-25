import Foundation

// MARK: - Protocol definition

/// A type that can encode itself to a `Variant`.
///
/// When conforming your own type to the `VariantEncodable` protocol,
/// do not use the `init<T>(_ encodable: T) where T: VariantEncodable`
/// initializer for the `makeVariant()`.
///
/// ```
/// extension YourOwnType: VariantEncodable {
///     static var variantType: Variant.ValueType { .bool }
///
///     func makeVariant() -> Variant {
///         Variant(self) // <-- Error here
///     }
/// }
/// ```
/// Now, `YourOwnType` conforms to the `VariantEncodable` protocol,
/// but uses the `Variant` initializer that itself uses the `makeVariant()`
/// function.
public protocol VariantEncodable {
    /// The type of the `Variant` created by the `makeVariant()` function.
    static var variantType: Variant.ValueType { get }
    
    /// Encodes this value into a newly created `Variant`.
    func makeVariant() -> Variant
}

/// A type that can decode itself from a `Variant`.
public protocol VariantDecodable {
    /// Creates a new instance by decoding the given `Variant`.
    static func valueFromVariant(_ variant: Variant) -> Self
}

/// A type that can convert itself into and out of a `Variant`.
public protocol VariantCodable: VariantEncodable & VariantDecodable {}

// MARK: - Base types extensions

extension Bool: VariantCodable {
    public static var variantType: Variant.ValueType { .bool }
    
    public func makeVariant() -> Variant {
        Variant(boolValue: self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Bool {
        variant.boolValue
    }
}

extension Int: VariantCodable {
    public static var variantType: Variant.ValueType { .int }
    
    public func makeVariant() -> Variant {
        Variant(intValue: self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Int {
        variant.intValue
    }
}

extension Double: VariantCodable {
    public static var variantType: Variant.ValueType { .float }
    
    public func makeVariant() -> Variant {
        Variant(doubleValue: self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Double {
        variant.doubleValue
    }
}

extension Float: VariantCodable {
    public static var variantType: Variant.ValueType { .float }
    
    public func makeVariant() -> Variant {
        Variant(doubleValue: Double(self))
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Float {
        Float(variant.doubleValue)
    }
}

extension Real: VariantCodable {
    public static var variantType: Variant.ValueType { .float }
    
    public func makeVariant() -> Variant {
        Variant(doubleValue: Double(self))
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Real {
        Real(variant.doubleValue)
    }
}

extension String: VariantCodable {
    public static var variantType: Variant.ValueType { .string }
    
    public func makeVariant() -> Variant {
        Variant(stringValue: self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> String {
        variant.stringValue
    }
}

extension Vector2: VariantCodable {
    public static var variantType: Variant.ValueType { .vector2 }
    
    public func makeVariant() -> Variant {
        Variant(vector2Value: self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Vector2 {
        variant.vector2Value
    }
}

extension Vector2i: VariantCodable {
    public static var variantType: Variant.ValueType { .vector2i }
    
    public func makeVariant() -> Variant {
        Variant(vector2iValue: self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Vector2i {
        variant.vector2iValue
    }
}

extension Rect2: VariantCodable {
    public static var variantType: Variant.ValueType { .rect2 }
    
    public func makeVariant() -> Variant {
        Variant(rect2Value: self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Rect2 {
        variant.rect2Value
    }
}

extension Rect2i: VariantCodable {
    public static var variantType: Variant.ValueType { .rect2i }
    
    public func makeVariant() -> Variant {
        Variant(rect2iValue: self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Rect2i {
        variant.rect2iValue
    }
}

extension Vector3: VariantCodable {
    public static var variantType: Variant.ValueType { .vector3 }
    
    public func makeVariant() -> Variant {
        Variant(vector3Value: self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Vector3 {
        variant.vector3Value
    }
}

extension Vector3i: VariantCodable {
    public static var variantType: Variant.ValueType { .vector3i }
    
    public func makeVariant() -> Variant {
        Variant(vector3iValue: self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Vector3i {
        variant.vector3iValue
    }
}

extension Transform2D: VariantCodable {
    public static var variantType: Variant.ValueType { .transform2D }
    
    public func makeVariant() -> Variant {
        Variant(transform2DValue: self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Transform2D {
        variant.transform2DValue
    }
}

extension Vector4: VariantCodable {
    public static var variantType: Variant.ValueType { .vector4 }
    
    public func makeVariant() -> Variant {
        Variant(vector4Value: self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Vector4 {
        variant.vector4Value
    }
}

extension Vector4i: VariantCodable {
    public static var variantType: Variant.ValueType { .vector4i }
    
    public func makeVariant() -> Variant {
        Variant(vector4iValue: self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Vector4i {
        variant.vector4iValue
    }
}

extension Plane: VariantCodable {
    public static var variantType: Variant.ValueType { .plane }
    
    public func makeVariant() -> Variant {
        Variant(planeValue: self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Plane {
        variant.planeValue
    }
}

extension Quaternion: VariantCodable {
    public static var variantType: Variant.ValueType { .quaternion }
    
    public func makeVariant() -> Variant {
        Variant(quaternionValue: self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Quaternion {
        variant.quaternionValue
    }
}

extension AABB: VariantCodable {
    public static var variantType: Variant.ValueType { .aabb }
    
    public func makeVariant() -> Variant {
        Variant(aabbValue: self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> AABB {
        variant.aabbValue
    }
}

extension Basis: VariantCodable {
    public static var variantType: Variant.ValueType { .basis }
    
    public func makeVariant() -> Variant {
        Variant(basisValue: self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Basis {
        variant.basisValue
    }
}

extension Transform3D: VariantCodable {
    public static var variantType: Variant.ValueType { .transform3D }
    
    public func makeVariant() -> Variant {
        Variant(transform3DValue: self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Transform3D {
        variant.transform3DValue
    }
}

extension Projection: VariantCodable {
    public static var variantType: Variant.ValueType { .projection }
    
    public func makeVariant() -> Variant {
        Variant(projectionValue: self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Projection {
        variant.projectionValue
    }
}

extension Color: VariantCodable {
    public static var variantType: Variant.ValueType { .color }
    
    public func makeVariant() -> Variant {
        Variant(colorValue: self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Color {
        variant.colorValue
    }
}

extension StringName: VariantCodable {
    public static var variantType: Variant.ValueType { .stringName }
    
    public func makeVariant() -> Variant {
        Variant(stringNameValue: self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> StringName {
        variant.stringNameValue
    }
}

extension NodePath: VariantCodable {
    public static var variantType: Variant.ValueType { .nodePath }
    
    public func makeVariant() -> Variant {
        Variant(nodePathValue: self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> NodePath {
        variant.nodePathValue
    }
}

extension RID: VariantCodable {
    public static var variantType: Variant.ValueType { .rid }
    
    public func makeVariant() -> Variant {
        Variant(ridValue: self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> RID {
        variant.ridValue
    }
}

extension Object: VariantCodable {
    public static var variantType: Variant.ValueType { .object }
    
    public func makeVariant() -> Variant {
        Variant(objectValue: self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Self {
        variant.objectValue(ofType: Self.self)
    }
}

extension Callable: VariantCodable {
    public static var variantType: Variant.ValueType { .callable }
    
    public func makeVariant() -> Variant {
        Variant(callableValue: self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Callable {
        variant.callableValue
    }
}

extension Signal: VariantCodable {
    public static var variantType: Variant.ValueType { .signal }
    
    public func makeVariant() -> Variant {
        Variant(signalValue: self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Signal {
        variant.signalValue
    }
}

extension Dictionary: VariantCodable {
    public static var variantType: Variant.ValueType { .dictionary }
    
    public func makeVariant() -> Variant {
        Variant(dictionaryValue: self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Dictionary {
        variant.dictionaryValue
    }
}

extension Array: VariantCodable {
    public static var variantType: Variant.ValueType { .array }
    
    public func makeVariant() -> Variant {
        Variant(arrayValue: self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Array {
        variant.arrayValue
    }
}

extension PackedByteArray: VariantCodable {
    public static var variantType: Variant.ValueType { .packedByteArray }
    
    public func makeVariant() -> Variant {
        Variant(packedByteArrayValue: self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> PackedByteArray {
        variant.packedByteArrayValue
    }
}

extension PackedInt32Array: VariantCodable {
    public static var variantType: Variant.ValueType { .packedInt32Array }
    
    public func makeVariant() -> Variant {
        Variant(packedInt32ArrayValue: self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> PackedInt32Array {
        variant.packedInt32ArrayValue
    }
}

extension PackedInt64Array: VariantCodable {
    public static var variantType: Variant.ValueType { .packedInt64Array }
    
    public func makeVariant() -> Variant {
        Variant(packedInt64ArrayValue: self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> PackedInt64Array {
        variant.packedInt64ArrayValue
    }
}

extension PackedFloat32Array: VariantCodable {
    public static var variantType: Variant.ValueType { .packedFloat32Array }
    
    public func makeVariant() -> Variant {
        Variant(packedFloat32ArrayValue: self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> PackedFloat32Array {
        variant.packedFloat32ArrayValue
    }
}

extension PackedFloat64Array: VariantCodable {
    public static var variantType: Variant.ValueType { .packedFloat64Array }
    
    public func makeVariant() -> Variant {
        Variant(packedFloat64ArrayValue: self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> PackedFloat64Array {
        variant.packedFloat64ArrayValue
    }
}

extension PackedStringArray: VariantCodable {
    public static var variantType: Variant.ValueType { .packedStringArray }
    
    public func makeVariant() -> Variant {
        Variant(packedStringArrayValue: self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> PackedStringArray {
        variant.packedStringArrayValue
    }
}

extension PackedVector2Array: VariantCodable {
    public static var variantType: Variant.ValueType { .packedVector2Array }
    
    public func makeVariant() -> Variant {
        Variant(packedVector2ArrayValue: self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> PackedVector2Array {
        variant.packedVector2ArrayValue
    }
}

extension PackedVector3Array: VariantCodable {
    public static var variantType: Variant.ValueType { .packedVector3Array }
    
    public func makeVariant() -> Variant {
        Variant(packedVector3ArrayValue: self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> PackedVector3Array {
        variant.packedVector3ArrayValue
    }
}

extension PackedColorArray: VariantCodable {
    public static var variantType: Variant.ValueType { .packedColorArray }
    
    public func makeVariant() -> Variant {
        Variant(packedColorArrayValue: self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> PackedColorArray {
        variant.packedColorArrayValue
    }
}

import Foundation

// MARK: - Protocol definition

/// A type that can encode itself to a `Variant`.
public protocol VariantEncodable {
    /// The type of the `Variant` created by the `createVariant()` function.
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
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Bool {
        variant.boolValue
    }
}

extension Int: VariantCodable {
    public static var variantType: Variant.ValueType { .int }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Int {
        variant.intValue
    }
}

extension Int8: VariantCodable {
    public static var variantType: Variant.ValueType { .int }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Int8 {
        Int8(variant.intValue)
    }
}

extension Int16: VariantCodable {
    public static var variantType: Variant.ValueType { .int }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Int16 {
        Int16(variant.intValue)
    }
}

extension Int32: VariantCodable {
    public static var variantType: Variant.ValueType { .int }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Int32 {
        Int32(variant.intValue)
    }
}

extension Int64: VariantCodable {
    public static var variantType: Variant.ValueType { .int }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Int64 {
        Int64(variant.intValue)
    }
}

extension UInt8: VariantCodable {
    public static var variantType: Variant.ValueType { .int }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> UInt8 {
        UInt8(variant.intValue)
    }
}

extension UInt16: VariantCodable {
    public static var variantType: Variant.ValueType { .int }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> UInt16 {
        UInt16(variant.intValue)
    }
}

extension UInt32: VariantCodable {
    public static var variantType: Variant.ValueType { .int }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> UInt32 {
        UInt32(variant.intValue)
    }
}

extension UInt64: VariantCodable {
    public static var variantType: Variant.ValueType { .int }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> UInt64 {
        UInt64(variant.intValue)
    }
}

extension Double: VariantCodable {
    public static var variantType: Variant.ValueType { .float }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Double {
        variant.doubleValue
    }
}

extension Float: VariantCodable {
    public static var variantType: Variant.ValueType { .float }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Float {
        Float(variant.doubleValue)
    }
}

extension Real: VariantCodable {
    public static var variantType: Variant.ValueType { .float }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Real {
        Real(variant.doubleValue)
    }
}

extension String: VariantCodable {
    public static var variantType: Variant.ValueType { .string }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> String {
        variant.stringValue
    }
}

extension Vector2: VariantCodable {
    public static var variantType: Variant.ValueType { .vector2 }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Vector2 {
        variant.vector2Value
    }
}

extension Vector2i: VariantCodable {
    public static var variantType: Variant.ValueType { .vector2i }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Vector2i {
        variant.vector2iValue
    }
}

extension Rect2: VariantCodable {
    public static var variantType: Variant.ValueType { .rect2 }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Rect2 {
        variant.rect2Value
    }
}

extension Rect2i: VariantCodable {
    public static var variantType: Variant.ValueType { .rect2i }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Rect2i {
        variant.rect2iValue
    }
}

extension Vector3: VariantCodable {
    public static var variantType: Variant.ValueType { .vector3 }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Vector3 {
        variant.vector3Value
    }
}

extension Vector3i: VariantCodable {
    public static var variantType: Variant.ValueType { .vector3i }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Vector3i {
        variant.vector3iValue
    }
}

extension Transform2D: VariantCodable {
    public static var variantType: Variant.ValueType { .transform2D }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Transform2D {
        variant.transform2DValue
    }
}

extension Vector4: VariantCodable {
    public static var variantType: Variant.ValueType { .vector4 }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Vector4 {
        variant.vector4Value
    }
}

extension Vector4i: VariantCodable {
    public static var variantType: Variant.ValueType { .vector4i }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Vector4i {
        variant.vector4iValue
    }
}

extension Plane: VariantCodable {
    public static var variantType: Variant.ValueType { .plane }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Plane {
        variant.planeValue
    }
}

extension Quaternion: VariantCodable {
    public static var variantType: Variant.ValueType { .quaternion }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Quaternion {
        variant.quaternionValue
    }
}

extension AABB: VariantCodable {
    public static var variantType: Variant.ValueType { .aabb }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> AABB {
        variant.aabbValue
    }
}

extension Basis: VariantCodable {
    public static var variantType: Variant.ValueType { .basis }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Basis {
        variant.basisValue
    }
}

extension Transform3D: VariantCodable {
    public static var variantType: Variant.ValueType { .transform3D }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Transform3D {
        variant.transform3DValue
    }
}

extension Projection: VariantCodable {
    public static var variantType: Variant.ValueType { .projection }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Projection {
        variant.projectionValue
    }
}

extension Color: VariantCodable {
    public static var variantType: Variant.ValueType { .color }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Color {
        variant.colorValue
    }
}

extension StringName: VariantCodable {
    public static var variantType: Variant.ValueType { .stringName }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> StringName {
        variant.stringNameValue
    }
}

extension NodePath: VariantCodable {
    public static var variantType: Variant.ValueType { .nodePath }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> NodePath {
        variant.nodePathValue
    }
}

extension RID: VariantCodable {
    public static var variantType: Variant.ValueType { .rid }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> RID {
        variant.ridValue
    }
}

extension Object: VariantCodable {
    public static var variantType: Variant.ValueType { .object }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Self {
        variant.objectValue(ofType: Self.self)
    }
}

extension Callable: VariantCodable {
    public static var variantType: Variant.ValueType { .callable }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Callable {
        variant.callableValue
    }
}

extension Signal: VariantCodable {
    public static var variantType: Variant.ValueType { .signal }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Signal {
        variant.signalValue
    }
}

extension Dictionary: VariantCodable {
    public static var variantType: Variant.ValueType { .dictionary }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Dictionary {
        variant.dictionaryValue
    }
}

extension Array: VariantCodable {
    public static var variantType: Variant.ValueType { .array }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> Array {
        variant.arrayValue
    }
}

extension PackedByteArray: VariantCodable {
    public static var variantType: Variant.ValueType { .packedByteArray }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> PackedByteArray {
        variant.packedByteArrayValue
    }
}

extension PackedInt32Array: VariantCodable {
    public static var variantType: Variant.ValueType { .packedInt32Array }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> PackedInt32Array {
        variant.packedInt32ArrayValue
    }
}

extension PackedInt64Array: VariantCodable {
    public static var variantType: Variant.ValueType { .packedInt64Array }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> PackedInt64Array {
        variant.packedInt64ArrayValue
    }
}

extension PackedFloat32Array: VariantCodable {
    public static var variantType: Variant.ValueType { .packedFloat32Array }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> PackedFloat32Array {
        variant.packedFloat32ArrayValue
    }
}

extension PackedFloat64Array: VariantCodable {
    public static var variantType: Variant.ValueType { .packedFloat64Array }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> PackedFloat64Array {
        variant.packedFloat64ArrayValue
    }
}

extension PackedStringArray: VariantCodable {
    public static var variantType: Variant.ValueType { .packedStringArray }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> PackedStringArray {
        variant.packedStringArrayValue
    }
}

extension PackedVector2Array: VariantCodable {
    public static var variantType: Variant.ValueType { .packedVector2Array }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> PackedVector2Array {
        variant.packedVector2ArrayValue
    }
}

extension PackedVector3Array: VariantCodable {
    public static var variantType: Variant.ValueType { .packedVector3Array }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> PackedVector3Array {
        variant.packedVector3ArrayValue
    }
}

extension PackedColorArray: VariantCodable {
    public static var variantType: Variant.ValueType { .packedColorArray }
    
    public func makeVariant() -> Variant {
        Variant(self)
    }
    
    public static func valueFromVariant(_ variant: Variant) -> PackedColorArray {
        variant.packedColorArrayValue
    }
}

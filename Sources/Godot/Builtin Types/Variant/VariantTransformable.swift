import Foundation

// MARK: - Protocol definitions

/// A type that can be represented as a `Variant`.
public protocol VariantConvertible {
    /// A `Variant` representation of this instance.
    var variant: Variant { get }
}

/// A type that can be initialized using a `Variant`.
public protocol ExpressibleByVariant {
    /// Creates an instance initialized with the given `Variant`.
    init(variant: Variant)
}

/// A type that can be represented as, and initialized with, a `Variant`.
public typealias VariantTransformable = VariantConvertible & ExpressibleByVariant

/// A type that can be represented as, and initialized with, a `Variant`
/// and knows its underlying variant storage type.
public protocol TypedVariantTransformable: VariantTransformable {
    /// The underlying variant storage type.
    static var variantStorageType: Variant.ValueType { get }
}

// MARK: - Base types extensions

extension Bool: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .bool }
    
    public var variant: Variant {
        Variant(boolValue: self)
    }
    
    public init(variant: Variant) {
        self = variant.boolValue
    }
}

extension Int: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .int }
    
    public var variant: Variant {
        Variant(intValue: self)
    }
    
    public init(variant: Variant) {
        self = variant.intValue
    }
}

extension Double: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .float }
    
    public var variant: Variant {
        Variant(doubleValue: self)
    }
    
    public init(variant: Variant) {
        self = variant.doubleValue
    }
}

extension Float: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .float }
    
    public var variant: Variant {
        Variant(doubleValue: Double(self))
    }
    
    public init(variant: Variant) {
        self = Float(variant.doubleValue)
    }
}

extension Real: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .float }
    
    public var variant: Variant {
        Variant(doubleValue: Double(self))
    }
    
    public init(variant: Variant) {
        self = Real(variant.doubleValue)
    }
}

extension String: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .string }
    
    public var variant: Variant {
        Variant(stringValue: self)
    }
    
    public init(variant: Variant) {
        self = variant.stringValue
    }
}

extension Vector2: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .vector2 }
    
    public var variant: Variant {
        Variant(vector2Value: self)
    }
    
    public init(variant: Variant) {
        self = variant.vector2Value
    }
}

extension Vector2i: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .vector2i }
    
    public var variant: Variant {
        Variant(vector2iValue: self)
    }
    
    public init(variant: Variant) {
        self = variant.vector2iValue
    }
}

extension Rect2: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .rect2 }
    
    public var variant: Variant {
        Variant(rect2Value: self)
    }
    
    public init(variant: Variant) {
        self = variant.rect2Value
    }
}

extension Rect2i: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .rect2i }
    
    public var variant: Variant {
        Variant(rect2iValue: self)
    }
    
    public init(variant: Variant) {
        self = variant.rect2iValue
    }
}

extension Vector3: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .vector3 }
    
    public var variant: Variant {
        Variant(vector3Value: self)
    }
    
    public init(variant: Variant) {
        self = variant.vector3Value
    }
}

extension Vector3i: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .vector3i }
    
    public var variant: Variant {
        Variant(vector3iValue: self)
    }
    
    public init(variant: Variant) {
        self = variant.vector3iValue
    }
}

extension Transform2D: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .transform2D }
    
    public var variant: Variant {
        Variant(transform2DValue: self)
    }
    
    public init(variant: Variant) {
        self = variant.transform2DValue
    }
}

extension Vector4: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .vector4 }
    
    public var variant: Variant {
        Variant(vector4Value: self)
    }
    
    public init(variant: Variant) {
        self = variant.vector4Value
    }
}

extension Vector4i: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .vector4i }
    
    public var variant: Variant {
        Variant(vector4iValue: self)
    }
    
    public init(variant: Variant) {
        self = variant.vector4iValue
    }
}

extension Plane: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .plane }
    
    public var variant: Variant {
        Variant(planeValue: self)
    }
    
    public init(variant: Variant) {
        self = variant.planeValue
    }
}

extension Quaternion: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .quaternion }
    
    public var variant: Variant {
        Variant(quaternionValue: self)
    }
    
    public init(variant: Variant) {
        self = variant.quaternionValue
    }
}

extension AABB: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .aabb }
    
    public var variant: Variant {
        Variant(aabbValue: self)
    }
    
    public init(variant: Variant) {
        self = variant.aabbValue
    }
}

extension Basis: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .basis }
    
    public var variant: Variant {
        Variant(basisValue: self)
    }
    
    public init(variant: Variant) {
        self = variant.basisValue
    }
}

extension Transform3D: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .transform3D }
    
    public var variant: Variant {
        Variant(transform3DValue: self)
    }
    
    public init(variant: Variant) {
        self = variant.transform3DValue
    }
}

extension Projection: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .projection }
    
    public var variant: Variant {
        Variant(projectionValue: self)
    }
    
    public init(variant: Variant) {
        self = variant.projectionValue
    }
}

extension Color: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .color }
    
    public var variant: Variant {
        Variant(colorValue: self)
    }
    
    public init(variant: Variant) {
        self = variant.colorValue
    }
}

extension StringName: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .stringName }
    
    public var variant: Variant {
        Variant(stringNameValue: self)
    }
    
    public init(variant: Variant) {
        self = variant.stringNameValue
    }
}

extension NodePath: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .nodePath }
    
    public var variant: Variant {
        Variant(nodePathValue: self)
    }
    
    public init(variant: Variant) {
        self = variant.nodePathValue
    }
}

extension RID: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .rid }
    
    public var variant: Variant {
        Variant(ridValue: self)
    }
    
    public init(variant: Variant) {
        self = variant.ridValue
    }
}

extension Object: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .object }
    
    public var variant: Variant {
        Variant(objectValue: self)
    }
}

extension Callable: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .callable }
    
    public var variant: Variant {
        Variant(callableValue: self)
    }
    
    public init(variant: Variant) {
        self = variant.callableValue
    }
}

extension Signal: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .signal }
    
    public var variant: Variant {
        Variant(signalValue: self)
    }
    
    public init(variant: Variant) {
        self = variant.signalValue
    }
}

extension Dictionary: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .dictionary }
    
    public var variant: Variant {
        Variant(dictionaryValue: self)
    }
    
    public init(variant: Variant) {
        self = variant.dictionaryValue
    }
}

extension Array: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .array }
    
    public var variant: Variant {
        Variant(arrayValue: self)
    }
    
    public init(variant: Variant) {
        self = variant.arrayValue
    }
}

extension PackedByteArray: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .packedByteArray }
    
    public var variant: Variant {
        Variant(packedByteArrayValue: self)
    }
    
    public init(variant: Variant) {
        self = variant.packedByteArrayValue
    }
}

extension PackedInt32Array: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .packedInt32Array }
    
    public var variant: Variant {
        Variant(packedInt32ArrayValue: self)
    }
    
    public init(variant: Variant) {
        self = variant.packedInt32ArrayValue
    }
}

extension PackedInt64Array: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .packedInt64Array }
    
    public var variant: Variant {
        Variant(packedInt64ArrayValue: self)
    }
    
    public init(variant: Variant) {
        self = variant.packedInt64ArrayValue
    }
}

extension PackedFloat32Array: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .packedFloat32Array }
    
    public var variant: Variant {
        Variant(packedFloat32ArrayValue: self)
    }
    
    public init(variant: Variant) {
        self = variant.packedFloat32ArrayValue
    }
}

extension PackedFloat64Array: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .packedFloat64Array }
    
    public var variant: Variant {
        Variant(packedFloat64ArrayValue: self)
    }
    
    public init(variant: Variant) {
        self = variant.packedFloat64ArrayValue
    }
}

extension PackedStringArray: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .packedStringArray }
    
    public var variant: Variant {
        Variant(packedStringArrayValue: self)
    }
    
    public init(variant: Variant) {
        self = variant.packedStringArrayValue
    }
}

extension PackedVector2Array: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .packedVector2Array }
    
    public var variant: Variant {
        Variant(packedVector2ArrayValue: self)
    }
    
    public init(variant: Variant) {
        self = variant.packedVector2ArrayValue
    }
}

extension PackedVector3Array: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .packedVector3Array }
    
    public var variant: Variant {
        Variant(packedVector3ArrayValue: self)
    }
    
    public init(variant: Variant) {
        self = variant.packedVector3ArrayValue
    }
}

extension PackedColorArray: TypedVariantTransformable {
    public static var variantStorageType: Variant.ValueType { .packedColorArray }
    
    public var variant: Variant {
        Variant(packedColorArrayValue: self)
    }
    
    public init(variant: Variant) {
        self = variant.packedColorArrayValue
    }
}

// MARK: - Optional

extension Optional: VariantConvertible where Wrapped : VariantConvertible {
    public var variant: Variant {
        switch self {
        case .none:
            return nil
        case .some(let wrapped):
            return wrapped.variant
        }
    }
}

extension Optional: ExpressibleByVariant where Wrapped : ExpressibleByVariant {
    public init(variant: Variant) {
        if variant == nil {
            self = .none
        } else {
            self = .some(Wrapped(variant: variant))
        }
    }
}

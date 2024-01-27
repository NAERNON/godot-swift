
// MARK: - Bool

extension Bool: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

// MARK: - Int

extension Int: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension Int8: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension Int16: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension Int32: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension Int64: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension UInt8: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension UInt: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension UInt16: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension UInt32: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension UInt64: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

// MARK: - Double

extension Double: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

// MARK: - Float

extension Float: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

// MARK: - GodotString

extension GodotString: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

// MARK: - Vector2

extension Vector2: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

// MARK: - Vector2I

extension Vector2I: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

// MARK: - Rect2

extension Rect2: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

// MARK: - Rect2I

extension Rect2I: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

// MARK: - Vector3

extension Vector3: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

// MARK: - Vector3I

extension Vector3I: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

// MARK: - Transform2D

extension Transform2D: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

// MARK: - Vector4

extension Vector4: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

// MARK: - Vector4I

extension Vector4I: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

// MARK: - Plane

extension Plane: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

// MARK: - Quaternion

extension Quaternion: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

// MARK: - AABB

extension AABB: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

// MARK: - Basis

extension Basis: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

// MARK: - Transform3D

extension Transform3D: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

// MARK: - Projection

extension Projection: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

// MARK: - Color

extension Color: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

// MARK: - GodotStringName

extension GodotStringName: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

// MARK: - NodePath

extension NodePath: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

// MARK: - RID

extension RID: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

// MARK: - Object

extension Node: HintableValue {
    public typealias HintingValue = Node
    public static var defaultHint: Hint<Node> { .init(Hint<Self>.node) }
}

extension Resource: HintableValue {
    public typealias HintingValue = Resource
    public static var defaultHint: Hint<Resource> { .init(Hint<Self>.resource) }
}

extension Optional: HintableValue
where Wrapped : Object, Wrapped : HintableValue
{
    public typealias HintingValue = Wrapped
    public static var defaultHint: Hint<Wrapped> { .init(Wrapped.defaultHint) }
}

// MARK: - Callable

extension Callable: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

// MARK: - Signal

extension Signal: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

// MARK: - GodotDictionary

extension GodotDictionary: HintableValue
where Key == Variant, AssociatedValue == Variant
{
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

// MARK: - GodotArray

extension GodotArray: HintableValue where Element : ExportableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .elements(Element.defaultHint) }
}

// MARK: - PackedByteArray

extension PackedByteArray: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

// MARK: - PackedInt32Array

extension PackedInt32Array: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

// MARK: - PackedInt64Array

extension PackedInt64Array: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

// MARK: - PackedFloat32Array

extension PackedFloat32Array: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

// MARK: - PackedFloat64Array

extension PackedFloat64Array: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

// MARK: - PackedStringArray

extension PackedStringArray: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

// MARK: - PackedVector2Array

extension PackedVector2Array: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

// MARK: - PackedVector3Array

extension PackedVector3Array: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

// MARK: - PackedColorArray

extension PackedColorArray: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}


extension Bool: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

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

extension UInt: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension UInt8: HintableValue {
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

extension Double: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension Float: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension GodotString: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension SIMD2: HintableValue where Self.Scalar : VariantSIMDStorableScalar {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension SIMD3: HintableValue where Self.Scalar : VariantSIMDStorableScalar {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension SIMD4: HintableValue where Self.Scalar : VariantSIMDStorableScalar {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension Rect2: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension Rect2I: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension Transform2D: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension Plane: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension Quaternion: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension AABB: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension Basis: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension Transform3D: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension Projection: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension Color: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension GodotStringName: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension NodePath: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension RID: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

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

extension Callable: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension Signal: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension GodotDictionary: HintableValue
where Key == Variant, AssociatedValue == Variant
{
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension GodotArray: HintableValue where Element : ExportableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .elements(Element.defaultHint) }
}

extension PackedByteArray: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension PackedInt32Array: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension PackedInt64Array: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension PackedFloat32Array: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension PackedFloat64Array: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension PackedStringArray: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension PackedVector2Array: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension PackedVector3Array: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

extension PackedColorArray: HintableValue {
    public typealias HintingValue = Self
    public static var defaultHint: Hint<Self> { .typed }
}

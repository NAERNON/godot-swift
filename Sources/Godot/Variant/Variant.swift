import Foundation
import GodotExtensionHeaders

#warning("Check @inlinable & @usableFromInline")

public struct Variant {
    // MARK: Inits
    
    public static var `nil`: Variant {
        Variant()
    }
    
    /// Creates a new `Variant` as a `nil` variant.
    public init() {
        withUnsafeNativePointer { nativeTypePtr in
            GodotInterface.native.variant_new_nil(nativeTypePtr)
        }
    }
    
    public init(nativeVariantPtr: GDNativeVariantPtr) {
        withUnsafeNativePointer { nativeTypePtr in
            GodotInterface.native.variant_new_copy(nativeTypePtr, nativeVariantPtr)
        }
    }
    
    public init(_ other: Variant) {
        withUnsafeNativePointer { nativeTypePtr in
            other.withUnsafeNativePointer { otherNativeTypePtr in
                GodotInterface.native.variant_new_copy(nativeTypePtr, otherNativeTypePtr)
            }
        }
    }
    
    public init(_ boolValue: Bool) {
        let value: UInt8 = boolValue ? 1 : 0
        self.withUnsafeNativePointer { nativeTypePtr in
            withUnsafePointer(to: value) { otherNativeTypePtr in
                Variant.fromTypeConstructor_bool(nativeTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
    }
    
    public init(_ intValue: Int) {
        self.withUnsafeNativePointer { nativeTypePtr in
            withUnsafePointer(to: intValue) { otherNativeTypePtr in
                Variant.fromTypeConstructor_int(nativeTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
    }
    
    public init(_ doubleValue: Double) {
        self.withUnsafeNativePointer { nativeTypePtr in
            withUnsafePointer(to: doubleValue) { otherNativeTypePtr in
                Variant.fromTypeConstructor_float(nativeTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
    }
    
    public init(_ stringValue: String) {
        self.withUnsafeNativePointer { nativeTypePtr in
            stringValue.withUnsafeNativePointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_string(nativeTypePtr, otherNativeTypePtr)
            }
        }
    }
    
    public init(_ vector2Value: Vector2) {
        self.withUnsafeNativePointer { nativeTypePtr in
            withUnsafePointer(to: vector2Value) { otherNativeTypePtr in
                Variant.fromTypeConstructor_vector2(nativeTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
    }
    
    public init(_ vector2iValue: Vector2i) {
        self.withUnsafeNativePointer { nativeTypePtr in
            withUnsafePointer(to: vector2iValue) { otherNativeTypePtr in
                Variant.fromTypeConstructor_vector2i(nativeTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
    }
    
    public init(_ rect2Value: Rect2) {
        self.withUnsafeNativePointer { nativeTypePtr in
            withUnsafePointer(to: rect2Value) { otherNativeTypePtr in
                Variant.fromTypeConstructor_rect2(nativeTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
    }
    
    public init(_ rect2iValue: Rect2i) {
        self.withUnsafeNativePointer { nativeTypePtr in
            withUnsafePointer(to: rect2iValue) { otherNativeTypePtr in
                Variant.fromTypeConstructor_rect2i(nativeTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
    }
    
    public init(_ vector3Value: Vector3) {
        self.withUnsafeNativePointer { nativeTypePtr in
            withUnsafePointer(to: vector3Value) { otherNativeTypePtr in
                Variant.fromTypeConstructor_vector3(nativeTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
    }
    
    public init(_ vector3iValue: Vector3i) {
        self.withUnsafeNativePointer { nativeTypePtr in
            withUnsafePointer(to: vector3iValue) { otherNativeTypePtr in
                Variant.fromTypeConstructor_vector3i(nativeTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
    }
    
    public init(_ transform2DValue: Transform2D) {
        self.withUnsafeNativePointer { nativeTypePtr in
            withUnsafePointer(to: transform2DValue) { otherNativeTypePtr in
                Variant.fromTypeConstructor_transform2D(nativeTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
    }
    
    public init(_ vector4Value: Vector4) {
        self.withUnsafeNativePointer { nativeTypePtr in
            withUnsafePointer(to: vector4Value) { otherNativeTypePtr in
                Variant.fromTypeConstructor_vector4(nativeTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
    }
    
    public init(_ vector4iValue: Vector4i) {
        self.withUnsafeNativePointer { nativeTypePtr in
            withUnsafePointer(to: vector4iValue) { otherNativeTypePtr in
                Variant.fromTypeConstructor_vector4i(nativeTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
    }
    
    public init(_ planeValue: Plane) {
        self.withUnsafeNativePointer { nativeTypePtr in
            withUnsafePointer(to: planeValue) { otherNativeTypePtr in
                Variant.fromTypeConstructor_plane(nativeTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
    }
    
    public init(_ quaternionValue: Quaternion) {
        self.withUnsafeNativePointer { nativeTypePtr in
            withUnsafePointer(to: quaternionValue) { otherNativeTypePtr in
                Variant.fromTypeConstructor_quaternion(nativeTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
    }
    
    public init(_ aabbValue: AABB) {
        self.withUnsafeNativePointer { nativeTypePtr in
            withUnsafePointer(to: aabbValue) { otherNativeTypePtr in
                Variant.fromTypeConstructor_aabb(nativeTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
    }
    
    public init(_ basisValue: Basis) {
        self.withUnsafeNativePointer { nativeTypePtr in
            withUnsafePointer(to: basisValue) { otherNativeTypePtr in
                Variant.fromTypeConstructor_basis(nativeTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
    }
    
    public init(_ transform3DValue: Transform3D) {
        self.withUnsafeNativePointer { nativeTypePtr in
            withUnsafePointer(to: transform3DValue) { otherNativeTypePtr in
                Variant.fromTypeConstructor_transform3D(nativeTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
    }
    
    public init(_ projectionValue: Projection) {
        self.withUnsafeNativePointer { nativeTypePtr in
            withUnsafePointer(to: projectionValue) { otherNativeTypePtr in
                Variant.fromTypeConstructor_projection(nativeTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
    }
    
    public init(_ colorValue: Color) {
        self.withUnsafeNativePointer { nativeTypePtr in
            withUnsafePointer(to: colorValue) { otherNativeTypePtr in
                Variant.fromTypeConstructor_color(nativeTypePtr, UnsafeMutableRawPointer(mutating: otherNativeTypePtr))
            }
        }
    }
    
    public init(_ stringNameValue: StringName) {
        self.withUnsafeNativePointer { nativeTypePtr in
            stringNameValue.withUnsafeNativePointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_stringName(nativeTypePtr, otherNativeTypePtr)
            }
        }
    }
    
    public init(_ nodePathValue: NodePath) {
        self.withUnsafeNativePointer { nativeTypePtr in
            nodePathValue.withUnsafeNativePointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_nodePath(nativeTypePtr, otherNativeTypePtr)
            }
        }
    }
    
    public init(_ ridValue: RID) {
        self.withUnsafeNativePointer { nativeTypePtr in
            ridValue.withUnsafeNativePointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_rid(nativeTypePtr, otherNativeTypePtr)
            }
        }
    }
    
    public init(_ objectValue: Object) {
#warning("Do this init")
        self.init()
    }
    
    public init(_ callableValue: Callable) {
        self.withUnsafeNativePointer { nativeTypePtr in
            callableValue.withUnsafeNativePointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_callable(nativeTypePtr, otherNativeTypePtr)
            }
        }
    }
    
    public init(_ signalValue: Signal) {
        self.withUnsafeNativePointer { nativeTypePtr in
            signalValue.withUnsafeNativePointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_signal(nativeTypePtr, otherNativeTypePtr)
            }
        }
    }
    
    public init(_ dictionaryValue: Dictionary) {
        self.withUnsafeNativePointer { nativeTypePtr in
            dictionaryValue.withUnsafeNativePointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_dictionary(nativeTypePtr, otherNativeTypePtr)
            }
        }
    }
    
    public init(_ arrayValue: Array) {
        self.withUnsafeNativePointer { nativeTypePtr in
            arrayValue.withUnsafeNativePointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_array(nativeTypePtr, otherNativeTypePtr)
            }
        }
    }
    
    public init(_ packedByteArrayValue: PackedByteArray) {
        self.withUnsafeNativePointer { nativeTypePtr in
            packedByteArrayValue.withUnsafeNativePointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_packedByteArray(nativeTypePtr, otherNativeTypePtr)
            }
        }
    }
    
    public init(_ packedInt32ArrayValue: PackedInt32Array) {
        self.withUnsafeNativePointer { nativeTypePtr in
            packedInt32ArrayValue.withUnsafeNativePointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_packedInt32Array(nativeTypePtr, otherNativeTypePtr)
            }
        }
    }
    
    public init(_ packedInt64ArrayValue: PackedInt64Array) {
        self.withUnsafeNativePointer { nativeTypePtr in
            packedInt64ArrayValue.withUnsafeNativePointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_packedInt64Array(nativeTypePtr, otherNativeTypePtr)
            }
        }
    }
    
    public init(_ packedFloat32ArrayValue: PackedFloat32Array) {
        self.withUnsafeNativePointer { nativeTypePtr in
            packedFloat32ArrayValue.withUnsafeNativePointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_packedFloat32Array(nativeTypePtr, otherNativeTypePtr)
            }
        }
    }
    
    public init(_ packedFloat64ArrayValue: PackedFloat64Array) {
        self.withUnsafeNativePointer { nativeTypePtr in
            packedFloat64ArrayValue.withUnsafeNativePointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_packedFloat64Array(nativeTypePtr, otherNativeTypePtr)
            }
        }
    }
    
    public init(_ packedStringArrayValue: PackedStringArray) {
        self.withUnsafeNativePointer { nativeTypePtr in
            packedStringArrayValue.withUnsafeNativePointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_packedStringArray(nativeTypePtr, otherNativeTypePtr)
            }
        }
    }
    
    public init(_ packedVector2ArrayValue: PackedVector2Array) {
        self.withUnsafeNativePointer { nativeTypePtr in
            packedVector2ArrayValue.withUnsafeNativePointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_packedVector2Array(nativeTypePtr, otherNativeTypePtr)
            }
        }
    }
    
    public init(_ packedVector3ArrayValue: PackedVector3Array) {
        self.withUnsafeNativePointer { nativeTypePtr in
            packedVector3ArrayValue.withUnsafeNativePointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_packedVector3Array(nativeTypePtr, otherNativeTypePtr)
            }
        }
    }
    
    public init(_ packedColorArrayValue: PackedColorArray) {
        self.withUnsafeNativePointer { nativeTypePtr in
            packedColorArrayValue.withUnsafeNativePointer { otherNativeTypePtr in
                Variant.fromTypeConstructor_packedColorArray(nativeTypePtr, otherNativeTypePtr)
            }
        }
    }

    // MARK: Getters
    
    public var boolValue: Bool {
        var newValue = UInt8()
        
        self.withUnsafeNativePointer { nativeTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_bool(UnsafeMutableRawPointer(otherNativeTypePtr), nativeTypePtr)
            }
        }
        
        return newValue != 0
    }
    
    public var intValue: Int {
        var newValue = Int()
        
        self.withUnsafeNativePointer { nativeTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_int(UnsafeMutableRawPointer(otherNativeTypePtr), nativeTypePtr)
            }
        }
        
        return newValue
    }
    
    public var doubleValue: Double {
        var newValue = Double()
        
        self.withUnsafeNativePointer { nativeTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_float(UnsafeMutableRawPointer(otherNativeTypePtr), nativeTypePtr)
            }
        }
        
        return newValue
    }
    
    public var stringValue: String {
        let newValue = String()
        
        self.withUnsafeNativePointer { nativeTypePtr in
            newValue.withUnsafeNativePointer { otherNativeTypePtr in
                Variant.toTypeConstructor_string(UnsafeMutableRawPointer(otherNativeTypePtr), nativeTypePtr)
            }
        }
        
        return newValue
    }
    
    public var vector2Value: Vector2 {
        var newValue = Vector2()
        
        self.withUnsafeNativePointer { nativeTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_vector2(UnsafeMutableRawPointer(otherNativeTypePtr), nativeTypePtr)
            }
        }
        
        return newValue
    }
    
    public var vector2iValue: Vector2i {
        var newValue = Vector2i()
        
        self.withUnsafeNativePointer { nativeTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_vector2i(UnsafeMutableRawPointer(otherNativeTypePtr), nativeTypePtr)
            }
        }
        
        return newValue
    }
    
    public var rect2Value: Rect2 {
        var newValue = Rect2()
        
        self.withUnsafeNativePointer { nativeTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_rect2(UnsafeMutableRawPointer(otherNativeTypePtr), nativeTypePtr)
            }
        }
        
        return newValue
    }
    
    public var rect2iValue: Rect2i {
        var newValue = Rect2i()
        
        self.withUnsafeNativePointer { nativeTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_rect2i(UnsafeMutableRawPointer(otherNativeTypePtr), nativeTypePtr)
            }
        }
        
        return newValue
    }
    
    public var vector3Value: Vector3 {
        var newValue = Vector3()
        
        self.withUnsafeNativePointer { nativeTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_vector3(UnsafeMutableRawPointer(otherNativeTypePtr), nativeTypePtr)
            }
        }
        
        return newValue
    }
    
    public var vector3iValue: Vector3i {
        var newValue = Vector3i()
        
        self.withUnsafeNativePointer { nativeTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_vector3i(UnsafeMutableRawPointer(otherNativeTypePtr), nativeTypePtr)
            }
        }
        
        return newValue
    }
    
    public var transform2DValue: Transform2D {
        var newValue = Transform2D()
        
        self.withUnsafeNativePointer { nativeTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_transform2D(UnsafeMutableRawPointer(otherNativeTypePtr), nativeTypePtr)
            }
        }
        
        return newValue
    }
    
    public var vector4Value: Vector4 {
        var newValue = Vector4()
        
        self.withUnsafeNativePointer { nativeTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_vector4(UnsafeMutableRawPointer(otherNativeTypePtr), nativeTypePtr)
            }
        }
        
        return newValue
    }
    
    public var vector4iValue: Vector4i {
        var newValue = Vector4i()
        
        self.withUnsafeNativePointer { nativeTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_vector4i(UnsafeMutableRawPointer(otherNativeTypePtr), nativeTypePtr)
            }
        }
        
        return newValue
    }
    
    public var planeValue: Plane {
        var newValue = Plane()
        
        self.withUnsafeNativePointer { nativeTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_plane(UnsafeMutableRawPointer(otherNativeTypePtr), nativeTypePtr)
            }
        }
        
        return newValue
    }
    
    public var quaternionValue: Quaternion {
        var newValue = Quaternion()
        
        self.withUnsafeNativePointer { nativeTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_quaternion(UnsafeMutableRawPointer(otherNativeTypePtr), nativeTypePtr)
            }
        }
        
        return newValue
    }
    
    public var aabbValue: AABB {
        var newValue = AABB()
        
        self.withUnsafeNativePointer { nativeTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_aabb(UnsafeMutableRawPointer(otherNativeTypePtr), nativeTypePtr)
            }
        }
        
        return newValue
    }
    
    public var basisValue: Basis {
        var newValue = Basis()
        
        self.withUnsafeNativePointer { nativeTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_basis(UnsafeMutableRawPointer(otherNativeTypePtr), nativeTypePtr)
            }
        }
        
        return newValue
    }
    
    public var transform3DValue: Transform3D {
        var newValue = Transform3D()
        
        self.withUnsafeNativePointer { nativeTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_transform3D(UnsafeMutableRawPointer(otherNativeTypePtr), nativeTypePtr)
            }
        }
        
        return newValue
    }
    
    public var projectionValue: Projection {
        var newValue = Projection()
        
        self.withUnsafeNativePointer { nativeTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_projection(UnsafeMutableRawPointer(otherNativeTypePtr), nativeTypePtr)
            }
        }
        
        return newValue
    }
    
    public var colorValue: Color {
        var newValue = Color()
        
        self.withUnsafeNativePointer { nativeTypePtr in
            withUnsafeMutablePointer(to: &newValue) { otherNativeTypePtr in
                Variant.toTypeConstructor_color(UnsafeMutableRawPointer(otherNativeTypePtr), nativeTypePtr)
            }
        }
        
        return newValue
    }
    
    public var stringNameValue: StringName {
        let newValue = StringName()
        
        self.withUnsafeNativePointer { nativeTypePtr in
            newValue.withUnsafeNativePointer { otherNativeTypePtr in
                Variant.toTypeConstructor_stringName(UnsafeMutableRawPointer(otherNativeTypePtr), nativeTypePtr)
            }
        }
        
        return newValue
    }
    
    public var nodePathValue: NodePath {
        let newValue = NodePath()
        
        self.withUnsafeNativePointer { nativeTypePtr in
            newValue.withUnsafeNativePointer { otherNativeTypePtr in
                Variant.toTypeConstructor_nodePath(UnsafeMutableRawPointer(otherNativeTypePtr), nativeTypePtr)
            }
        }
        
        return newValue
    }
    
    public var ridValue: RID {
        let newValue = RID()
        
        self.withUnsafeNativePointer { nativeTypePtr in
            newValue.withUnsafeNativePointer { otherNativeTypePtr in
                Variant.toTypeConstructor_rid(UnsafeMutableRawPointer(otherNativeTypePtr), nativeTypePtr)
            }
        }
        
        return newValue
    }
    
    public var objectValue: Object {
        let newValue = Object()
#warning("DO THIS")
        return newValue
    }
    
    public var callableValue: Callable {
        let newValue = Callable()
        
        self.withUnsafeNativePointer { nativeTypePtr in
            newValue.withUnsafeNativePointer { otherNativeTypePtr in
                Variant.toTypeConstructor_callable(UnsafeMutableRawPointer(otherNativeTypePtr), nativeTypePtr)
            }
        }
        
        return newValue
    }
    
    public var signalValue: Signal {
        let newValue = Signal()
        
        self.withUnsafeNativePointer { nativeTypePtr in
            newValue.withUnsafeNativePointer { otherNativeTypePtr in
                Variant.toTypeConstructor_signal(UnsafeMutableRawPointer(otherNativeTypePtr), nativeTypePtr)
            }
        }
        
        return newValue
    }
    
    public var dictionaryValue: Dictionary {
        let newValue = Dictionary()
        
        self.withUnsafeNativePointer { nativeTypePtr in
            newValue.withUnsafeNativePointer { otherNativeTypePtr in
                Variant.toTypeConstructor_dictionary(UnsafeMutableRawPointer(otherNativeTypePtr), nativeTypePtr)
            }
        }
        
        return newValue
    }
    
    public var arrayValue: Array {
        let newValue = Array()
        
        self.withUnsafeNativePointer { nativeTypePtr in
            newValue.withUnsafeNativePointer { otherNativeTypePtr in
                Variant.toTypeConstructor_array(UnsafeMutableRawPointer(otherNativeTypePtr), nativeTypePtr)
            }
        }
        
        return newValue
    }
    
    public var packedByteArrayValue: PackedByteArray {
        let newValue = PackedByteArray()
        
        self.withUnsafeNativePointer { nativeTypePtr in
            newValue.withUnsafeNativePointer { otherNativeTypePtr in
                Variant.toTypeConstructor_packedByteArray(UnsafeMutableRawPointer(otherNativeTypePtr), nativeTypePtr)
            }
        }
        
        return newValue
    }
    
    public var packedInt32ArrayValue: PackedInt32Array {
        let newValue = PackedInt32Array()
        
        self.withUnsafeNativePointer { nativeTypePtr in
            newValue.withUnsafeNativePointer { otherNativeTypePtr in
                Variant.toTypeConstructor_packedInt32Array(UnsafeMutableRawPointer(otherNativeTypePtr), nativeTypePtr)
            }
        }
        
        return newValue
    }
    
    public var packedInt64ArrayValue: PackedInt64Array {
        let newValue = PackedInt64Array()
        
        self.withUnsafeNativePointer { nativeTypePtr in
            newValue.withUnsafeNativePointer { otherNativeTypePtr in
                Variant.toTypeConstructor_packedInt64Array(UnsafeMutableRawPointer(otherNativeTypePtr), nativeTypePtr)
            }
        }
        
        return newValue
    }
    
    public var packedFloat32ArrayValue: PackedFloat32Array {
        let newValue = PackedFloat32Array()
        
        self.withUnsafeNativePointer { nativeTypePtr in
            newValue.withUnsafeNativePointer { otherNativeTypePtr in
                Variant.toTypeConstructor_packedFloat32Array(UnsafeMutableRawPointer(otherNativeTypePtr), nativeTypePtr)
            }
        }
        
        return newValue
    }
    
    public var packedFloat64ArrayValue: PackedFloat64Array {
        let newValue = PackedFloat64Array()
        
        self.withUnsafeNativePointer { nativeTypePtr in
            newValue.withUnsafeNativePointer { otherNativeTypePtr in
                Variant.toTypeConstructor_packedFloat64Array(UnsafeMutableRawPointer(otherNativeTypePtr), nativeTypePtr)
            }
        }
        
        return newValue
    }
    
    public var packedStringArrayValue: PackedStringArray {
        let newValue = PackedStringArray()
        
        self.withUnsafeNativePointer { nativeTypePtr in
            newValue.withUnsafeNativePointer { otherNativeTypePtr in
                Variant.toTypeConstructor_packedStringArray(UnsafeMutableRawPointer(otherNativeTypePtr), nativeTypePtr)
            }
        }
        
        return newValue
    }
    
    public var packedVector2ArrayValue: PackedVector2Array {
        let newValue = PackedVector2Array()
        
        self.withUnsafeNativePointer { nativeTypePtr in
            newValue.withUnsafeNativePointer { otherNativeTypePtr in
                Variant.toTypeConstructor_packedVector2Array(UnsafeMutableRawPointer(otherNativeTypePtr), nativeTypePtr)
            }
        }
        
        return newValue
    }
    
    public var packedVector3ArrayValue: PackedVector3Array {
        let newValue = PackedVector3Array()
        
        self.withUnsafeNativePointer { nativeTypePtr in
            newValue.withUnsafeNativePointer { otherNativeTypePtr in
                Variant.toTypeConstructor_packedVector3Array(UnsafeMutableRawPointer(otherNativeTypePtr), nativeTypePtr)
            }
        }
        
        return newValue
    }
    
    public var packedColorArrayValue: PackedColorArray {
        let newValue = PackedColorArray()
        
        self.withUnsafeNativePointer { nativeTypePtr in
            newValue.withUnsafeNativePointer { otherNativeTypePtr in
                Variant.toTypeConstructor_packedColorArray(UnsafeMutableRawPointer(otherNativeTypePtr), nativeTypePtr)
            }
        }
        
        return newValue
    }
    
    // MARK: - Functions
    
    public var type: ValueType {
        var nativeVariantType: GDNativeVariantType!
        
        withUnsafeNativePointer { nativeTypePtr in
            nativeVariantType = GodotInterface.native.variant_get_type(nativeTypePtr)
        }
        
        return ValueType(godotType: nativeVariantType)
    }
    
    public var isNil: Bool {
        type == .nil
    }
    
    // MARK: - Bindings
    
    private static var fromTypeConstructor_bool: GDNativeVariantFromTypeConstructorFunc!
    private static var fromTypeConstructor_int: GDNativeVariantFromTypeConstructorFunc!
    private static var fromTypeConstructor_float: GDNativeVariantFromTypeConstructorFunc!
    private static var fromTypeConstructor_string: GDNativeVariantFromTypeConstructorFunc!
    private static var fromTypeConstructor_vector2: GDNativeVariantFromTypeConstructorFunc!
    private static var fromTypeConstructor_vector2i: GDNativeVariantFromTypeConstructorFunc!
    private static var fromTypeConstructor_rect2: GDNativeVariantFromTypeConstructorFunc!
    private static var fromTypeConstructor_rect2i: GDNativeVariantFromTypeConstructorFunc!
    private static var fromTypeConstructor_vector3: GDNativeVariantFromTypeConstructorFunc!
    private static var fromTypeConstructor_vector3i: GDNativeVariantFromTypeConstructorFunc!
    private static var fromTypeConstructor_transform2D: GDNativeVariantFromTypeConstructorFunc!
    private static var fromTypeConstructor_vector4: GDNativeVariantFromTypeConstructorFunc!
    private static var fromTypeConstructor_vector4i: GDNativeVariantFromTypeConstructorFunc!
    private static var fromTypeConstructor_plane: GDNativeVariantFromTypeConstructorFunc!
    private static var fromTypeConstructor_quaternion: GDNativeVariantFromTypeConstructorFunc!
    private static var fromTypeConstructor_aabb: GDNativeVariantFromTypeConstructorFunc!
    private static var fromTypeConstructor_basis: GDNativeVariantFromTypeConstructorFunc!
    private static var fromTypeConstructor_transform3D: GDNativeVariantFromTypeConstructorFunc!
    private static var fromTypeConstructor_projection: GDNativeVariantFromTypeConstructorFunc!
    private static var fromTypeConstructor_color: GDNativeVariantFromTypeConstructorFunc!
    private static var fromTypeConstructor_stringName: GDNativeVariantFromTypeConstructorFunc!
    private static var fromTypeConstructor_nodePath: GDNativeVariantFromTypeConstructorFunc!
    private static var fromTypeConstructor_rid: GDNativeVariantFromTypeConstructorFunc!
    private static var fromTypeConstructor_object: GDNativeVariantFromTypeConstructorFunc!
    private static var fromTypeConstructor_callable: GDNativeVariantFromTypeConstructorFunc!
    private static var fromTypeConstructor_signal: GDNativeVariantFromTypeConstructorFunc!
    private static var fromTypeConstructor_dictionary: GDNativeVariantFromTypeConstructorFunc!
    private static var fromTypeConstructor_array: GDNativeVariantFromTypeConstructorFunc!
    private static var fromTypeConstructor_packedByteArray: GDNativeVariantFromTypeConstructorFunc!
    private static var fromTypeConstructor_packedInt32Array: GDNativeVariantFromTypeConstructorFunc!
    private static var fromTypeConstructor_packedInt64Array: GDNativeVariantFromTypeConstructorFunc!
    private static var fromTypeConstructor_packedFloat32Array: GDNativeVariantFromTypeConstructorFunc!
    private static var fromTypeConstructor_packedFloat64Array: GDNativeVariantFromTypeConstructorFunc!
    private static var fromTypeConstructor_packedStringArray: GDNativeVariantFromTypeConstructorFunc!
    private static var fromTypeConstructor_packedVector2Array: GDNativeVariantFromTypeConstructorFunc!
    private static var fromTypeConstructor_packedVector3Array: GDNativeVariantFromTypeConstructorFunc!
    private static var fromTypeConstructor_packedColorArray: GDNativeVariantFromTypeConstructorFunc!
    
    private static var toTypeConstructor_bool: GDNativeTypeFromVariantConstructorFunc!
    private static var toTypeConstructor_int: GDNativeTypeFromVariantConstructorFunc!
    private static var toTypeConstructor_float: GDNativeTypeFromVariantConstructorFunc!
    private static var toTypeConstructor_string: GDNativeTypeFromVariantConstructorFunc!
    private static var toTypeConstructor_vector2: GDNativeTypeFromVariantConstructorFunc!
    private static var toTypeConstructor_vector2i: GDNativeTypeFromVariantConstructorFunc!
    private static var toTypeConstructor_rect2: GDNativeTypeFromVariantConstructorFunc!
    private static var toTypeConstructor_rect2i: GDNativeTypeFromVariantConstructorFunc!
    private static var toTypeConstructor_vector3: GDNativeTypeFromVariantConstructorFunc!
    private static var toTypeConstructor_vector3i: GDNativeTypeFromVariantConstructorFunc!
    private static var toTypeConstructor_transform2D: GDNativeTypeFromVariantConstructorFunc!
    private static var toTypeConstructor_vector4: GDNativeTypeFromVariantConstructorFunc!
    private static var toTypeConstructor_vector4i: GDNativeTypeFromVariantConstructorFunc!
    private static var toTypeConstructor_plane: GDNativeTypeFromVariantConstructorFunc!
    private static var toTypeConstructor_quaternion: GDNativeTypeFromVariantConstructorFunc!
    private static var toTypeConstructor_aabb: GDNativeTypeFromVariantConstructorFunc!
    private static var toTypeConstructor_basis: GDNativeTypeFromVariantConstructorFunc!
    private static var toTypeConstructor_transform3D: GDNativeTypeFromVariantConstructorFunc!
    private static var toTypeConstructor_projection: GDNativeTypeFromVariantConstructorFunc!
    private static var toTypeConstructor_color: GDNativeTypeFromVariantConstructorFunc!
    private static var toTypeConstructor_stringName: GDNativeTypeFromVariantConstructorFunc!
    private static var toTypeConstructor_nodePath: GDNativeTypeFromVariantConstructorFunc!
    private static var toTypeConstructor_rid: GDNativeTypeFromVariantConstructorFunc!
    private static var toTypeConstructor_object: GDNativeTypeFromVariantConstructorFunc!
    private static var toTypeConstructor_callable: GDNativeTypeFromVariantConstructorFunc!
    private static var toTypeConstructor_signal: GDNativeTypeFromVariantConstructorFunc!
    private static var toTypeConstructor_dictionary: GDNativeTypeFromVariantConstructorFunc!
    private static var toTypeConstructor_array: GDNativeTypeFromVariantConstructorFunc!
    private static var toTypeConstructor_packedByteArray: GDNativeTypeFromVariantConstructorFunc!
    private static var toTypeConstructor_packedInt32Array: GDNativeTypeFromVariantConstructorFunc!
    private static var toTypeConstructor_packedInt64Array: GDNativeTypeFromVariantConstructorFunc!
    private static var toTypeConstructor_packedFloat32Array: GDNativeTypeFromVariantConstructorFunc!
    private static var toTypeConstructor_packedFloat64Array: GDNativeTypeFromVariantConstructorFunc!
    private static var toTypeConstructor_packedStringArray: GDNativeTypeFromVariantConstructorFunc!
    private static var toTypeConstructor_packedVector2Array: GDNativeTypeFromVariantConstructorFunc!
    private static var toTypeConstructor_packedVector3Array: GDNativeTypeFromVariantConstructorFunc!
    private static var toTypeConstructor_packedColorArray: GDNativeTypeFromVariantConstructorFunc!
    
    private var opaque: VariantOpaque = {
        .init(size: Variant.opaqueSize)
    }()
    
    /// Calls a closure with a native type pointer of the underlying object. Should only be called by the `GodotLibrary`.
    internal func withUnsafeNativePointer(_ body: (GDNativeTypePtr) -> ()) {
        opaque.withUnsafeMutableRawPointer(body)
    }
    
    /// Sets all the init bindings and the deinit used to communicate with Godot.
    ///
    /// This function must be called before the creation of any `Variant` instance since the bindings will be needed
    /// for any initialization.
    internal static func setInitBindings() {
        fromTypeConstructor_bool = GodotInterface.native.get_variant_from_type_constructor(GDNATIVE_VARIANT_TYPE_BOOL)
        fromTypeConstructor_int = GodotInterface.native.get_variant_from_type_constructor(GDNATIVE_VARIANT_TYPE_INT)
        fromTypeConstructor_float = GodotInterface.native.get_variant_from_type_constructor(GDNATIVE_VARIANT_TYPE_FLOAT)
        fromTypeConstructor_string = GodotInterface.native.get_variant_from_type_constructor(GDNATIVE_VARIANT_TYPE_STRING)
        fromTypeConstructor_vector2 = GodotInterface.native.get_variant_from_type_constructor(GDNATIVE_VARIANT_TYPE_VECTOR2)
        fromTypeConstructor_vector2i = GodotInterface.native.get_variant_from_type_constructor(GDNATIVE_VARIANT_TYPE_VECTOR2I)
        fromTypeConstructor_rect2 = GodotInterface.native.get_variant_from_type_constructor(GDNATIVE_VARIANT_TYPE_RECT2)
        fromTypeConstructor_rect2i = GodotInterface.native.get_variant_from_type_constructor(GDNATIVE_VARIANT_TYPE_RECT2I)
        fromTypeConstructor_vector3 = GodotInterface.native.get_variant_from_type_constructor(GDNATIVE_VARIANT_TYPE_VECTOR3)
        fromTypeConstructor_vector3i = GodotInterface.native.get_variant_from_type_constructor(GDNATIVE_VARIANT_TYPE_VECTOR3I)
        fromTypeConstructor_transform2D = GodotInterface.native.get_variant_from_type_constructor(GDNATIVE_VARIANT_TYPE_TRANSFORM2D)
        fromTypeConstructor_vector4 = GodotInterface.native.get_variant_from_type_constructor(GDNATIVE_VARIANT_TYPE_VECTOR4)
        fromTypeConstructor_vector4i = GodotInterface.native.get_variant_from_type_constructor(GDNATIVE_VARIANT_TYPE_VECTOR4I)
        fromTypeConstructor_plane = GodotInterface.native.get_variant_from_type_constructor(GDNATIVE_VARIANT_TYPE_PLANE)
        fromTypeConstructor_quaternion = GodotInterface.native.get_variant_from_type_constructor(GDNATIVE_VARIANT_TYPE_QUATERNION)
        fromTypeConstructor_aabb = GodotInterface.native.get_variant_from_type_constructor(GDNATIVE_VARIANT_TYPE_AABB)
        fromTypeConstructor_basis = GodotInterface.native.get_variant_from_type_constructor(GDNATIVE_VARIANT_TYPE_BASIS)
        fromTypeConstructor_transform3D = GodotInterface.native.get_variant_from_type_constructor(GDNATIVE_VARIANT_TYPE_TRANSFORM3D)
        fromTypeConstructor_projection = GodotInterface.native.get_variant_from_type_constructor(GDNATIVE_VARIANT_TYPE_PROJECTION)
        fromTypeConstructor_color = GodotInterface.native.get_variant_from_type_constructor(GDNATIVE_VARIANT_TYPE_COLOR)
        fromTypeConstructor_stringName = GodotInterface.native.get_variant_from_type_constructor(GDNATIVE_VARIANT_TYPE_STRING_NAME)
        fromTypeConstructor_nodePath = GodotInterface.native.get_variant_from_type_constructor(GDNATIVE_VARIANT_TYPE_NODE_PATH)
        fromTypeConstructor_rid = GodotInterface.native.get_variant_from_type_constructor(GDNATIVE_VARIANT_TYPE_RID)
        fromTypeConstructor_object = GodotInterface.native.get_variant_from_type_constructor(GDNATIVE_VARIANT_TYPE_OBJECT)
        fromTypeConstructor_callable = GodotInterface.native.get_variant_from_type_constructor(GDNATIVE_VARIANT_TYPE_CALLABLE)
        fromTypeConstructor_signal = GodotInterface.native.get_variant_from_type_constructor(GDNATIVE_VARIANT_TYPE_SIGNAL)
        fromTypeConstructor_dictionary = GodotInterface.native.get_variant_from_type_constructor(GDNATIVE_VARIANT_TYPE_DICTIONARY)
        fromTypeConstructor_array = GodotInterface.native.get_variant_from_type_constructor(GDNATIVE_VARIANT_TYPE_ARRAY)
        fromTypeConstructor_packedByteArray = GodotInterface.native.get_variant_from_type_constructor(GDNATIVE_VARIANT_TYPE_PACKED_BYTE_ARRAY)
        fromTypeConstructor_packedInt32Array = GodotInterface.native.get_variant_from_type_constructor(GDNATIVE_VARIANT_TYPE_PACKED_INT32_ARRAY)
        fromTypeConstructor_packedInt64Array = GodotInterface.native.get_variant_from_type_constructor(GDNATIVE_VARIANT_TYPE_PACKED_INT64_ARRAY)
        fromTypeConstructor_packedFloat32Array = GodotInterface.native.get_variant_from_type_constructor(GDNATIVE_VARIANT_TYPE_PACKED_FLOAT32_ARRAY)
        fromTypeConstructor_packedFloat64Array = GodotInterface.native.get_variant_from_type_constructor(GDNATIVE_VARIANT_TYPE_PACKED_FLOAT64_ARRAY)
        fromTypeConstructor_packedStringArray = GodotInterface.native.get_variant_from_type_constructor(GDNATIVE_VARIANT_TYPE_PACKED_STRING_ARRAY)
        fromTypeConstructor_packedVector2Array = GodotInterface.native.get_variant_from_type_constructor(GDNATIVE_VARIANT_TYPE_PACKED_VECTOR2_ARRAY)
        fromTypeConstructor_packedVector3Array = GodotInterface.native.get_variant_from_type_constructor(GDNATIVE_VARIANT_TYPE_PACKED_VECTOR3_ARRAY)
        fromTypeConstructor_packedColorArray = GodotInterface.native.get_variant_from_type_constructor(GDNATIVE_VARIANT_TYPE_PACKED_COLOR_ARRAY)

        toTypeConstructor_bool = GodotInterface.native.get_variant_to_type_constructor(GDNATIVE_VARIANT_TYPE_BOOL)
        toTypeConstructor_int = GodotInterface.native.get_variant_to_type_constructor(GDNATIVE_VARIANT_TYPE_INT)
        toTypeConstructor_float = GodotInterface.native.get_variant_to_type_constructor(GDNATIVE_VARIANT_TYPE_FLOAT)
        toTypeConstructor_string = GodotInterface.native.get_variant_to_type_constructor(GDNATIVE_VARIANT_TYPE_STRING)
        toTypeConstructor_vector2 = GodotInterface.native.get_variant_to_type_constructor(GDNATIVE_VARIANT_TYPE_VECTOR2)
        toTypeConstructor_vector2i = GodotInterface.native.get_variant_to_type_constructor(GDNATIVE_VARIANT_TYPE_VECTOR2I)
        toTypeConstructor_rect2 = GodotInterface.native.get_variant_to_type_constructor(GDNATIVE_VARIANT_TYPE_RECT2)
        toTypeConstructor_rect2i = GodotInterface.native.get_variant_to_type_constructor(GDNATIVE_VARIANT_TYPE_RECT2I)
        toTypeConstructor_vector3 = GodotInterface.native.get_variant_to_type_constructor(GDNATIVE_VARIANT_TYPE_VECTOR3)
        toTypeConstructor_vector3i = GodotInterface.native.get_variant_to_type_constructor(GDNATIVE_VARIANT_TYPE_VECTOR3I)
        toTypeConstructor_transform2D = GodotInterface.native.get_variant_to_type_constructor(GDNATIVE_VARIANT_TYPE_TRANSFORM2D)
        toTypeConstructor_vector4 = GodotInterface.native.get_variant_to_type_constructor(GDNATIVE_VARIANT_TYPE_VECTOR4)
        toTypeConstructor_vector4i = GodotInterface.native.get_variant_to_type_constructor(GDNATIVE_VARIANT_TYPE_VECTOR4I)
        toTypeConstructor_plane = GodotInterface.native.get_variant_to_type_constructor(GDNATIVE_VARIANT_TYPE_PLANE)
        toTypeConstructor_quaternion = GodotInterface.native.get_variant_to_type_constructor(GDNATIVE_VARIANT_TYPE_QUATERNION)
        toTypeConstructor_aabb = GodotInterface.native.get_variant_to_type_constructor(GDNATIVE_VARIANT_TYPE_AABB)
        toTypeConstructor_basis = GodotInterface.native.get_variant_to_type_constructor(GDNATIVE_VARIANT_TYPE_BASIS)
        toTypeConstructor_transform3D = GodotInterface.native.get_variant_to_type_constructor(GDNATIVE_VARIANT_TYPE_TRANSFORM3D)
        toTypeConstructor_projection = GodotInterface.native.get_variant_to_type_constructor(GDNATIVE_VARIANT_TYPE_PROJECTION)
        toTypeConstructor_color = GodotInterface.native.get_variant_to_type_constructor(GDNATIVE_VARIANT_TYPE_COLOR)
        toTypeConstructor_stringName = GodotInterface.native.get_variant_to_type_constructor(GDNATIVE_VARIANT_TYPE_STRING_NAME)
        toTypeConstructor_nodePath = GodotInterface.native.get_variant_to_type_constructor(GDNATIVE_VARIANT_TYPE_NODE_PATH)
        toTypeConstructor_rid = GodotInterface.native.get_variant_to_type_constructor(GDNATIVE_VARIANT_TYPE_RID)
        toTypeConstructor_object = GodotInterface.native.get_variant_to_type_constructor(GDNATIVE_VARIANT_TYPE_OBJECT)
        toTypeConstructor_callable = GodotInterface.native.get_variant_to_type_constructor(GDNATIVE_VARIANT_TYPE_CALLABLE)
        toTypeConstructor_signal = GodotInterface.native.get_variant_to_type_constructor(GDNATIVE_VARIANT_TYPE_SIGNAL)
        toTypeConstructor_dictionary = GodotInterface.native.get_variant_to_type_constructor(GDNATIVE_VARIANT_TYPE_DICTIONARY)
        toTypeConstructor_array = GodotInterface.native.get_variant_to_type_constructor(GDNATIVE_VARIANT_TYPE_ARRAY)
        toTypeConstructor_packedByteArray = GodotInterface.native.get_variant_to_type_constructor(GDNATIVE_VARIANT_TYPE_PACKED_BYTE_ARRAY)
        toTypeConstructor_packedInt32Array = GodotInterface.native.get_variant_to_type_constructor(GDNATIVE_VARIANT_TYPE_PACKED_INT32_ARRAY)
        toTypeConstructor_packedInt64Array = GodotInterface.native.get_variant_to_type_constructor(GDNATIVE_VARIANT_TYPE_PACKED_INT64_ARRAY)
        toTypeConstructor_packedFloat32Array = GodotInterface.native.get_variant_to_type_constructor(GDNATIVE_VARIANT_TYPE_PACKED_FLOAT32_ARRAY)
        toTypeConstructor_packedFloat64Array = GodotInterface.native.get_variant_to_type_constructor(GDNATIVE_VARIANT_TYPE_PACKED_FLOAT64_ARRAY)
        toTypeConstructor_packedStringArray = GodotInterface.native.get_variant_to_type_constructor(GDNATIVE_VARIANT_TYPE_PACKED_STRING_ARRAY)
        toTypeConstructor_packedVector2Array = GodotInterface.native.get_variant_to_type_constructor(GDNATIVE_VARIANT_TYPE_PACKED_VECTOR2_ARRAY)
        toTypeConstructor_packedVector3Array = GodotInterface.native.get_variant_to_type_constructor(GDNATIVE_VARIANT_TYPE_PACKED_VECTOR3_ARRAY)
        toTypeConstructor_packedColorArray = GodotInterface.native.get_variant_to_type_constructor(GDNATIVE_VARIANT_TYPE_PACKED_COLOR_ARRAY)
    }
}

// MARK: - Extensions

extension Variant: CustomDebugStringConvertible {
    public var debugDescription: Swift.String {
        let string = String()
        
        self.withUnsafeNativePointer { nativeTypePtr in
            string.withUnsafeNativePointer { stringNativeTypePtr in
                GodotInterface.native.variant_stringify(nativeTypePtr, stringNativeTypePtr)
            }
        }
        
        return Swift.String(godotString: string)
    }
}

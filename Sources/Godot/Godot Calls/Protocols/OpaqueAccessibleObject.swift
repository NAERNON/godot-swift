import Foundation

/// A type that exposes its `Opaque` underlying value.
protocol OpaqueAccessibleObject {
    associatedtype OpaqueType : BaseOpaque
    
    var opaque: OpaqueType { get }
}

extension Array: OpaqueAccessibleObject {}
extension Callable: OpaqueAccessibleObject {}
extension Dictionary: OpaqueAccessibleObject {}
extension NodePath: OpaqueAccessibleObject {}
extension PackedByteArray: OpaqueAccessibleObject {}
extension PackedColorArray: OpaqueAccessibleObject {}
extension PackedFloat32Array: OpaqueAccessibleObject {}
extension PackedFloat64Array: OpaqueAccessibleObject {}
extension PackedInt32Array: OpaqueAccessibleObject {}
extension PackedInt64Array: OpaqueAccessibleObject {}
extension PackedStringArray: OpaqueAccessibleObject {}
extension PackedVector2Array: OpaqueAccessibleObject {}
extension PackedVector3Array: OpaqueAccessibleObject {}
extension RID: OpaqueAccessibleObject {}
extension Signal: OpaqueAccessibleObject {}
extension String: OpaqueAccessibleObject {}
extension StringName: OpaqueAccessibleObject {}

extension TypedArray: OpaqueAccessibleObject {}

extension Variant: OpaqueAccessibleObject {}

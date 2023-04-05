import Foundation
import GodotExtensionHeaders

/// A type that exposes its underlying Godot extension pointer.
protocol ExtensionPointerAccessible {
    func withUnsafeExtensionPointer(_ body: (GDExtensionTypePtr) -> Void)
}

extension Array: ExtensionPointerAccessible {}
extension Callable: ExtensionPointerAccessible {}
extension Dictionary: ExtensionPointerAccessible {}
extension NodePath: ExtensionPointerAccessible {}
extension PackedByteArray: ExtensionPointerAccessible {}
extension PackedColorArray: ExtensionPointerAccessible {}
extension PackedFloat32Array: ExtensionPointerAccessible {}
extension PackedFloat64Array: ExtensionPointerAccessible {}
extension PackedInt32Array: ExtensionPointerAccessible {}
extension PackedInt64Array: ExtensionPointerAccessible {}
extension PackedStringArray: ExtensionPointerAccessible {}
extension PackedVector2Array: ExtensionPointerAccessible {}
extension PackedVector3Array: ExtensionPointerAccessible {}
extension RID: ExtensionPointerAccessible {}
extension Signal: ExtensionPointerAccessible {}
extension String: ExtensionPointerAccessible {}
extension StringName: ExtensionPointerAccessible {}

extension TypedArray: ExtensionPointerAccessible {}

extension Variant: ExtensionPointerAccessible {}

extension Opaque: ExtensionPointerAccessible {
    func withUnsafeExtensionPointer(_ body: (GDExtensionTypePtr) -> Void) {
        withUnsafeMutableRawPointer { body($0) }
    }
}

extension Object: ExtensionPointerAccessible {}

import Foundation
import GodotExtensionHeaders

// MARK: - Non mutable

func withUnsafeGodotAccessPointer<T>(to value: T, body: (GDNativeConstObjectPtr?) -> Void) {
    withUnsafePointer(to: value) { body($0) }
}

func withUnsafeGodotAccessPointer<T>(to value: T, body: (GDNativeConstObjectPtr?) -> Void)
where T : GodotPointerAccessible {
    value.withUnsafeNativePointer { body($0) }
}

func withUnsafeGodotAccessPointer<T>(to value: T!, body: (GDNativeConstObjectPtr?) -> Void)
where T : GodotPointerAccessible {
    value.withUnsafeNativePointer { body($0) }
}

func withUnsafeGodotAccessPointer(to value: Object?, body: (GDNativeConstObjectPtr?) -> Void) {
    if let value {
        value.withUnsafeNativePointer { body($0) }
    } else {
        body(nil)
    }
}

// MARK: - Mutable

func withUnsafeGodotMutableAccessPointer<T>(to value: inout T, body: (GDNativeObjectPtr?) -> Void) {
    withUnsafeMutablePointer(to: &value) { body($0) }
}

func withUnsafeGodotMutableAccessPointer<T>(to value: inout T, body: (GDNativeObjectPtr?) -> Void)
where T : GodotPointerAccessible {
    value.withUnsafeNativePointer { body($0) }
}

func withUnsafeGodotMutableAccessPointer<T>(to value: inout T!, body: (GDNativeObjectPtr?) -> Void)
where T : GodotPointerAccessible {
    value.withUnsafeNativePointer { body($0) }
}

func withUnsafeGodotMutableAccessPointer(to value: inout Object?, body: (GDNativeObjectPtr?) -> Void) {
    if let value {
        value.withUnsafeNativePointer { body($0) }
    } else {
        body(nil)
    }
}

// MARK: - Mutable const

func withUnsafeGodotMutableConstAccessPointer<T>(to value: T, body: (GDNativeObjectPtr?) -> Void) {
    withUnsafePointer(to: value) { body(UnsafeMutableRawPointer(mutating: $0)) }
}

func withUnsafeGodotMutableConstAccessPointer<T>(to value: T, body: (GDNativeObjectPtr?) -> Void)
where T : GodotPointerAccessible {
    value.withUnsafeNativePointer { body($0) }
}

func withUnsafeGodotMutableConstAccessPointer<T>(to value: T!, body: (GDNativeObjectPtr?) -> Void)
where T : GodotPointerAccessible {
    value.withUnsafeNativePointer { body($0) }
}

func withUnsafeGodotMutableConstAccessPointer(to value: Object?, body: (GDNativeObjectPtr?) -> Void) {
    if let value {
        value.withUnsafeNativePointer { body($0) }
    } else {
        body(nil)
    }
}

// MARK: - Varargs

func withUnsafeGodotAccessVarargsPointer(to value: some Collection<Variant>, body: ([GDNativeConstObjectPtr?]) -> Void) {
    guard let first = value.first else {
        body([])
        return
    }
    
    withUnsafeGodotAccessPointer(to: first) { ptr in
        withUnsafeGodotAccessVarargsPointer(to: value.dropFirst()) { pointers in
            body([ptr] + pointers)
        }
    }
}

// MARK: - GodotPointerAccessible

protocol GodotPointerAccessible {
    func withUnsafeNativePointer(_ body: (GDNativeTypePtr) -> Void)
}

extension Array: GodotPointerAccessible {}
extension Callable: GodotPointerAccessible {}
extension Dictionary: GodotPointerAccessible {}
extension NodePath: GodotPointerAccessible {}
extension PackedByteArray: GodotPointerAccessible {}
extension PackedColorArray: GodotPointerAccessible {}
extension PackedFloat32Array: GodotPointerAccessible {}
extension PackedFloat64Array: GodotPointerAccessible {}
extension PackedInt32Array: GodotPointerAccessible {}
extension PackedInt64Array: GodotPointerAccessible {}
extension PackedStringArray: GodotPointerAccessible {}
extension PackedVector2Array: GodotPointerAccessible {}
extension PackedVector3Array: GodotPointerAccessible {}
extension RID: GodotPointerAccessible {}
extension Signal: GodotPointerAccessible {}
extension String: GodotPointerAccessible {}
extension StringName: GodotPointerAccessible {}

extension TypedArray: GodotPointerAccessible {}

extension Variant: GodotPointerAccessible {}

extension Opaque: GodotPointerAccessible {
    func withUnsafeNativePointer(_ body: (GDNativeTypePtr) -> Void) {
        withUnsafeMutableRawPointer { body($0) }
    }
}

extension Object: GodotPointerAccessible {}
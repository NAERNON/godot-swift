import Foundation
import GodotExtensionHeaders

// MARK: - Non mutable

func withUnsafeGodotAccessPointer<T>(to value: T, body: (GDExtensionConstObjectPtr?) -> Void) {
    withUnsafePointer(to: value) { body($0) }
}

func withUnsafeGodotAccessPointer<T>(to value: T, body: (GDExtensionConstObjectPtr?) -> Void)
where T : ExtensionPointerAccessible {
    value.withUnsafeExtensionPointer { body($0) }
}

func withUnsafeGodotAccessPointer<T>(to value: T!, body: (GDExtensionConstObjectPtr?) -> Void)
where T : ExtensionPointerAccessible {
    value.withUnsafeExtensionPointer { body($0) }
}

func withUnsafeGodotAccessPointer(to value: Object?, body: (GDExtensionConstObjectPtr?) -> Void) {
    if let value {
        value.withUnsafeExtensionPointer { body($0) }
    } else {
        body(nil)
    }
}

// MARK: - Mutable

func withUnsafeGodotMutableAccessPointer<T>(to value: inout T, body: (GDExtensionObjectPtr?) -> Void) {
    withUnsafeMutablePointer(to: &value) { body($0) }
}

func withUnsafeGodotMutableAccessPointer<T>(to value: inout T, body: (GDExtensionObjectPtr?) -> Void)
where T : ExtensionPointerAccessible {
    value.withUnsafeExtensionPointer { body($0) }
}

func withUnsafeGodotMutableAccessPointer<T>(to value: inout T!, body: (GDExtensionObjectPtr?) -> Void)
where T : ExtensionPointerAccessible {
    value.withUnsafeExtensionPointer { body($0) }
}

func withUnsafeGodotMutableAccessPointer(to value: inout Object?, body: (GDExtensionObjectPtr?) -> Void) {
    if let value {
        value.withUnsafeExtensionPointer { body($0) }
    } else {
        body(nil)
    }
}

// MARK: - Mutable const

func withUnsafeGodotMutableConstAccessPointer<T>(to value: T, body: (GDExtensionObjectPtr?) -> Void) {
    withUnsafePointer(to: value) { body(UnsafeMutableRawPointer(mutating: $0)) }
}

func withUnsafeGodotMutableConstAccessPointer<T>(to value: T, body: (GDExtensionObjectPtr?) -> Void)
where T : ExtensionPointerAccessible {
    value.withUnsafeExtensionPointer { body($0) }
}

func withUnsafeGodotMutableConstAccessPointer<T>(to value: T!, body: (GDExtensionObjectPtr?) -> Void)
where T : ExtensionPointerAccessible {
    value.withUnsafeExtensionPointer { body($0) }
}

func withUnsafeGodotMutableConstAccessPointer(to value: Object?, body: (GDExtensionObjectPtr?) -> Void) {
    if let value {
        value.withUnsafeExtensionPointer { body($0) }
    } else {
        body(nil)
    }
}

// MARK: - Varargs

func withUnsafeGodotAccessVarargsPointer(to value: some Collection<Variant>, body: ([GDExtensionConstObjectPtr?]) -> Void) {
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

import Foundation
import GodotExtensionHeaders

func setReturnValue<T>(_ value: T, toPointer pointer: GDExtensionTypePtr?) {
    let boundedPtr = pointer?.assumingMemoryBound(to: T.self)
    boundedPtr?.pointee = value
}

#warning("Check if the object is still in memory. The Opaque should call deinit before this returns.")
func setReturnValue<T>(_ value: T, toPointer pointer: GDExtensionTypePtr?) where T : OpaqueAccessibleObject {
    let boundedPtr = pointer?.assumingMemoryBound(to: UnsafeRawPointer.self)
    boundedPtr?.pointee = UnsafeRawPointer(value.opaque.rawData)
}

func setReturnValue<T>(_ value: T, toPointer pointer: GDExtensionTypePtr?) where T : Object {
    let boundedPtr = pointer?.assumingMemoryBound(to: UnsafeMutableRawPointer.self)
    boundedPtr?.pointee = value.extensionObjectPtr
}

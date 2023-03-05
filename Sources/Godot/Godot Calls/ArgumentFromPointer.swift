import Foundation
import GodotExtensionHeaders

#warning("This function does not take in consideration all the types. See AccessPointer.swift to check how to do.")
func functionArgument<T>(fromArgs argsPointer: UnsafeMutablePointer<GDNativeConstTypePtr?>, at index: Int) -> T {
    let pointer = argsPointer[index]!
    return pointer.assumingMemoryBound(to: T.self).pointee
}

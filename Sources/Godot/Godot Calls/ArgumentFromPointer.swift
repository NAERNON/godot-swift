import Foundation
import GodotExtensionHeaders

#warning("This function does not take in consideration all the types. See AccessPointer.swift to check how to do.")
func functionArgument<T>(fromPointer argPointer: GDExtensionConstTypePtr?) -> T {
    return argPointer!.assumingMemoryBound(to: T.self).pointee
}

func functionObjectArgument<T>(fromPointer argPointer: GDExtensionConstTypePtr?) -> T? where T : Object {
    let pointer = UnsafeMutableRawPointer(mutating: argPointer!)
    return retreiveObject(ofType: T.self, from: pointer)
}

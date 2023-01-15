import Foundation
import GodotExtensionHeaders

extension Collection where Element == Variant {
    /// Calls a closure with a native type pointer of the variants. Should only be called by the `GodotLibrary`.
    internal func withUnsafeNativePointers(_ body: ([GDNativeTypePtr]) -> ()) {
        guard let first else {
            body([])
            return
        }
        
        first.withUnsafeNativePointer { ptr in
            dropFirst().withUnsafeNativePointers { pointers in
                body([ptr] + pointers)
            }
        }
    }
}

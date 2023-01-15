import Foundation
import GodotExtensionHeaders

/// Use this structure to deal with an array of pointers to `Variant` values.
///
/// ```
/// let args: [Variant] = [3, 2, 10]
/// VariantPointerArray(args).withUnsafeNativePointers { ptrs in
///     ...
/// }
/// ```
internal struct VariantPointerArray {
    let variants: [Variant]
    
    init(_ variants: [Variant]) {
        self.variants = variants
    }
    
    /// Calls a closure with a native type pointer of the variants. Should only be called by the `GodotLibrary`.
    internal func withUnsafeNativePointers(_ body: ([GDNativeTypePtr]) -> ()) {
        _withUnsafeNativePointers(startIndex: 0, body)
    }
    
    private func _withUnsafeNativePointers(startIndex: Int, _ body: ([GDNativeTypePtr]) -> ()) {
        guard startIndex < variants.count else {
            body([])
            return
        }
        
        variants[startIndex].withUnsafeNativePointer { ptr in
            _withUnsafeNativePointers(startIndex: startIndex + 1) { ptrs in
                body([ptr] + ptrs)
            }
        }
    }
}

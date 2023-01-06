import Foundation
import GodotExtensionHeaders

/// Use this structure to deal with an array of pointers to `VariantEncodable` values.
///
/// ```
/// let args: [any VariantEncodable] = [3, 2, 10]
/// VariantVarargs(args).withUnsafeNativePointers { ptrs in
///     ...
/// }
/// ```
internal struct VariantVarargs {
    let variantEncodables: [any VariantEncodable]
    
    init(_ variantEncodables: [any VariantEncodable]) {
        self.variantEncodables = variantEncodables
    }
    
    /// Calls a closure with a native type pointer of the variants. Should only be called by the `GodotLibrary`.
    internal func withUnsafeNativePointers(_ body: ([GDNativeTypePtr]) -> ()) {
        _withUnsafeNativePointers(startIndex: 0, body)
    }
    
    private func _withUnsafeNativePointers(startIndex: Int, _ body: ([GDNativeTypePtr]) -> ()) {
        guard startIndex < variantEncodables.count else {
            body([])
            return
        }
        
        let variant = variantEncodables[startIndex].makeVariant()
        
        variant.withUnsafeNativePointer { ptr in
            _withUnsafeNativePointers(startIndex: startIndex + 1) { ptrs in
                body([ptr] + ptrs)
            }
        }
    }
}

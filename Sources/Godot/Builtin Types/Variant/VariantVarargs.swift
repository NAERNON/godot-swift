import Foundation
import GodotExtensionHeaders

/// Use this structure to deal with an array of pointers to `VariantConvertible` values.
///
/// ```
/// let args: [any VariantConvertible] = [3, 2, 10]
/// VariantVarargs(args).withUnsafeNativePointers { ptrs in
///     ...
/// }
/// ```
internal struct VariantVarargs {
    let variantConvertibles: [any VariantConvertible]
    
    init(_ variantConvertibles: [any VariantConvertible]) {
        self.variantConvertibles = variantConvertibles
    }
    
    /// Calls a closure with a native type pointer of the variants. Should only be called by the `GodotLibrary`.
    internal func withUnsafeNativePointers(_ body: ([GDNativeTypePtr]) -> ()) {
        _withUnsafeNativePointers(startIndex: 0, body)
    }
    
    private func _withUnsafeNativePointers(startIndex: Int, _ body: ([GDNativeTypePtr]) -> ()) {
        guard startIndex < variantConvertibles.count else {
            body([])
            return
        }
        
        let variant = variantConvertibles[startIndex].variant
        
        variant.withUnsafeNativePointer { ptr in
            _withUnsafeNativePointers(startIndex: startIndex + 1) { ptrs in
                body([ptr] + ptrs)
            }
        }
    }
}

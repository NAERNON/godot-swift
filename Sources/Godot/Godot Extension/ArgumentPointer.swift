import GodotExtensionHeaders

/// Calls the given closure with a pointer to the contiguous given pointers.
func withUnsafeArgumentPackPointer(
    _ pointers: GDExtensionConstTypePtr?...,
    body: (UnsafeMutablePointer<GDExtensionConstTypePtr?>) -> Void
) {
    let count = pointers.count
    let accessPointer = UnsafeMutablePointer<GDExtensionConstTypePtr?>.allocate(capacity: count)
    
    var index = 0
    while index < count {
        accessPointer[index] = pointers[index]
        index += 1
    }
    
    body(accessPointer)
    
    accessPointer.deinitialize(count: count)
    accessPointer.deallocate()
}

/// Calls the given closure with the number of arguments and a pointer
/// to the contiguous given pointers and variants.
func withUnsafeArgumentPackPointer<each VariantRest : VariantStorableIn>(
    _ pointers: GDExtensionConstTypePtr?...,
    varargs: repeat each VariantRest,
    body: (Int, UnsafeMutablePointer<GDExtensionConstTypePtr?>) -> Void
) {
    var varargsArray = [Variant]()
    repeat varargsArray.append(Variant(each varargs))
    
    withUnsafeVarargArgumentPointers(to: varargsArray) { variantPointers in
        withUnsafeArgumentPackPointer(pointers, varargsPointers: variantPointers, body: body)
    }
}

/// Calls the given closure with the number of arguments and a pointer
/// to the contiguous given pointers and variants.
private func withUnsafeArgumentPackPointer(
    _ pointers: GDExtensionConstTypePtr?...,
    varargsPointers: [GDExtensionVariantPtr],
    body: (Int, UnsafeMutablePointer<GDExtensionConstTypePtr?>) -> Void
) {
    let pointersCount = pointers.count
    let count = pointersCount + varargsPointers.count
    let accessPointer = UnsafeMutablePointer<GDExtensionConstTypePtr?>.allocate(capacity: count)
    
    var index = 0
    while index < pointersCount {
        accessPointer[index] = pointers[index]
        index += 1
    }
    while index < count {
        accessPointer[index] = GDExtensionConstTypePtr(varargsPointers[index - pointersCount])
        index += 1
    }
    
    body(count, accessPointer)
    
    accessPointer.deinitialize(count: count)
    accessPointer.deallocate()
}

/// Calls the given closure with an array of pointers to the given variants.
private func withUnsafeVarargArgumentPointers(
    to arguments: some Collection<Variant>,
    body: ([GDExtensionVariantPtr]) -> Void
) {
    guard let first = arguments.first else {
        body([])
        return
    }
    
    first.withGodotUnsafeMutableRawPointer { ptr in
        withUnsafeVarargArgumentPointers(to: arguments.dropFirst()) { pointers in
            body([ptr] + pointers)
        }
    }
}

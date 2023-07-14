import GodotExtensionHeaders

/// Calls the given closure with a pointer to the contiguous given pointers.
func withUnsafeArgumentPackPointer(
    _ pointers: GDExtensionConstObjectPtr?...,
    body: (UnsafeMutablePointer<GDExtensionConstObjectPtr?>) -> Void
) {
    let count = pointers.count
    let accessPointer = UnsafeMutablePointer<GDExtensionConstObjectPtr?>.allocate(capacity: count)
    
    var index = 0
    while index < count {
        accessPointer[index] = pointers[index]
        index += 1
    }
    
    body(accessPointer)
    
    accessPointer.deinitialize(count: count)
    accessPointer.deallocate()
}

/// Calls the given closure with a pointer to the contiguous given pointers.
func withUnsafeArgumentPackPointer(
    _ pointers: GDExtensionConstObjectPtr?...,
    varargs: [GDExtensionVariantPtr],
    body: (UnsafeMutablePointer<GDExtensionConstObjectPtr?>) -> Void
) {
    let pointersCount = pointers.count
    let count = pointersCount + varargs.count
    let accessPointer = UnsafeMutablePointer<GDExtensionConstObjectPtr?>.allocate(capacity: count)
    
    var index = 0
    while index < pointersCount {
        accessPointer[index] = pointers[index]
        index += 1
    }
    while index < count {
        accessPointer[index] = GDExtensionConstObjectPtr(varargs[index - pointersCount])
        index += 1
    }
    
    body(accessPointer)
    
    accessPointer.deinitialize(count: count)
    accessPointer.deallocate()
}

/// Calls the given closure with an array of pointers to the given variants.
func withUnsafeVarargArgumentPointers(to arguments: some Collection<Variant>, body: ([GDExtensionVariantPtr]) -> Void) {
    guard let first = arguments.first else {
        body([])
        return
    }
    
    first.withUnsafeExtensionPointer { ptr in
        withUnsafeVarargArgumentPointers(to: arguments.dropFirst()) { pointers in
            body([ptr] + pointers)
        }
    }
}

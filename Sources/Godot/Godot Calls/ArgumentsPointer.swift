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
    varargs: [GDExtensionConstObjectPtr?],
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
        accessPointer[index] = varargs[index - pointersCount]
        index += 1
    }
    
    body(accessPointer)
    
    accessPointer.deinitialize(count: count)
    accessPointer.deallocate()
}

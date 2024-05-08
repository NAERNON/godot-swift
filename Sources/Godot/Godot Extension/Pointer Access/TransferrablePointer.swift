
@freestanding(
    declaration,
    names: 
        named(withTransferrableUnsafeRawPointer),
        named(withTransferrableUnsafeMutableRawPointer),
        named(fromInitializingTransferrableUnsafeRawPointer)
)
internal macro TransferrableBitwiseUnsafePointer<T>(_ type: T.Type) = #externalMacro(module: "GodotMacros", type: "TransferrableBitwiseUnsafePointerMacro")

@freestanding(
    declaration,
    names: 
        named(withTransferrableUnsafeRawPointer),
        named(withTransferrableUnsafeMutableRawPointer),
        named(fromInitializingTransferrableUnsafeRawPointer)
)
internal macro TransferrableOpaqueUnsafePointer<T>(_ type: T.Type) = #externalMacro(module: "GodotMacros", type: "TransferrableOpaqueUnsafePointerMacro")

#TransferrableBitwiseUnsafePointer(AABB)
#TransferrableBitwiseUnsafePointer(Basis)
#TransferrableBitwiseUnsafePointer(Bool)
#TransferrableBitwiseUnsafePointer(Color)
#TransferrableBitwiseUnsafePointer(Double)
#TransferrableBitwiseUnsafePointer(Float)
#TransferrableBitwiseUnsafePointer(Int)
#TransferrableBitwiseUnsafePointer(Int8)
#TransferrableBitwiseUnsafePointer(Int16)
#TransferrableBitwiseUnsafePointer(Int32)
#TransferrableBitwiseUnsafePointer(Int64)
#TransferrableBitwiseUnsafePointer(Plane)
#TransferrableBitwiseUnsafePointer(Projection)
#TransferrableBitwiseUnsafePointer(Quaternion)
#TransferrableBitwiseUnsafePointer(Rect2)
#TransferrableBitwiseUnsafePointer(Rect2I)
#TransferrableBitwiseUnsafePointer(Transform2D)
#TransferrableBitwiseUnsafePointer(Transform3D)
#TransferrableBitwiseUnsafePointer(UInt)
#TransferrableBitwiseUnsafePointer(UInt8)
#TransferrableBitwiseUnsafePointer(UInt16)
#TransferrableBitwiseUnsafePointer(UInt32)
#TransferrableBitwiseUnsafePointer(UInt64)
#TransferrableBitwiseUnsafePointer(Vector2)
#TransferrableBitwiseUnsafePointer(Vector2I)
#TransferrableBitwiseUnsafePointer(Vector3)
#TransferrableBitwiseUnsafePointer(Vector3I)
#TransferrableBitwiseUnsafePointer(Vector4)
#TransferrableBitwiseUnsafePointer(Vector4I)

#TransferrableOpaqueUnsafePointer(Callable)
#TransferrableOpaqueUnsafePointer(GodotString)
#TransferrableOpaqueUnsafePointer(GodotStringName)
#TransferrableOpaqueUnsafePointer(NodePath)
#TransferrableOpaqueUnsafePointer(RID)
#TransferrableOpaqueUnsafePointer(Signal)

// MARK: - GodotArray

internal func withTransferrableUnsafeRawPointer<Result, Element>(
    to value: GodotArray<Element>,
    _ body: (UnsafeRawPointer) throws -> Result
) rethrows -> Result {
    try value.withUnsafeRawPointer(body)
}

internal func withTransferrableUnsafeMutableRawPointer<Result, Element>(
    to value: inout GodotArray<Element>,
    _ body: (UnsafeMutableRawPointer) throws -> Result
) rethrows -> Result {
    try value.withUnsafeMutableRawPointer(body)
}

internal func fromInitializingTransferrableUnsafeRawPointer<Element>(
    _ body: (UnsafeMutableRawPointer) -> Void
) -> GodotArray<Element> {
    let opaque = GodotArray<Element>.makeOpaque()
    opaque.withUnsafeMutableRawPointer(body)
    return .init(opaque: opaque)
}

// MARK: - GodotContiguousArrayStorage

internal func withTransferrableUnsafeRawPointer<Result, Storage>(
    to value: Storage,
    _ body: (UnsafeRawPointer) throws -> Result
) rethrows -> Result where Storage : GodotContiguousArrayStorageProtocol {
    try value.withRawTypeUnsafeRawPointer(body)
}

internal func withTransferrableUnsafeMutableRawPointer<Result, Storage>(
    to value: inout Storage,
    _ body: (UnsafeMutableRawPointer) throws -> Result
) rethrows -> Result where Storage : GodotContiguousArrayStorageProtocol {
    try value.withRawTypeUnsafeMutableRawPointer(body)
}

internal func fromInitializingTransferrableUnsafeRawPointer<Storage>(
    _ body: (UnsafeMutableRawPointer) -> Void
) -> Storage where Storage : GodotContiguousArrayStorageProtocol {
    .fromInitializingTransferrableRawTypeUnsafeRawPointer(body)
}

// MARK: - GodotContiguousArray

internal func withTransferrableUnsafeRawPointer<Result, Element>(
    to value: GodotContiguousArray<Element>,
    _ body: (UnsafeRawPointer) throws -> Result
) rethrows -> Result {
    try value.storage.withRawTypeUnsafeRawPointer(body)
}

internal func withTransferrableUnsafeMutableRawPointer<Result, Element>(
    to value: inout GodotContiguousArray<Element>,
    _ body: (UnsafeMutableRawPointer) throws -> Result
) rethrows -> Result {
    try value.storage.withRawTypeUnsafeMutableRawPointer(body)
}

internal func fromInitializingTransferrableUnsafeRawPointer<Element>(
    _ body: (UnsafeMutableRawPointer) -> Void
) -> GodotContiguousArray<Element> {
    .init(storage: .fromInitializingTransferrableRawTypeUnsafeRawPointer(body))
}

// MARK: - GodotDictionary

internal func withTransferrableUnsafeRawPointer<Result, Key, AssociatedValue>(
    to value: GodotDictionary<Key, AssociatedValue>,
    _ body: (UnsafeRawPointer) throws -> Result
) rethrows -> Result {
    try value.withUnsafeRawPointer(body)
}

internal func withTransferrableUnsafeMutableRawPointer<Result, Key, AssociatedValue>(
    to value: inout GodotDictionary<Key, AssociatedValue>,
    _ body: (UnsafeMutableRawPointer) throws -> Result
) rethrows -> Result {
    try value.withUnsafeMutableRawPointer(body)
}

internal func fromInitializingTransferrableUnsafeRawPointer<Key, AssociatedValue>(
    _ body: (UnsafeMutableRawPointer) -> Void
) -> GodotDictionary<Key, AssociatedValue> {
    let opaque = GodotDictionary<Key, AssociatedValue>.makeOpaque()
    opaque.withUnsafeMutableRawPointer(body)
    return .init(opaque: opaque)
}

// MARK: - Object

internal func withTransferrableUnsafeRawPointer<Result>(
    to value: Object?,
    _ body: (UnsafeRawPointer?) throws -> Result
) rethrows -> Result {
    switch value {
    case .none:
        try body(nil)
    case .some(let wrapped):
        try body(wrapped.extensionObjectPtr)
    }
}

internal func withTransferrableUnsafeMutableRawPointer<Result>(
    to value: Object?,
    _ body: (UnsafeMutableRawPointer?) throws -> Result
) rethrows -> Result {
    switch value {
    case .none:
        try body(nil)
    case .some(let wrapped):
        try body(wrapped.extensionObjectPtr)
    }
}

internal func fromInitializingTransferrableUnsafeRawPointer<T: Object>(
    _ body: (UnsafeMutableRawPointer) -> Void
) -> T? {
    var objectPointer: UnsafeMutableRawPointer!
    withUnsafeMutablePointer(to: &objectPointer) { pointer in
        body(pointer)
    }
    return T.retrievedInstanceManagedByGodot(objectPointer)!
}

// MARK: - Variant

internal func withTransferrableUnsafeRawPointer<Result>(
    to value: Variant,
    _ body: (UnsafeRawPointer) throws -> Result
) rethrows -> Result {
    try value.storage.withUnsafeRawPointer(body)
}

internal func withTransferrableUnsafeMutableRawPointer<Result>(
    to value: Variant,
    _ body: (UnsafeMutableRawPointer) throws -> Result
) rethrows -> Result {
    try value.storage.withUnsafeMutableRawPointer(body)
}

internal func fromInitializingTransferrableUnsafeRawPointer(
    _ body: (UnsafeMutableRawPointer) -> Void
) -> Variant {
    let value = Variant()
    value.storage.withUnsafeMutableRawPointer(body)
    return value
}

// MARK: - Variant Storage

internal func withTransferrableUnsafeRawPointer<Result>(
    to value: borrowing Variant.Storage,
    _ body: (UnsafeRawPointer) throws -> Result
) rethrows -> Result {
    try value.withUnsafeRawPointer(body)
}

internal func withTransferrableUnsafeMutableRawPointer<Result>(
    to value: inout Variant.Storage,
    _ body: (UnsafeMutableRawPointer) throws -> Result
) rethrows -> Result {
    try value.withUnsafeMutableRawPointer(body)
}

internal func fromInitializingTransferrableUnsafeRawPointer(
    _ body: (UnsafeMutableRawPointer) -> Void
) -> Variant.Storage {
    let value = Variant.Storage()
    value.withUnsafeMutableRawPointer(body)
    return value
}

// MARK: - Enums

internal func withTransferrableUnsafeRawPointer<Result, Enum: GodotEnum>(
    to value: Enum,
    _ body: (UnsafeRawPointer) throws -> Result
) rethrows -> Result {
    try withUnsafePointer(to: value) {
        try body($0)
    }
}

internal func withTransferrableUnsafeMutableRawPointer<Result, Enum: GodotEnum>(
    to value: inout Enum,
    _ body: (UnsafeMutableRawPointer) throws -> Result
) rethrows -> Result {
    try withUnsafeMutablePointer(to: &value) {
        try body($0)
    }
}

internal func fromInitializingTransferrableUnsafeRawPointer<Enum: GodotEnum>(
    _ body: (UnsafeMutableRawPointer) -> Void
) -> Enum {
    var value = Enum.RawValue()
    withUnsafeMutablePointer(to: &value) { body($0) }
    return .init(rawValue: value)!
}

// MARK: - Option Sets

internal func withTransferrableUnsafeRawPointer<Result, OptionSet: GodotOptionSet>(
    to value: OptionSet,
    _ body: (UnsafeRawPointer) throws -> Result
) rethrows -> Result {
    try withUnsafePointer(to: value.rawValue) {
        try body($0)
    }
}

internal func fromInitializingTransferrableUnsafeRawPointer<OptionSet: GodotOptionSet>(
    _ body: (UnsafeMutableRawPointer) -> Void
) -> OptionSet {
    var value = OptionSet.RawValue()
    withUnsafeMutablePointer(to: &value) { body($0) }
    return .init(rawValue: value)!
}

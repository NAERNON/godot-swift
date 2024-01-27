
public func varToBytes<Value : VariantStorableIn>(_ variable: Value) -> PackedByteArray {
    _varToBytes(variable: variable)
}

public func bytesToVar(_ bytes: PackedByteArray) -> Variant {
    _bytesToVar(bytes: bytes)
}

public func bytesToVarWithObjects(_ bytes: PackedByteArray) -> Variant {
    _bytesToVarWithObjects(bytes: bytes)
}

public func instance(fromID instanceID: Int) -> Object? {
    _instanceFromID(instanceID: instanceID)
}

public func isInstanceIDValid(_ id: Int) -> Bool {
    _isInstanceIDValid(id: id)
}

public func isInstanceValid<Value : VariantStorableIn>(_ instance: Value) -> Bool {
    _isInstanceValid(instance: instance)
}

public func ridAllocateID() -> Int {
    _ridAllocateID()
}

public func ridFromInt64(_ base: Int) -> RID {
    _ridFromInt64(base: base)
}

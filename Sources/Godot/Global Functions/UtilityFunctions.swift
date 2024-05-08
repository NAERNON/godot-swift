
public func varToBytes<Value : Variant.Storable>(_ variable: Value) -> GodotContiguousArray<UInt8> {
    _varToBytes(variable: variable)
}

public func bytesToVar(_ bytes: GodotContiguousArray<UInt8>) -> Variant {
    _bytesToVar(bytes: bytes)
}

public func bytesToVarWithObjects(_ bytes: GodotContiguousArray<UInt8>) -> Variant {
    _bytesToVarWithObjects(bytes: bytes)
}

public func instance(fromID instanceID: Int) -> Object? {
    _instanceFromID(instanceID: instanceID)
}

public func isInstanceIDValid(_ id: Int) -> Bool {
    _isInstanceIDValid(id: id)
}

public func isInstanceValid<Value : Variant.Storable>(_ instance: Value) -> Bool {
    _isInstanceValid(instance: instance)
}

public func ridAllocateID() -> Int {
    _ridAllocateID()
}

public func ridFromInt64(_ base: Int) -> RID {
    _ridFromInt64(base: base)
}

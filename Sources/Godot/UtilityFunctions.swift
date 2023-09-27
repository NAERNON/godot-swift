
// MARK: - Maths

public func sin(_ x: Double) -> Double {
    _sin(angleRad: x)
}

public func cos(_ x: Double) -> Double {
    _cos(angleRad: x)
}

public func tan(_ x: Double) -> Double {
    _tan(angleRad: x)
}

public func sinh(_ x: Double) -> Double {
    _sinh(x)
}

public func cosh(_ x: Double) -> Double {
    _cosh(x)
}

public func tanh(_ x: Double) -> Double {
    _tanh(x)
}

public func asin(_ x: Double) -> Double {
    _asin(x)
}

public func acos(_ x: Double) -> Double {
    _acos(x)
}

public func atan(_ x: Double) -> Double {
    _atan(x)
}

public func atan2(y: Double, x: Double) -> Double {
    _atan2(y: y, x: x)
}

public func fmod(x: Double, y: Double) -> Double {
    _fmod(x: x, y: y)
}

public func fposmod(x: Double, y: Double) -> Double {
    _fposmod(x: x, y: y)
}

public func snapped(_ x: Double, step: Double) -> Double {
    _snappedf(x: x, step: step)
}

public func snapped(_ x: Double, step: Int) -> Int {
    _snappedi(x: x, step: step)
}

public func pow(_ base: Double, exp: Double) -> Double {
    _pow(base: base, exp: exp)
}

public func log(_ x: Double) -> Double {
    _log(x)
}

public func exp(_ x: Double) -> Double {
    _exp(x)
}

public func ease(_ x: Double, curve: Double) -> Double {
    _ease(x: x, curve: curve)
}

public func lerp(_ from: Double, _ to: Double, weight: Double) -> Double {
    _lerpf(from: from, to: to, weight: weight)
}

public func lerpAngle(_ from: Double, _ to: Double, weight: Double) -> Double {
    _lerpAngle(from: from, to: to, weight: weight)
}

public func inverseLerp(_ from: Double, _ to: Double, weight: Double) -> Double {
    _inverseLerp(from: from, to: to, weight: weight)
}

public func wrap(_ value: Int, min: Int, max: Int) -> Int {
    _wrapi(value: value, min: min, max: max)
}

public func wrap(_ value: Double, min: Double, max: Double) -> Double {
    _wrapf(value: value, min: min, max: max)
}

public func clamp(_ value: Int, min: Int, max: Int) -> Int {
    _clampi(value: value, min: min, max: max)
}

public func clamp(_ value: Double, min: Double, max: Double) -> Double {
    _clampf(value: value, min: min, max: max)
}

public func pinpong(_ value: Double, _ length: Double) -> Double {
    _pingpong(value: value, length: length)
}

// MARK: - Other

public func varToBytes<Variant1 : ConvertibleToVariant>(_ variable: Variant1) -> PackedByteArray {
    _varToBytes(variable: variable)
}

public func bytesToVar(_ bytes: PackedByteArray) -> Variant {
    _bytesToVar(bytes: bytes)
}

public func bytesToVarWithObjects(_ bytes: PackedByteArray) -> Variant {
    _bytesToVarWithObjects(bytes: bytes)
}

public func instance(fromID instanceID: Int) -> Object? {
    _instanceFromId(instanceId: instanceID)
}

public func isInstanceIDValid(_ id: Int) -> Bool {
    _isInstanceIdValid(id: id)
}

public func isInstanceValid<Variant1 : ConvertibleToVariant>(_ instance: Variant1) -> Bool {
    _isInstanceValid(instance: instance)
}

public func ridAllocateID() -> Int {
    _ridAllocateId()
}

public func ridFromInt64(_ base: Int) -> RID {
    _ridFromInt64(base: base)
}


public struct Vector3 {
    public var x: Real
    public var y: Real
    public var z: Real
    
    public init(x: Real, y: Real, z: Real) {
        self.x = x
        self.y = y
        self.z = z
    }
    
    public init<T>(x: T, y: T, z: T) where T : BinaryFloatingPoint {
        self.init(x: Real(x), y: Real(y), z: Real(z))
    }
    
    public init<T>(x: T, y: T, z: T) where T : BinaryInteger {
        self.init(x: Real(x), y: Real(y), z: Real(z))
    }
    
    public init(_ vector3i: Vector3i) {
        self.init(x: vector3i.x, y: vector3i.y, z: vector3i.z)
    }
    
    public init() {
        self.init(x: 0, y: 0, z: 0)
    }
    
    // MARK: Operators
    
    public static func == (lhs: Vector3, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: Vector3) -> Bool {
        Self._operatorEqual(rhs, lhs)
    }
    
    public static prefix func - (vector3: Vector3) -> Vector3 {
        Self._operatorNegate(vector3)
    }
    
    public static prefix func + (vector3: Vector3) -> Vector3 {
        Self._operatorPositive(vector3)
    }
    
    public static func * <T>(lhs: Vector3, rhs: T) -> Vector3 where T : BinaryInteger {
        Self._operatorMultiply(lhs, Int(rhs))
    }
    
    public static func * <T>(lhs: T, rhs: Vector3) -> Vector3 where T : BinaryInteger {
        Self._operatorMultiply(rhs, Int(lhs))
    }
    
    public static func * <T>(lhs: Vector3, rhs: T) -> Vector3 where T : BinaryFloatingPoint {
        Self._operatorMultiply(lhs, Real(rhs))
    }
    
    public static func * <T>(lhs: T, rhs: Vector3) -> Vector3 where T : BinaryFloatingPoint {
        Self._operatorMultiply(rhs, Real(lhs))
    }
    
    public static func / <T>(lhs: Vector3, rhs: T) -> Vector3 where T : BinaryInteger {
        Self._operatorDivide(lhs, Int(rhs))
    }
    
    public static func / <T>(lhs: Vector3, rhs: T) -> Vector3 where T : BinaryFloatingPoint {
        Self._operatorDivide(lhs, Real(rhs))
    }
    
    public static func < (lhs: Vector3, rhs: Vector3) -> Bool {
        Self._operatorLess(lhs, rhs)
    }
    
    public static func <= (lhs: Vector3, rhs: Vector3) -> Bool {
        Self._operatorLessEqual(lhs, rhs)
    }
    
    public static func > (lhs: Vector3, rhs: Vector3) -> Bool {
        Self._operatorGreater(lhs, rhs)
    }
    
    public static func >= (lhs: Vector3, rhs: Vector3) -> Bool {
        Self._operatorGreaterEqual(lhs, rhs)
    }
    
    public static func + (lhs: Vector3, rhs: Vector3) -> Vector3 {
        Self._operatorAdd(lhs, rhs)
    }
    
    public static func - (lhs: Vector3, rhs: Vector3) -> Vector3 {
        Self._operatorSubtract(lhs, rhs)
    }
    
    public static func * (lhs: Vector3, rhs: Vector3) -> Vector3 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    public static func / (lhs: Vector3, rhs: Vector3) -> Vector3 {
        Self._operatorDivide(lhs, rhs)
    }
    
    public static func * (lhs: Vector3, rhs: Quaternion) -> Vector3 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    public static func * (lhs: Vector3, rhs: Basis) -> Vector3 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    public static func * (lhs: Vector3, rhs: Transform3D) -> Vector3 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    // MARK: Methods & variables
    
    public var minAxisIndex: Int {
        _minAxisIndex()
    }
    
    public var maxAxisIndex: Int {
        _maxAxisIndex()
    }
    
    public func angle(to other: Vector3) -> Real {
        _angleTo(other)
    }
    
    public func signedAngle(to other: Vector3, around axis: Vector3) -> Real {
        _signedAngleTo(other, axis: axis)
    }
    
    public func direction(to other: Vector3) -> Vector3 {
        _directionTo(other)
    }
    
    public func distance(to other: Vector3) -> Real {
        _distanceTo(other)
    }
    
    public func distanceSquared(to other: Vector3) -> Real {
        _distanceSquaredTo(other)
    }
    
    public var length: Real {
        _length()
    }
    
    public var lengthSquared: Real {
        _lengthSquared()
    }
    
    public func limitLength(_ length: Real = 1.0) -> Vector3 {
        _limitLength(length)
    }
    
    public var normalized: Vector3 {
        _normalized()
    }
    
    public var isNormalized: Bool {
        _isNormalized()
    }
    
    public func isApproximatelyEqual(to other: Vector3) -> Bool {
        _isEqualApprox(to: other)
    }
    
    public var isApproximatelyZero: Bool {
        _isZeroApprox()
    }
    
    public var isFinite: Bool {
        _isFinite()
    }
    
    public var inversed: Vector3 {
        _inverse()
    }
    
    public func clamped(min: Vector3, max: Vector3) -> Vector3 {
        _clamp(min: min, max: max)
    }
    
    public func snapped(step: Vector3) -> Vector3 {
        _snapped(step: step)
    }
    
    public func rotated(by angle: Real, around axis: Vector3) -> Vector3 {
        _rotated(axis: axis, angle: angle)
    }
    
    public func lerp(to other: Vector3, weight: Real) -> Vector3 {
        _lerp(to: other, weight: weight)
    }
    
    public func slerp(to other: Vector3, weight: Real) -> Vector3 {
        _slerp(to: other, weight: weight)
    }
    
    public func cubicInterpolated(
        b: Vector3,
        preA: Vector3,
        postB: Vector3,
        weight: Real
    ) -> Vector3 {
        _cubicInterpolate(b: b, preA: preA, postB: postB, weight: weight)
    }
    
    public func cubicInterpolatedInTime(
        b: Vector3,
        preA: Vector3,
        postB: Vector3,
        weight: Real,
        bT: Real,
        preAT: Real,
        postBT: Real
    ) -> Vector3 {
        _cubicInterpolateInTime(b: b, preA: preA, postB: postB, weight: weight, bT: bT, preAT: preAT, postBT: postBT)
    }
    
    public func bezierInterpolated(control1: Vector3, control2: Vector3, end: Vector3, t: Real) -> Vector3 {
        _bezierInterpolate(control1: control1, control2: control2, end: end, t: t)
    }
    
    public func bezierDerivatived(control1: Vector3, control2: Vector3, end: Vector3, t: Real) -> Vector3 {
        _bezierDerivative(control1: control1, control2: control2, end: end, t: t)
    }
    
    public func moved(toward other: Vector3, delta: Real) -> Vector3 {
        _moveToward(to: other, delta: delta)
    }
    
    public func dot(_ other: Vector3) -> Real {
        _dot(with: other)
    }
    
    public func cross(_ other: Vector3) -> Vector3 {
        _cross(with: other)
    }
    
    public func outer(_ other: Vector3) -> Basis {
        _outer(with: other)
    }
    
    public var abs: Vector3 {
        _abs()
    }
    
    public var floor: Vector3 {
        _floor()
    }
    
    public var ceil: Vector3 {
        _ceil()
    }
    
    public var rounded: Vector3 {
        _round()
    }
    
    
    public func posmod(_ mod: Real) -> Vector3 {
        _posmod(mod: mod)
    }
    
    public func posmodv(_ modv: Vector3) -> Vector3 {
        _posmodv(modv: modv)
    }
    
    public func project(_ other: Vector3) -> Vector3 {
        _project(other)
    }
    
    public func slide(_ other: Vector3) -> Vector3 {
        _slide(other)
    }
    
    public func bounce(_ other: Vector3) -> Vector3 {
        _bounce(other)
    }
    
    public func reflect(_ other: Vector3) -> Vector3 {
        _reflect(other)
    }
    
    public var sign: Vector3 {
        _sign()
    }
    
    public var octahedronEncoded: Vector2 {
        _octahedronEncode()
    }
    
    public static func octahedronDecoded(uv: Vector2) -> Vector3 {
        _octahedronDecode(uv: uv)
    }
}

// MARK: - Extensions

extension Vector3: Equatable, Hashable {}

extension Vector3: AdditiveArithmetic, Comparable {}

extension Vector3: Codable {
    public func encode(to encoder: Encoder) throws {
        try [x, y, z].encode(to: encoder)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        x = try container.decode(Real.self)
        y = try container.decode(Real.self)
        z = try container.decode(Real.self)
    }
}

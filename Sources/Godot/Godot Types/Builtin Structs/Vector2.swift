
public struct Vector2 {
    public var x: Real
    public var y: Real
    
    public init(x: Real, y: Real) {
        self.x = x
        self.y = y
    }
    
    public init<T>(x: T, y: T) where T : BinaryFloatingPoint {
        self.init(x: Real(x), y: Real(y))
    }
    
    public init<T>(x: T, y: T) where T : BinaryInteger {
        self.init(x: Real(x), y: Real(y))
    }
    
    public init(_ vector2i: Vector2i) {
        self.init(x: vector2i.x, y: vector2i.y)
    }
    
    public init() {
        self.init(x: 0, y: 0)
    }
    
    // MARK: Operators
    
    public static func == (lhs: Vector2, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: Vector2) -> Bool {
        Self._operatorEqual(rhs, lhs)
    }
    
    public static prefix func - (vector2: Vector2) -> Vector2 {
        Self._operatorNegate(vector2)
    }
    
    public static prefix func + (vector2: Vector2) -> Vector2 {
        Self._operatorPositive(vector2)
    }
    
    public static func * <T>(lhs: Vector2, rhs: T) -> Vector2 where T : BinaryInteger {
        Self._operatorMultiply(lhs, Int(rhs))
    }
    
    public static func * <T>(lhs: T, rhs: Vector2) -> Vector2 where T : BinaryInteger {
        Self._operatorMultiply(rhs, Int(lhs))
    }
    
    public static func * <T>(lhs: Vector2, rhs: T) -> Vector2 where T : BinaryFloatingPoint {
        Self._operatorMultiply(lhs, Real(rhs))
    }
    
    public static func * <T>(lhs: T, rhs: Vector2) -> Vector2 where T : BinaryFloatingPoint {
        Self._operatorMultiply(rhs, Real(lhs))
    }
    
    public static func / <T>(lhs: Vector2, rhs: T) -> Vector2 where T : BinaryInteger {
        Self._operatorDivide(lhs, Int(rhs))
    }
    
    public static func / <T>(lhs: Vector2, rhs: T) -> Vector2 where T : BinaryFloatingPoint {
        Self._operatorDivide(lhs, Real(rhs))
    }
    
    public static func < (lhs: Vector2, rhs: Vector2) -> Bool {
        Self._operatorLess(lhs, rhs)
    }
    
    public static func <= (lhs: Vector2, rhs: Vector2) -> Bool {
        Self._operatorLessEqual(lhs, rhs)
    }
    
    public static func > (lhs: Vector2, rhs: Vector2) -> Bool {
        Self._operatorGreater(lhs, rhs)
    }
    
    public static func >= (lhs: Vector2, rhs: Vector2) -> Bool {
        Self._operatorGreaterEqual(lhs, rhs)
    }
    
    public static func + (lhs: Vector2, rhs: Vector2) -> Vector2 {
        Self._operatorAdd(lhs, rhs)
    }
    
    public static func - (lhs: Vector2, rhs: Vector2) -> Vector2 {
        Self._operatorSubtract(lhs, rhs)
    }
    
    public static func * (lhs: Vector2, rhs: Vector2) -> Vector2 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    public static func / (lhs: Vector2, rhs: Vector2) -> Vector2 {
        Self._operatorDivide(lhs, rhs)
    }
    
    public static func * (lhs: Vector2, rhs: Transform2D) -> Vector2 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    // MARK: Methods & variables
    
    public var angle: Real {
        _angle()
    }
    
    public func angle(to other: Vector2) -> Real {
        _angleTo(other)
    }
    
    public func angle(toPoint point: Vector2) -> Real {
        _angleToPoint(to: point)
    }
    
    public func direction(to other: Vector2) -> Vector2 {
        _directionTo(other)
    }
    
    public func distance(to other: Vector2) -> Real {
        _distanceTo(other)
    }
    
    public func distanceSquared(to other: Vector2) -> Real {
        _distanceSquaredTo(other)
    }
    
    public var length: Real {
        _length()
    }
    
    public var lengthSquared: Real {
        _lengthSquared()
    }
    
    public func limitLength(_ length: Real = 1.0) -> Vector2 {
        _limitLength(length)
    }
    
    public var normalized: Vector2 {
        _normalized()
    }
    
    public var isNormalized: Bool {
        _isNormalized()
    }
    
    public func isApproximatelyEqual(to other: Vector2) -> Bool {
        _isEqualApprox(to: other)
    }
    
    public var isApproximatelyZero: Bool {
        _isZeroApprox()
    }
    
    public var isFinite: Bool {
        _isFinite()
    }
    
    public func posmod(_ mod: Real) -> Vector2 {
        _posmod(mod: mod)
    }
    
    public func posmodv(_ modv: Vector2) -> Vector2 {
        _posmodv(modv: modv)
    }
    
    public func project(_ other: Vector2) -> Vector2 {
        _project(other)
    }
    
    public func lerp(to other: Vector2, weight: Real) -> Vector2 {
        _lerp(to: other, weight: weight)
    }
    
    public func slerp(to other: Vector2, weight: Real) -> Vector2 {
        _slerp(to: other, weight: weight)
    }
    
    public func cubicInterpolated(
        b: Vector2,
        preA: Vector2,
        postB: Vector2,
        weight: Real
    ) -> Vector2 {
        _cubicInterpolate(b: b, preA: preA, postB: postB, weight: weight)
    }
    
    public func cubicInterpolatedInTime(
        b: Vector2,
        preA: Vector2,
        postB: Vector2,
        weight: Real,
        bT: Real,
        preAT: Real,
        postBT: Real
    ) -> Vector2 {
        _cubicInterpolateInTime(b: b, preA: preA, postB: postB, weight: weight, bT: bT, preAT: preAT, postBT: postBT)
    }
    
    public func bezierInterpolated(control1: Vector2, control2: Vector2, end: Vector2, t: Real) -> Vector2 {
        _bezierInterpolate(control1: control1, control2: control2, end: end, t: t)
    }
    
    public func bezierDerivatived(control1: Vector2, control2: Vector2, end: Vector2, t: Real) -> Vector2 {
        _bezierDerivative(control1: control1, control2: control2, end: end, t: t)
    }
    
    public var maxAxisIndex: Int {
        _maxAxisIndex()
    }
    
    public var minAxisIndex: Int {
        _minAxisIndex()
    }
    
    public func moved(toward other: Vector2, delta: Real) -> Vector2 {
        _moveToward(to: other, delta: delta)
    }
    
    public func rotated(by angle: Real) -> Vector2 {
        _rotated(angle: angle)
    }
    
    public var orthogonal: Vector2 {
        _orthogonal()
    }
    
    public var floor: Vector2 {
        _floor()
    }
    
    public var ceil: Vector2 {
        _ceil()
    }
    
    public var rounded: Vector2 {
        _round()
    }
    
    public var aspect: Real {
        _aspect()
    }
    
    public func dot(_ other: Vector2) -> Real {
        _dot(with: other)
    }
    
    public func slide(_ other: Vector2) -> Vector2 {
        _slide(other)
    }
    
    public func bounce(_ other: Vector2) -> Vector2 {
        _bounce(other)
    }
    
    public func reflect(_ other: Vector2) -> Vector2 {
        _reflect(other)
    }
    
    public func cross(_ other: Vector2) -> Real {
        _cross(with: other)
    }
    
    public var abs: Vector2 {
        _abs()
    }
    
    public var sign: Vector2 {
        _sign()
    }
    
    public func clamped(min: Vector2, max: Vector2) -> Vector2 {
        _clamp(min: min, max: max)
    }
    
    public func snapped(step: Vector2) -> Vector2 {
        _snapped(step: step)
    }
    
    public static func fromAngle(_ angle: Real) -> Vector2 {
        _fromAngle(angle)
    }
}

// MARK: - Extensions

extension Vector2: Equatable, Hashable {}

extension Vector2: AdditiveArithmetic, Comparable {}

extension Vector2: Codable {
    public func encode(to encoder: Encoder) throws {
        try [x, y].encode(to: encoder)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        x = try container.decode(Real.self)
        y = try container.decode(Real.self)
    }
}

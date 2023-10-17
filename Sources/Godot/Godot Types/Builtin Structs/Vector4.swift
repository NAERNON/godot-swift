
public struct Vector4 {
    public var x: Real
    public var y: Real
    public var z: Real
    public var w: Real
    
    public init(x: Real, y: Real, z: Real, w: Real) {
        self.x = x
        self.y = y
        self.z = z
        self.w = w
    }
}

extension Vector4 {
    public init<T>(x: T, y: T, z: T, w: T) where T : BinaryFloatingPoint {
        self.init(x: Real(x), y: Real(y), z: Real(z), w: Real(w))
    }
    
    public init<T>(x: T, y: T, z: T, w: T) where T : BinaryInteger {
        self.init(x: Real(x), y: Real(y), z: Real(z), w: Real(w))
    }
    
    public init(_ vector4: Vector4) {
        self.init(x: vector4.x, y: vector4.y, z: vector4.z, w: vector4.w)
    }
    
    public init() {
        self.init(x: 0, y: 0, z: 0, w: 0)
    }
    
    // MARK: Operators
    
    public static func == (lhs: Vector4, rhs: some ConvertibleToVariant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static prefix func - (vector4: Vector4) -> Vector4 {
        Self._operatorNegate(vector4)
    }
    
    public static prefix func + (vector4: Vector4) -> Vector4 {
        Self._operatorPositive(vector4)
    }
    
    public static func * <T>(lhs: Vector4, rhs: T) -> Vector4 where T : BinaryInteger {
        Self._operatorMultiply(lhs, Int(rhs))
    }
    
    public static func * <T>(lhs: T, rhs: Vector4) -> Vector4 where T : BinaryInteger {
        Self._operatorMultiply(rhs, Int(lhs))
    }
    
    public static func * <T>(lhs: Vector4, rhs: T) -> Vector4 where T : BinaryFloatingPoint {
        Self._operatorMultiply(lhs, Real(rhs))
    }
    
    public static func * <T>(lhs: T, rhs: Vector4) -> Vector4 where T : BinaryFloatingPoint {
        Self._operatorMultiply(rhs, Real(lhs))
    }
    
    public static func / <T>(lhs: Vector4, rhs: T) -> Vector4 where T : BinaryInteger {
        Self._operatorDivide(lhs, Int(rhs))
    }
    
    public static func / <T>(lhs: Vector4, rhs: T) -> Vector4 where T : BinaryFloatingPoint {
        Self._operatorDivide(lhs, Real(rhs))
    }
    
    public static func < (lhs: Vector4, rhs: Vector4) -> Bool {
        Self._operatorLess(lhs, rhs)
    }
    
    public static func <= (lhs: Vector4, rhs: Vector4) -> Bool {
        Self._operatorLessEqual(lhs, rhs)
    }
    
    public static func > (lhs: Vector4, rhs: Vector4) -> Bool {
        Self._operatorGreater(lhs, rhs)
    }
    
    public static func >= (lhs: Vector4, rhs: Vector4) -> Bool {
        Self._operatorGreaterEqual(lhs, rhs)
    }
    
    public static func + (lhs: Vector4, rhs: Vector4) -> Vector4 {
        Self._operatorAdd(lhs, rhs)
    }
    
    public static func - (lhs: Vector4, rhs: Vector4) -> Vector4 {
        Self._operatorSubtract(lhs, rhs)
    }
    
    public static func * (lhs: Vector4, rhs: Vector4) -> Vector4 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    public static func / (lhs: Vector4, rhs: Vector4) -> Vector4 {
        Self._operatorDivide(lhs, rhs)
    }
    
    public static func * (lhs: Vector4, rhs: Projection) -> Vector4 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    // MARK: Methods & variables
    
    public var minAxisIndex: Int {
        _minAxisIndex()
    }
    
    public var maxAxisIndex: Int {
        _maxAxisIndex()
    }
    
    public var length: Real {
        _length()
    }
    
    public var lengthSquared: Real {
        _lengthSquared()
    }
    
    public var abs: Vector4 {
        _abs()
    }
    
    public var sign: Vector4 {
        _sign()
    }
    
    public var floor: Vector4 {
        _floor()
    }
    
    public var ceil: Vector4 {
        _ceil()
    }
    
    public var rounded: Vector4 {
        _round()
    }
    
    public func lerp(to other: Vector4, weight: Real) -> Vector4 {
        _lerp(to: other, weight: weight)
    }
    
    public func cubicInterpolated(
        b: Vector4,
        preA: Vector4,
        postB: Vector4,
        weight: Real
    ) -> Vector4 {
        _cubicInterpolate(b: b, preA: preA, postB: postB, weight: weight)
    }
    
    public func cubicInterpolatedInTime(
        b: Vector4,
        preA: Vector4,
        postB: Vector4,
        weight: Real,
        bT: Real,
        preAT: Real,
        postBT: Real
    ) -> Vector4 {
        _cubicInterpolateInTime(b: b, preA: preA, postB: postB, weight: weight, bT: bT, preAT: preAT, postBT: postBT)
    }
    
    public func posmod(_ mod: Real) -> Vector4 {
        _posmod(mod: mod)
    }
    
    public func posmodv(_ modv: Vector4) -> Vector4 {
        _posmodv(modv: modv)
    }
    
    public func snapped(step: Vector4) -> Vector4 {
        _snapped(step: step)
    }
    
    public func clamped(min: Vector4, max: Vector4) -> Vector4 {
        _clamp(min: min, max: max)
    }
    
    public var normalized: Vector4 {
        _normalized()
    }
    
    public var isNormalized: Bool {
        _isNormalized()
    }
    
    public func direction(to other: Vector4) -> Vector4 {
        _directionTo(other)
    }
    
    public func distance(to other: Vector4) -> Real {
        _distanceTo(other)
    }
    
    public func distanceSquared(to other: Vector4) -> Real {
        _distanceSquaredTo(other)
    }
    
    public func dot(_ other: Vector4) -> Real {
        _dot(with: other)
    }
    
    public var inversed: Vector4 {
        _inverse()
    }
    
    public func isApproximatelyEqual(to other: Vector4) -> Bool {
        _isEqualApprox(to: other)
    }
    
    public var isApproximatelyZero: Bool {
        _isZeroApprox()
    }
    
    public var isFinite: Bool {
        _isFinite()
    }
}

// MARK: - Extensions

extension Vector4: Equatable, Hashable {}

extension Vector4: AdditiveArithmetic, Comparable {}

extension Vector4: Codable {
    public func encode(to encoder: Encoder) throws {
        try [x, y, z].encode(to: encoder)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        x = try container.decode(Real.self)
        y = try container.decode(Real.self)
        z = try container.decode(Real.self)
        w = try container.decode(Real.self)
    }
}

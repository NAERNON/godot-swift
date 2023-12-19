
public struct Quaternion {
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

extension Quaternion {
    // MARK: Constructors
    
    public init<T>(x: T, y: T, z: T, w: T) where T : BinaryFloatingPoint {
        self.init(x: Real(x), y: Real(y), z: Real(z), w: Real(w))
    }
    
    public init<T>(x: T, y: T, z: T, w: T) where T : BinaryInteger {
        self.init(x: Real(x), y: Real(y), z: Real(z), w: Real(w))
    }
    
    public init(basis: Basis) {
        self = Self._constructor_basis(from: basis)
    }
    
    public init(axis: Vector3, angle: Real) {
        self = Self._constructor_vector3_float(axis: axis, angle: angle)
    }
    
    public init<T>(axis: Vector3, angle: T) where T : BinaryFloatingPoint {
        self.init(axis: axis, angle: Real(angle))
    }
    
    public init<T>(axis: Vector3, angle: T) where T : BinaryInteger {
        self.init(axis: axis, angle: Real(angle))
    }
    
    public init(fromArc: Vector3, toArc: Vector3) {
        self = Self._constructor_vector3_vector3(arcFrom: fromArc, arcTo: toArc)
    }
    
    public init() {
        self.init(x: 0, y: 0, z: 0, w: 0)
    }
    
    // MARK: Operators
    
    public static prefix func - (quaternion: Quaternion) -> Quaternion {
        Self._operatorNegate(quaternion)
    }
    
    public static prefix func + (quaternion: Quaternion) -> Quaternion {
        Self._operatorPositive(quaternion)
    }
    
    public static func * <T>(lhs: Quaternion, rhs: T) -> Quaternion where T : BinaryInteger {
        Self._operatorMultiply(lhs, Int(rhs))
    }
    
    public static func * <T>(lhs: T, rhs: Quaternion) -> Quaternion where T : BinaryInteger {
        Self._operatorMultiply(rhs, Int(lhs))
    }
    
    public static func * <T>(lhs: Quaternion, rhs: T) -> Quaternion where T : BinaryFloatingPoint {
        Self._operatorMultiply(lhs, Real(rhs))
    }
    
    public static func * <T>(lhs: T, rhs: Quaternion) -> Quaternion where T : BinaryFloatingPoint {
        Self._operatorMultiply(rhs, Real(lhs))
    }
    
    public static func / <T>(lhs: Quaternion, rhs: T) -> Quaternion where T : BinaryInteger {
        Self._operatorDivide(lhs, Int(rhs))
    }
    
    public static func / <T>(lhs: Quaternion, rhs: T) -> Quaternion where T : BinaryFloatingPoint {
        Self._operatorDivide(lhs, Real(rhs))
    }
    
    public static func * (lhs: Quaternion, rhs: Vector3) -> Vector3 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    public static func + (lhs: Quaternion, rhs: Quaternion) -> Quaternion {
        Self._operatorAdd(lhs, rhs)
    }
    
    public static func - (lhs: Quaternion, rhs: Quaternion) -> Quaternion {
        Self._operatorSubtract(lhs, rhs)
    }
    
    public static func * (lhs: Quaternion, rhs: Quaternion) -> Quaternion {
        Self._operatorMultiply(lhs, rhs)
    }
    
    // MARK: Methods & variables
    
    public var length: Real {
        _length()
    }
    
    public var lengthSquared: Real {
        _lengthSquared()
    }
    
    public var normalized: Quaternion {
        _normalized()
    }
    
    public var isNormalized: Bool {
        _isNormalized()
    }
    
    public func isApproximatelyEqual(to other: Quaternion) -> Bool {
        _isEqualApprox(to: other)
    }
    
    public var isFinite: Bool {
        _isFinite()
    }
    
    public var inverted: Quaternion {
        _inverse()
    }
    
    public var log: Quaternion {
        _log()
    }
    
    public var exp: Quaternion {
        _exp()
    }
    
    public func angle(to other: Quaternion) -> Real {
        _angleTo(other)
    }
    
    public func dot(_ other: Quaternion) -> Real {
        _dot(with: other)
    }
    
    public func slerp(to other: Quaternion, weight: Real) -> Quaternion {
        _slerp(to: other, weight: weight)
    }
    
    public func slerpni(to other: Quaternion, weight: Real) -> Quaternion {
        _slerpni(to: other, weight: weight)
    }
    
    public func sphericalCubicInterpolated(
        b: Quaternion,
        preA: Quaternion,
        postB: Quaternion,
        weight: Real
    ) -> Quaternion {
        _sphericalCubicInterpolate(b: b, preA: preA, postB: postB, weight: weight)
    }
    
    public func sphericalCubicInterpolatedInTime(
        b: Quaternion,
        preA: Quaternion,
        postB: Quaternion,
        weight: Real,
        bT: Real,
        preAT: Real,
        postBT: Real
    ) -> Quaternion {
        _sphericalCubicInterpolateInTime(b: b, preA: preA, postB: postB, weight: weight, bT: bT, preAT: preAT, postBT: postBT)
    }
    
    public func euler(order: Int = 2) -> Vector3 {
        _euler(order: order)
    }
    
    public static func fromEuler(_ euler: Vector3) -> Quaternion {
        _fromEuler(euler)
    }
    
    public var axis: Vector3 {
        _axis()
    }
    
    public var angle: Real {
        _angle()
    }
}

extension Quaternion: Equatable, Hashable {}

extension Quaternion: Codable {
    public func encode(to encoder: Encoder) throws {
        var unkeyedContainer = encoder.unkeyedContainer()
        try unkeyedContainer.encode(x)
        try unkeyedContainer.encode(y)
        try unkeyedContainer.encode(z)
        try unkeyedContainer.encode(w)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        let x = try container.decode(Real.self)
        let y = try container.decode(Real.self)
        let z = try container.decode(Real.self)
        let w = try container.decode(Real.self)
        self.init(x: x, y: y, z: z, w: w)
    }
}

extension Quaternion: CustomStringConvertible {
    public var description: String {
        "(x: \(x), y: \(y), z: \(z), w: \(w))"
    }
}

extension Quaternion: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Quaternion(x: \(x), y: \(y), z: \(z), w: \(w))"
    }
}

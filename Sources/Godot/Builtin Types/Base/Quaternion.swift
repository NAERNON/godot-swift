import Foundation

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
    
    public init<T>(x: T, y: T, z: T, w: T) where T : BinaryFloatingPoint {
        self.init(x: Real(x), y: Real(y), z: Real(z), w: Real(w))
    }
    
    public init<T>(x: T, y: T, z: T, w: T) where T : BinaryInteger {
        self.init(x: Real(x), y: Real(y), z: Real(z), w: Real(w))
    }
    
    public init(basis: Basis) {
        self = Self._constructor(from: basis)
    }
    
    public init<T>(axis: Vector3, angle: T) where T : BinaryFloatingPoint {
        self = Self._constructor(axis: axis, angle: Real(angle))
    }
    
    public init<T>(axis: Vector3, angle: T) where T : BinaryInteger {
        self = Self._constructor(axis: axis, angle: Real(angle))
    }
    
    public init(fromArc: Vector3, toArc: Vector3) {
        self = Self._constructor(arcFrom: fromArc, arcTo: toArc)
    }
    
    public init() {
        self.init(x: 0, y: 0, z: 0, w: 0)
    }
    
    // MARK: Operators
    
    public static func == (lhs: Quaternion, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: Quaternion) -> Bool {
        Self._operatorEqual(rhs, lhs)
    }
    
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
}

// MARK: - Extensions

extension Quaternion: Equatable, Hashable {}

extension Quaternion: Codable {
    public func encode(to encoder: Encoder) throws {
        try [x, y, z, w].encode(to: encoder)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        x = try container.decode(Real.self)
        y = try container.decode(Real.self)
        z = try container.decode(Real.self)
        w = try container.decode(Real.self)
    }
}

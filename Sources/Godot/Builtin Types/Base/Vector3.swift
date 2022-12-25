import Foundation

public struct Vector3 {
    public var x: Real
    public var y: Real
    public var z: Real
    
    public init(x: Real, y: Real, z: Real) {
        self.x = x
        self.y = y
        self.z = z
    }
    
    public init<T>(x: T, y: T, z: T) where T: BinaryFloatingPoint {
        self.init(x: Real(x), y: Real(y), z: Real(z))
    }
    
    public init<T>(x: T, y: T, z: T) where T: BinaryInteger {
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

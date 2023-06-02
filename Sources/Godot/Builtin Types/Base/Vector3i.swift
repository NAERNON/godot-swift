import Foundation

public struct Vector3i {
    public var x: Int
    public var y: Int
    public var z: Int
    
    public init(x: Int, y: Int, z: Int) {
        self.x = x
        self.y = y
        self.z = z
    }
    
    public init<T>(x: T, y: T, z: T) where T : BinaryFloatingPoint {
        self.init(x: Int(x), y: Int(y), z: Int(z))
    }
    
    public init<T>(x: T, y: T, z: T) where T : BinaryInteger {
        self.init(x: Int(x), y: Int(y), z: Int(z))
    }
    
    public init(_ vector3: Vector3) {
        self.init(x: vector3.x, y: vector3.y, z: vector3.z)
    }
    
    public init() {
        self.init(x: 0, y: 0, z: 0)
    }
    
    // MARK: Operators
    
    public static func == (lhs: Vector3i, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: Vector3i) -> Bool {
        Self._operatorEqual(rhs, lhs)
    }
    
    public static prefix func - (vector3i: Vector3i) -> Vector3i {
        Self._operatorNegate(vector3i)
    }
    
    public static prefix func + (vector3i: Vector3i) -> Vector3i {
        Self._operatorPositive(vector3i)
    }
    
    public static func * <T>(lhs: Vector3i, rhs: T) -> Vector3i where T : BinaryInteger {
        Self._operatorMultiply(lhs, Int(rhs))
    }
    
    public static func * <T>(lhs: T, rhs: Vector3i) -> Vector3i where T : BinaryInteger {
        Self._operatorMultiply(rhs, Int(lhs))
    }
    
    public static func * <T>(lhs: Vector3i, rhs: T) -> Vector3 where T : BinaryFloatingPoint {
        Self._operatorMultiply(lhs, Real(rhs))
    }
    
    public static func * <T>(lhs: T, rhs: Vector3i) -> Vector3 where T : BinaryFloatingPoint {
        Self._operatorMultiply(rhs, Real(lhs))
    }
    
    public static func / <T>(lhs: Vector3i, rhs: T) -> Vector3i where T : BinaryInteger {
        Self._operatorDivide(lhs, Int(rhs))
    }
    
    public static func / <T>(lhs: Vector3i, rhs: T) -> Vector3 where T : BinaryFloatingPoint {
        Self._operatorDivide(lhs, Real(rhs))
    }
    
    public static func % <T>(lhs: Vector3i, rhs: T) -> Vector3i where T : BinaryInteger {
        Self._operatorModule(lhs, Int(rhs))
    }
    
    public static func < (lhs: Vector3i, rhs: Vector3i) -> Bool {
        Self._operatorLess(lhs, rhs)
    }
    
    public static func <= (lhs: Vector3i, rhs: Vector3i) -> Bool {
        Self._operatorLessEqual(lhs, rhs)
    }
    
    public static func > (lhs: Vector3i, rhs: Vector3i) -> Bool {
        Self._operatorGreater(lhs, rhs)
    }
    
    public static func >= (lhs: Vector3i, rhs: Vector3i) -> Bool {
        Self._operatorGreaterEqual(lhs, rhs)
    }
    
    public static func + (lhs: Vector3i, rhs: Vector3i) -> Vector3i {
        Self._operatorAdd(lhs, rhs)
    }
    
    public static func - (lhs: Vector3i, rhs: Vector3i) -> Vector3i {
        Self._operatorSubtract(lhs, rhs)
    }
    
    public static func * (lhs: Vector3i, rhs: Vector3i) -> Vector3i {
        Self._operatorMultiply(lhs, rhs)
    }
    
    public static func / (lhs: Vector3i, rhs: Vector3i) -> Vector3i {
        Self._operatorDivide(lhs, rhs)
    }
    
    public static func % (lhs: Vector3i, rhs: Vector3i) -> Vector3i {
        Self._operatorModule(lhs, rhs)
    }
}

// MARK: - Extensions

extension Vector3i: Equatable, Hashable {}

extension Vector3i: AdditiveArithmetic, Comparable {}

extension Vector3i: Codable {
    public func encode(to encoder: Encoder) throws {
        try [x, y, z].encode(to: encoder)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        x = try container.decode(Int.self)
        y = try container.decode(Int.self)
        z = try container.decode(Int.self)
    }
}

import Foundation

public struct Vector4i {
    public var x: Int
    public var y: Int
    public var z: Int
    public var w: Int
    
    public init(x: Int, y: Int, z: Int, w: Int) {
        self.x = x
        self.y = y
        self.z = z
        self.w = w
    }
    
    public init<T>(x: T, y: T, z: T, w: T) where T : BinaryFloatingPoint {
        self.init(x: Int(x), y: Int(y), z: Int(z), w: Int(w))
    }
    
    public init<T>(x: T, y: T, z: T, w: T) where T : BinaryInteger {
        self.init(x: Int(x), y: Int(y), z: Int(z), w: Int(w))
    }
    
    public init(_ vector4i: Vector4i) {
        self.init(x: vector4i.x, y: vector4i.y, z: vector4i.z, w: vector4i.w)
    }
    
    public init() {
        self.init(x: 0, y: 0, z: 0, w: 0)
    }
    
    // MARK: Operators
    
    public static func == (lhs: Vector4i, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: Vector4i) -> Bool {
        Self._operatorEqual(rhs, lhs)
    }
    
    public static prefix func - (vector4i: Vector4i) -> Vector4i {
        Self._operatorNegate(vector4i)
    }
    
    public static prefix func + (vector4i: Vector4i) -> Vector4i {
        Self._operatorPositive(vector4i)
    }
    
    public static func * <T>(lhs: Vector4i, rhs: T) -> Vector4i where T : BinaryInteger {
        Self._operatorMultiply(lhs, Int(rhs))
    }
    
    public static func * <T>(lhs: T, rhs: Vector4i) -> Vector4i where T : BinaryInteger {
        Self._operatorMultiply(rhs, Int(lhs))
    }
    
    public static func * <T>(lhs: Vector4i, rhs: T) -> Vector4 where T : BinaryFloatingPoint {
        Self._operatorMultiply(lhs, Real(rhs))
    }
    
    public static func * <T>(lhs: T, rhs: Vector4i) -> Vector4 where T : BinaryFloatingPoint {
        Self._operatorMultiply(rhs, Real(lhs))
    }
    
    public static func / <T>(lhs: Vector4i, rhs: T) -> Vector4i where T : BinaryInteger {
        Self._operatorDivide(lhs, Int(rhs))
    }
    
    public static func / <T>(lhs: Vector4i, rhs: T) -> Vector4 where T : BinaryFloatingPoint {
        Self._operatorDivide(lhs, Real(rhs))
    }
    
    public static func % <T>(lhs: Vector4i, rhs: T) -> Vector4i where T : BinaryInteger {
        Self._operatorModule(lhs, Int(rhs))
    }
    
    public static func < (lhs: Vector4i, rhs: Vector4i) -> Bool {
        Self._operatorLess(lhs, rhs)
    }
    
    public static func <= (lhs: Vector4i, rhs: Vector4i) -> Bool {
        Self._operatorLessEqual(lhs, rhs)
    }
    
    public static func > (lhs: Vector4i, rhs: Vector4i) -> Bool {
        Self._operatorGreater(lhs, rhs)
    }
    
    public static func >= (lhs: Vector4i, rhs: Vector4i) -> Bool {
        Self._operatorGreaterEqual(lhs, rhs)
    }
    
    public static func + (lhs: Vector4i, rhs: Vector4i) -> Vector4i {
        Self._operatorAdd(lhs, rhs)
    }
    
    public static func - (lhs: Vector4i, rhs: Vector4i) -> Vector4i {
        Self._operatorSubtract(lhs, rhs)
    }
    
    public static func * (lhs: Vector4i, rhs: Vector4i) -> Vector4i {
        Self._operatorMultiply(lhs, rhs)
    }
    
    public static func / (lhs: Vector4i, rhs: Vector4i) -> Vector4i {
        Self._operatorDivide(lhs, rhs)
    }
    
    public static func % (lhs: Vector4i, rhs: Vector4i) -> Vector4i {
        Self._operatorModule(lhs, rhs)
    }
}

// MARK: - Extensions

extension Vector4i: Equatable, Hashable {}

extension Vector4i: AdditiveArithmetic, Comparable {}

extension Vector4i: Codable {
    public func encode(to encoder: Encoder) throws {
        try [x, y, z].encode(to: encoder)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        x = try container.decode(Int.self)
        y = try container.decode(Int.self)
        z = try container.decode(Int.self)
        w = try container.decode(Int.self)
    }
}

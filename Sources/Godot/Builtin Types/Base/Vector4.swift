import Foundation

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
    
    public init<T>(x: T, y: T, z: T, w: T) where T: BinaryFloatingPoint {
        self.init(x: Real(x), y: Real(y), z: Real(z), w: Real(w))
    }
    
    public init<T>(x: T, y: T, z: T, w: T) where T: BinaryInteger {
        self.init(x: Real(x), y: Real(y), z: Real(z), w: Real(w))
    }
    
    public init(_ vector4: Vector4) {
        self.init(x: vector4.x, y: vector4.y, z: vector4.z, w: vector4.w)
    }
    
    public init() {
        self.init(x: 0, y: 0, z: 0, w: 0)
    }
    
    // MARK: Operators
    
    public static func == (lhs: Vector4, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: Vector4) -> Bool {
        Self._operatorEqual(rhs, lhs)
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
}

// MARK: - Extensions

extension Vector4: Equatable, Hashable {}

extension Vector4: AdditiveArithmetic, Comparable {}

import Foundation

public struct Vector2 {
    public var x: Real
    public var y: Real
    
    public init(x: Real, y: Real) {
        self.x = x
        self.y = y
    }
    
    public init<T>(x: T, y: T) where T: BinaryFloatingPoint {
        self.init(x: Real(x), y: Real(y))
    }
    
    public init<T>(x: T, y: T) where T: BinaryInteger {
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
}

// MARK: - Extensions

extension Vector2: Equatable, Hashable {}

extension Vector2: AdditiveArithmetic, Comparable {}

import Foundation

public struct Vector2i {
    public var x: Int
    public var y: Int
    
    public init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    public init<T>(x: T, y: T) where T: BinaryFloatingPoint {
        self.init(x: Int(x), y: Int(y))
    }
    
    public init<T>(x: T, y: T) where T: BinaryInteger {
        self.init(x: Int(x), y: Int(y))
    }
    
    public init(_ vector2: Vector2) {
        self.init(x: vector2.x, y: vector2.y)
    }
    
    public init() {
        self.init(x: 0, y: 0)
    }
    
    // MARK: Operators
    
    public static func == (lhs: Vector2i, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: Vector2i) -> Bool {
        Self._operatorEqual(rhs, lhs)
    }
    
    public static prefix func - (vector2i: Vector2i) -> Vector2i {
        Self._operatorNegate(vector2i)
    }
    
    public static prefix func + (vector2i: Vector2i) -> Vector2i {
        Self._operatorPositive(vector2i)
    }
    
    public static func * <T>(lhs: Vector2i, rhs: T) -> Vector2i where T : BinaryInteger {
        Self._operatorMultiply(lhs, Int(rhs))
    }
    
    public static func * <T>(lhs: T, rhs: Vector2i) -> Vector2i where T : BinaryInteger {
        Self._operatorMultiply(rhs, Int(lhs))
    }
    
    public static func * <T>(lhs: Vector2i, rhs: T) -> Vector2 where T : BinaryFloatingPoint {
        Self._operatorMultiply(lhs, Real(rhs))
    }
    
    public static func * <T>(lhs: T, rhs: Vector2i) -> Vector2 where T : BinaryFloatingPoint {
        Self._operatorMultiply(rhs, Real(lhs))
    }
    
    public static func / <T>(lhs: Vector2i, rhs: T) -> Vector2i where T : BinaryInteger {
        Self._operatorDivide(lhs, Int(rhs))
    }
    
    public static func / <T>(lhs: Vector2i, rhs: T) -> Vector2 where T : BinaryFloatingPoint {
        Self._operatorDivide(lhs, Real(rhs))
    }
    
    public static func % <T>(lhs: Vector2i, rhs: T) -> Vector2i where T : BinaryInteger {
        Self._operatorModule(lhs, Int(rhs))
    }
    
    public static func < (lhs: Vector2i, rhs: Vector2i) -> Bool {
        Self._operatorLess(lhs, rhs)
    }
    
    public static func <= (lhs: Vector2i, rhs: Vector2i) -> Bool {
        Self._operatorLessEqual(lhs, rhs)
    }
    
    public static func > (lhs: Vector2i, rhs: Vector2i) -> Bool {
        Self._operatorGreater(lhs, rhs)
    }
    
    public static func >= (lhs: Vector2i, rhs: Vector2i) -> Bool {
        Self._operatorGreaterEqual(lhs, rhs)
    }
    
    public static func + (lhs: Vector2i, rhs: Vector2i) -> Vector2i {
        Self._operatorAdd(lhs, rhs)
    }
    
    public static func - (lhs: Vector2i, rhs: Vector2i) -> Vector2i {
        Self._operatorSubtract(lhs, rhs)
    }
    
    public static func * (lhs: Vector2i, rhs: Vector2i) -> Vector2i {
        Self._operatorMultiply(lhs, rhs)
    }
    
    public static func / (lhs: Vector2i, rhs: Vector2i) -> Vector2i {
        Self._operatorDivide(lhs, rhs)
    }
    
    public static func % (lhs: Vector2i, rhs: Vector2i) -> Vector2i {
        Self._operatorModule(lhs, rhs)
    }
}

// MARK: - Extensions

extension Vector2i: Equatable, Hashable {}

extension Vector2i: AdditiveArithmetic, Comparable {}


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
}

extension Vector4i {
    // MARK: Constructors
    
    public init<T>(x: T, y: T, z: T, w: T) where T : BinaryFloatingPoint {
        self.init(x: Int(x), y: Int(y), z: Int(z), w: Int(w))
    }
    
    public init<T>(x: T, y: T, z: T, w: T) where T : BinaryInteger {
        self.init(x: Int(x), y: Int(y), z: Int(z), w: Int(w))
    }
    
    public init(_ vector4: Vector4) {
        self.init(x: vector4.x, y: vector4.y, z: vector4.z, w: vector4.w)
    }
    
    public init() {
        self.init(x: 0, y: 0, z: 0, w: 0)
    }
    
    // MARK: Operators
    
    public static prefix func - (vector4i: Vector4i) -> Vector4i {
        Self._operatorNegate(vector4i)
    }
    
    public static prefix func + (vector4i: Vector4i) -> Vector4i {
        Self._operatorPositive(vector4i)
    }
    
    public static func * (lhs: Vector4i, rhs: Int) -> Vector4i {
        Self._operatorMultiply(lhs, rhs)
    }
    
    public static func * <T>(lhs: Vector4i, rhs: T) -> Vector4i where T : BinaryInteger {
        lhs * Int(rhs)
    }
    
    public static func * (lhs: Int, rhs: Vector4i) -> Vector4i {
        Self._operatorMultiply(rhs, lhs)
    }
    
    public static func * <T>(lhs: T, rhs: Vector4i) -> Vector4i where T : BinaryInteger {
        rhs * Int(lhs)
    }
    
    public static func * (lhs: Vector4i, rhs: Real) -> Vector4 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    public static func * <T>(lhs: Vector4i, rhs: T) -> Vector4 where T : BinaryFloatingPoint {
        lhs * Real(rhs)
    }
    
    public static func * (lhs: Real, rhs: Vector4i) -> Vector4 {
        Self._operatorMultiply(rhs, lhs)
    }
    
    public static func * <T>(lhs: T, rhs: Vector4i) -> Vector4 where T : BinaryFloatingPoint {
        rhs * Real(lhs)
    }
    
    public static func / (lhs: Vector4i, rhs: Int) -> Vector4i {
        Self._operatorDivide(lhs, rhs)
    }
    
    public static func / <T>(lhs: Vector4i, rhs: T) -> Vector4i where T : BinaryInteger {
        lhs / Int(rhs)
    }
    
    public static func / (lhs: Vector4i, rhs: Real) -> Vector4 {
        Self._operatorDivide(lhs, rhs)
    }
    
    public static func / <T>(lhs: Vector4i, rhs: T) -> Vector4 where T : BinaryFloatingPoint {
        lhs / Real(rhs)
    }
    
    public static func % (lhs: Vector4i, rhs: Int) -> Vector4i {
        Self._operatorModule(lhs, rhs)
    }
    
    public static func % <T>(lhs: Vector4i, rhs: T) -> Vector4i where T : BinaryInteger {
        lhs % Int(rhs)
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
    
    public var lengthSquared: Int {
        _lengthSquared()
    }
    
    public var sign: Vector4i {
        _sign()
    }
    
    public var abs: Vector4i {
        _abs()
    }
    
    public func clamped(min: Vector4i, max: Vector4i) -> Vector4i {
        _clamp(min: min, max: max)
    }
    
    public func snapped(step: Vector4i) -> Vector4i {
        _snapped(step: step)
    }
}

extension Vector4i: Equatable, Hashable {}

extension Vector4i: AdditiveArithmetic, Comparable {}

extension Vector4i: Codable {
    public func encode(to encoder: Encoder) throws {
        var unkeyedContainer = encoder.unkeyedContainer()
        try unkeyedContainer.encode(x)
        try unkeyedContainer.encode(y)
        try unkeyedContainer.encode(z)
        try unkeyedContainer.encode(w)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        let x = try container.decode(Int.self)
        let y = try container.decode(Int.self)
        let z = try container.decode(Int.self)
        let w = try container.decode(Int.self)
        self.init(x: x, y: y, z: z, w: w)
    }
}

extension Vector4i: CustomStringConvertible {
    public var description: String {
        "(\(x), \(y), \(z), \(w))"
    }
}

extension Vector4i: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Vector4i(x: \(x), y: \(y), z: \(z), w: \(w))"
    }
}

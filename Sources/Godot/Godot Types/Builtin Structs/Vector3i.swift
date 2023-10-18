
public struct Vector3i {
    public var x: Int
    public var y: Int
    public var z: Int
    
    public init(x: Int, y: Int, z: Int) {
        self.x = x
        self.y = y
        self.z = z
    }
}

extension Vector3i {
    // MARK: Constructors
    
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
    
    public static prefix func - (vector3i: Vector3i) -> Vector3i {
        Self._operatorNegate(vector3i)
    }
    
    public static prefix func + (vector3i: Vector3i) -> Vector3i {
        Self._operatorPositive(vector3i)
    }
    
    public static func * (lhs: Vector3i, rhs: Int) -> Vector3i {
        Self._operatorMultiply(lhs, rhs)
    }
    
    public static func * <T>(lhs: Vector3i, rhs: T) -> Vector3i where T : BinaryInteger {
        lhs * Int(rhs)
    }
    
    public static func * (lhs: Int, rhs: Vector3i) -> Vector3i {
        Self._operatorMultiply(rhs, lhs)
    }
    
    public static func * <T>(lhs: T, rhs: Vector3i) -> Vector3i where T : BinaryInteger {
        rhs * Int(lhs)
    }
    
    public static func * (lhs: Vector3i, rhs: Real) -> Vector3 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    public static func * <T>(lhs: Vector3i, rhs: T) -> Vector3 where T : BinaryFloatingPoint {
        lhs * Real(rhs)
    }
    
    public static func * (lhs: Real, rhs: Vector3i) -> Vector3 {
        Self._operatorMultiply(rhs, lhs)
    }
    
    public static func * <T>(lhs: T, rhs: Vector3i) -> Vector3 where T : BinaryFloatingPoint {
        rhs * Real(lhs)
    }
    
    public static func / (lhs: Vector3i, rhs: Int) -> Vector3i {
        Self._operatorDivide(lhs, rhs)
    }
    
    public static func / <T>(lhs: Vector3i, rhs: T) -> Vector3i where T : BinaryInteger {
        lhs / Int(rhs)
    }
    
    public static func / (lhs: Vector3i, rhs: Real) -> Vector3 {
        Self._operatorDivide(lhs, rhs)
    }
    
    public static func / <T>(lhs: Vector3i, rhs: T) -> Vector3 where T : BinaryFloatingPoint {
        lhs / Real(rhs)
    }
    
    public static func % (lhs: Vector3i, rhs: Int) -> Vector3i {
        Self._operatorModule(lhs, rhs)
    }
    
    public static func % <T>(lhs: Vector3i, rhs: T) -> Vector3i where T : BinaryInteger {
        lhs % Int(rhs)
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
    
    public var sign: Vector3i {
        _sign()
    }
    
    public var abs: Vector3i {
        _abs()
    }
    
    public func clamped(min: Vector3i, max: Vector3i) -> Vector3i {
        _clamp(min: min, max: max)
    }
    
    public func snapped(step: Vector3i) -> Vector3i {
        _snapped(step: step)
    }
}

extension Vector3i: Equatable, Hashable {}

extension Vector3i: AdditiveArithmetic, Comparable {}

extension Vector3i: Codable {
    public func encode(to encoder: Encoder) throws {
        var unkeyedContainer = encoder.unkeyedContainer()
        try unkeyedContainer.encode(x)
        try unkeyedContainer.encode(y)
        try unkeyedContainer.encode(z)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        let x = try container.decode(Int.self)
        let y = try container.decode(Int.self)
        let z = try container.decode(Int.self)
        self.init(x: x, y: y, z: z)
    }
}

extension Vector3i: CustomStringConvertible {
    public var description: String {
        "(\(x), \(y), \(z))"
    }
}

extension Vector3i: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Vector3i(x: \(x), y: \(y), z: \(z))"
    }
}

import Foundation

public struct Basis {
    public var xAxis: Vector3
    public var yAxis: Vector3
    public var zAxis: Vector3
    
    public init(xAxis: Vector3, yAxis: Vector3, zAxis: Vector3) {
        self.xAxis = xAxis
        self.yAxis = yAxis
        self.zAxis = zAxis
    }
    
    public init() {
        self.init(xAxis: Vector3(), yAxis: Vector3(), zAxis: Vector3())
    }
    
    public init(xAxisX: Real, xAxisY: Real, xAxisZ: Real,
                yAxisX: Real, yAxisY: Real, yAxisZ: Real,
                zAxisX: Real, zAxisY: Real, zAxisZ: Real) {
        self.init(xAxis: Vector3(x: xAxisX, y: xAxisY, z: xAxisZ),
                  yAxis: Vector3(x: yAxisX, y: yAxisY, z: yAxisZ),
                  zAxis: Vector3(x: zAxisX, y: zAxisY, z: zAxisZ))
    }
    
    public init(quaternion: Quaternion) {
        self = Self._constructor(quaternion)
    }
    
    public init<T>(axis: Vector3, angle: T) where T : BinaryFloatingPoint {
        self = Self._constructor(axis: axis, angle: Real(angle))
    }
    
    public init<T>(axis: Vector3, angle: T) where T : BinaryInteger {
        self = Self._constructor(axis: axis, angle: Real(angle))
    }
    
    // MARK: Operators
    
    public static func == (lhs: Basis, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: Basis) -> Bool {
        Self._operatorEqual(rhs, lhs)
    }
    
    public static func * <T>(lhs: Basis, rhs: T) -> Basis where T : BinaryInteger {
        Self._operatorMultiply(lhs, Int(rhs))
    }
    
    public static func * <T>(lhs: Basis, rhs: T) -> Basis where T : BinaryFloatingPoint {
        Self._operatorMultiply(lhs, Real(rhs))
    }
    
    public static func * (lhs: Basis, rhs: Vector3) -> Vector3 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    public static func * (lhs: Basis, rhs: Basis) -> Basis {
        Self._operatorMultiply(lhs, rhs)
    }
}

// MARK: - Extensions

extension Basis: Equatable, Hashable {}

extension Basis: Codable {
    public func encode(to encoder: Encoder) throws {
        try [xAxis, yAxis, zAxis].encode(to: encoder)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        xAxis = try container.decode(Vector3.self)
        yAxis = try container.decode(Vector3.self)
        zAxis = try container.decode(Vector3.self)
    }
}

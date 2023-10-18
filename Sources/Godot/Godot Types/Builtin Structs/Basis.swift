
public struct Basis {
    public var xAxis: Vector3
    public var yAxis: Vector3
    public var zAxis: Vector3
    
    public init(xAxis: Vector3, yAxis: Vector3, zAxis: Vector3) {
        self.xAxis = xAxis
        self.yAxis = yAxis
        self.zAxis = zAxis
    }
}

extension Basis {
    // MARK: Constructors
    
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
        self = Self._constructor_quaternion(from: quaternion)
    }
    
    public init(axis: Vector3, angle: Real) {
        self = Self._constructor_vector3_float(axis: axis, angle: angle)
    }
    
    public init<T>(axis: Vector3, angle: T) where T : BinaryFloatingPoint {
        self.init(axis: axis, angle: Real(angle))
    }
    
    public init<T>(axis: Vector3, angle: T) where T : BinaryInteger {
        self.init(axis: axis, angle: Real(angle))
    }
    
    // MARK: Operators
    
    public static func * (lhs: Basis, rhs: Int) -> Basis {
        Self._operatorMultiply(lhs, rhs)
    }
    
    public static func * <T>(lhs: Basis, rhs: T) -> Basis where T : BinaryInteger {
        lhs * Int(rhs)
    }
    
    public static func * (lhs: Basis, rhs: Real) -> Basis {
        Self._operatorMultiply(lhs, rhs)
    }
    
    public static func * <T>(lhs: Basis, rhs: T) -> Basis where T : BinaryFloatingPoint {
        lhs * Real(rhs)
    }
    
    public static func * (lhs: Basis, rhs: Vector3) -> Vector3 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    public static func * (lhs: Basis, rhs: Basis) -> Basis {
        Self._operatorMultiply(lhs, rhs)
    }
    
    // MARK: Methods & variables
    
    public var inverted: Basis {
        _inverse()
    }
    
    public var transposed: Basis {
        _transposed()
    }
    
    public var orthonormalized: Basis {
        _orthonormalized()
    }
    
    public var determinant: Real {
        _determinant()
    }
    
    public func rotated(axis: Vector3, angle: Real) -> Basis {
        _rotated(axis: axis, angle: angle)
    }
    
    public func scaled(_ scale: Vector3) -> Basis {
        _scaled(scale: scale)
    }
    
    public var scale: Vector3 {
        _scale()
    }
    
    public func euler(order: Int = 2) -> Vector3 {
        _euler(order: order)
    }
    
    public func tdotx(_ vector: Vector3) -> Real {
        _tdotx(with: vector)
    }
    
    public func tdoty(_ vector: Vector3) -> Real {
        _tdoty(with: vector)
    }
    
    public func tdotz(_ vector: Vector3) -> Real {
        _tdotz(with: vector)
    }
    
    public func slerp(to other: Basis, weight: Real) -> Basis {
        _slerp(to: other, weight: weight)
    }
    
    public func isApproximatelyEqual(to other: Basis) -> Bool {
        _isEqualApprox(other)
    }
    
    public var isFinite: Bool {
        _isFinite()
    }
    
    public var rotation: Quaternion {
        _rotationQuaternion()
    }
    
    public static func looking(
        at target: Vector3,
        up: Vector3 = Vector3(x: 0, y: 1, z: 0),
        useModelFront: Bool = false
    ) -> Basis {
        _lookingAt(target: target, up: up, useModelFront: useModelFront)
    }
    
    public static func fromScale(_ scale: Vector3) -> Basis {
        _fromScale(scale)
    }
    
    public static func fromEuler(_ euler: Vector3, order: Int = 2) -> Basis {
        _fromEuler(euler, order: order)
    }
}

extension Basis: Equatable, Hashable {}

extension Basis: Codable {
    public func encode(to encoder: Encoder) throws {
        var unkeyedContainer = encoder.unkeyedContainer()
        try unkeyedContainer.encode(xAxis)
        try unkeyedContainer.encode(yAxis)
        try unkeyedContainer.encode(zAxis)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        xAxis = try container.decode(Vector3.self)
        yAxis = try container.decode(Vector3.self)
        zAxis = try container.decode(Vector3.self)
    }
}

extension Basis: CustomStringConvertible {
    public var description: String {
        "(xAxis: \(xAxis), yAxis: \(yAxis), zAxis: \(zAxis))"
    }
}

extension Basis: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Basis(xAxis: \(xAxis), yAxis: \(yAxis), zAxis: \(zAxis))"
    }
}


public struct Transform3D {
    public var basis: Basis
    public var origin: Vector3
    
    public init(basis: Basis, origin: Vector3) {
        self.basis = basis
        self.origin = origin
    }
}

extension Transform3D {
    public init() {
        self.init(basis: Basis(), origin: Vector3())
    }
    
    public init(xAxis: Vector3, yAxis: Vector3, zAxis: Vector3, origin: Vector3) {
        self = Self._constructor_vector3_vector3_vector3_vector3(xAxis: yAxis, yAxis: yAxis, zAxis: zAxis, origin: origin)
    }
    
    public init(projection: Projection) {
        self = Self._constructor_projection(from: projection)
    }
    
    public init<T>(xAxisX: T, xAxisY: T, xAxisZ: T,
                   yAxisX: T, yAxisY: T, yAxisZ: T,
                   zAxisX: T, zAxisY: T, zAxisZ: T,
                   originX: T, originY: T, originZ: T) where T : BinaryFloatingPoint {
        self.init(basis: Basis(xAxis: Vector3(x: xAxisX, y: xAxisY, z: xAxisZ),
                               yAxis: Vector3(x: yAxisX, y: yAxisY, z: yAxisZ),
                               zAxis: Vector3(x: zAxisX, y: zAxisY, z: zAxisZ)),
                  origin: Vector3(x: originX, y: originY, z: originZ))
    }
    
    public init<T>(xAxisX: T, xAxisY: T, xAxisZ: T,
                   yAxisX: T, yAxisY: T, yAxisZ: T,
                   zAxisX: T, zAxisY: T, zAxisZ: T,
                   originX: T, originY: T, originZ: T) where T : BinaryInteger {
        self.init(basis: Basis(xAxis: Vector3(x: xAxisX, y: xAxisY, z: xAxisZ),
                               yAxis: Vector3(x: yAxisX, y: yAxisY, z: yAxisZ),
                               zAxis: Vector3(x: zAxisX, y: zAxisY, z: zAxisZ)),
                  origin: Vector3(x: originX, y: originY, z: originZ))
    }
    
    // MARK: Operators
    
    public static func == (lhs: Transform3D, rhs: some ConvertibleToVariant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func * <T>(lhs: Transform3D, rhs: T) -> Transform3D where T : BinaryInteger {
        Self._operatorMultiply(lhs, Int(rhs))
    }
    
    public static func * <T>(lhs: T, rhs: Transform3D) -> Transform3D where T : BinaryInteger {
        Self._operatorMultiply(rhs, Int(lhs))
    }
    
    public static func * <T>(lhs: Transform3D, rhs: T) -> Transform3D where T : BinaryFloatingPoint {
        Self._operatorMultiply(lhs, Real(rhs))
    }
    
    public static func * <T>(lhs: T, rhs: Transform3D) -> Transform3D where T : BinaryFloatingPoint {
        Self._operatorMultiply(rhs, Real(lhs))
    }
    
    public static func * (lhs: Transform3D, rhs: Vector3) -> Vector3 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    public static func * (lhs: Transform3D, rhs: Plane) -> Plane {
        Self._operatorMultiply(lhs, rhs)
    }
    
    public static func * (lhs: Transform3D, rhs: AABB) -> AABB {
        Self._operatorMultiply(lhs, rhs)
    }
    
    public static func * (lhs: Transform3D, rhs: Transform3D) -> Transform3D {
        Self._operatorMultiply(lhs, rhs)
    }
    
    // MARK: Methods & variables
    
    public func multiplied(withVector3Array vector3Array: PackedVector3Array) -> PackedVector3Array {
        Self._operatorMultiply(self, vector3Array)
    }
    
    public var inversed: Transform3D {
        _inverse()
    }
    
    public var affineInversed: Transform3D {
        _affineInverse()
    }
    
    public var orthonormalized: Transform3D {
        _orthonormalized()
    }
    
    public func rotated(by angle: Real, around axis: Vector3) -> Transform3D {
        _rotated(axis: axis, angle: angle)
    }
    
    public func rotatedLocal(by angle: Real, around axis: Vector3) -> Transform3D {
        _rotatedLocal(axis: axis, angle: angle)
    }
    
    public func scaled(by scale: Vector3) -> Transform3D {
        _scaled(scale: scale)
    }
    
    public func scaledLocal(by scale: Vector3) -> Transform3D {
        _scaledLocal(scale: scale)
    }
    
    public func translated(by offset: Vector3) -> Transform3D {
        _translated(offset: offset)
    }
    
    public func translatedLocal(by offset: Vector3) -> Transform3D {
        _translatedLocal(offset: offset)
    }
    
    public func looking(
        at target: Vector3,
        up: Vector3 = Vector3(x: 0, y: 1, z: 0),
        useModelFront: Bool = false
    ) -> Transform3D {
        _lookingAt(target: target, up: up, useModelFront: useModelFront)
    }
    
    public func interpolated(with other: Transform3D, weight: Real) -> Transform3D {
        _interpolateWith(xform: other, weight: weight)
    }
    
    public func isApproximatelyEqual(to other: Transform3D) -> Bool {
        _isEqualApprox(xform: other)
    }
    
    public var isFinite: Bool {
        _isFinite()
    }
}

// MARK: - Extensions

extension Transform3D: Equatable, Hashable {}

extension Transform3D: Codable {
    public func encode(to encoder: Encoder) throws {
        try [basis.xAxis, basis.yAxis, basis.zAxis, origin].encode(to: encoder)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        let xAxis = try container.decode(Vector3.self)
        let yAxis = try container.decode(Vector3.self)
        let zAxis = try container.decode(Vector3.self)
        let origin = try container.decode(Vector3.self)
        self.init(xAxis: xAxis, yAxis: yAxis, zAxis: zAxis, origin: origin)
    }
}

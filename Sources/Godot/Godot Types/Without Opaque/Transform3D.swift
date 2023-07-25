import Foundation

public struct Transform3D {
    public var basis: Basis
    public var origin: Vector3
    
    public init(basis: Basis, origin: Vector3) {
        self.basis = basis
        self.origin = origin
    }
    
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
    
    public static func == (lhs: Transform3D, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: Transform3D) -> Bool {
        Self._operatorEqual(rhs, lhs)
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
    
    // MARK: Functions
    
    public func multipliedWith(packedVector3Array: PackedVector3Array) -> PackedVector3Array {
        Self._operatorMultiply(self, packedVector3Array)
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

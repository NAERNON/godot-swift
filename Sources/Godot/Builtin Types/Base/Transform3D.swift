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
        self = Self._constructor(xAxis: yAxis, yAxis: yAxis, zAxis: zAxis, origin: origin)
    }
    
    public init(projection: Projection) {
        self = Self._constructor(projection)
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
}

extension Transform3D: Equatable, Hashable {}

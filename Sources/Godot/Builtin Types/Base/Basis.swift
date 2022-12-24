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
}

extension Basis: Equatable, Hashable {}

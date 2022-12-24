import Foundation

public struct Projection {
    public var xAxis: Vector4
    public var yAxis: Vector4
    public var zAxis: Vector4
    public var wAxis: Vector4
    
    public init(xAxis: Vector4, yAxis: Vector4, zAxis: Vector4, wAxis: Vector4) {
        self.xAxis = xAxis
        self.yAxis = yAxis
        self.zAxis = zAxis
        self.wAxis = wAxis
    }
    
    public init<T>(xAxisX: T, xAxisY: T, xAxisZ: T, xAxisW: T,
                   yAxisX: T, yAxisY: T, yAxisZ: T, yAxisW: T,
                   zAxisX: T, zAxisY: T, zAxisZ: T, zAxisW: T,
                   wAxisX: T, wAxisY: T, wAxisZ: T, wAxisW: T) where T: BinaryFloatingPoint {
        self.init(xAxis: Vector4(x: xAxisX, y: xAxisY, z: xAxisZ, w: xAxisW),
                  yAxis: Vector4(x: yAxisX, y: yAxisY, z: yAxisZ, w: yAxisW),
                  zAxis: Vector4(x: zAxisX, y: zAxisY, z: zAxisZ, w: zAxisW),
                  wAxis: Vector4(x: wAxisX, y: wAxisY, z: wAxisZ, w: wAxisW))
    }
    
    public init<T>(xAxisX: T, xAxisY: T, xAxisZ: T, xAxisW: T,
                   yAxisX: T, yAxisY: T, yAxisZ: T, yAxisW: T,
                   zAxisX: T, zAxisY: T, zAxisZ: T, zAxisW: T,
                   wAxisX: T, wAxisY: T, wAxisZ: T, wAxisW: T) where T: BinaryInteger {
        self.init(xAxis: Vector4(x: xAxisX, y: xAxisY, z: xAxisZ, w: xAxisW),
                  yAxis: Vector4(x: yAxisX, y: yAxisY, z: yAxisZ, w: yAxisW),
                  zAxis: Vector4(x: zAxisX, y: zAxisY, z: zAxisZ, w: zAxisW),
                  wAxis: Vector4(x: wAxisX, y: wAxisY, z: wAxisZ, w: wAxisW))
    }
    
    public init(transform3D: Transform3D) {
        self = Self._constructor(transform3D)
    }
    
    public init() {
        self.init(xAxis: Vector4(), yAxis: Vector4(), zAxis: Vector4(), wAxis: Vector4())
    }
}

extension Projection: Equatable, Hashable {}

import Foundation

public struct Projection {
    public var x: Vector4
    public var y: Vector4
    public var z: Vector4
    public var w: Vector4
    
    public init(x: Vector4, y: Vector4, z: Vector4, w: Vector4) {
        self.x = x
        self.y = y
        self.z = z
        self.w = w
    }
    
    public init() {
        self.init(x: Vector4(), y: Vector4(), z: Vector4(), w: Vector4())
    }
    
    public init(xAxisX: Real, xAxisY: Real, xAxisZ: Real, xAxisW: Real,
                yAxisX: Real, yAxisY: Real, yAxisZ: Real, yAxisW: Real,
                zAxisX: Real, zAxisY: Real, zAxisZ: Real, zAxisW: Real,
                wAxisX: Real, wAxisY: Real, wAxisZ: Real, wAxisW: Real) {
        self.init(x: Vector4(x: xAxisX, y: xAxisY, z: xAxisZ, w: xAxisW),
                  y: Vector4(x: yAxisX, y: yAxisY, z: yAxisZ, w: yAxisW),
                  z: Vector4(x: zAxisX, y: zAxisY, z: zAxisZ, w: zAxisW),
                  w: Vector4(x: wAxisX, y: wAxisY, z: wAxisZ, w: wAxisW))
    }
}

extension Projection: Equatable, Hashable {}

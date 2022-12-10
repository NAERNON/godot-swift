import Foundation

public struct Basis {
    public var x: Vector3
    public var y: Vector3
    public var z: Vector3
    
    public init(x: Vector3, y: Vector3, z: Vector3) {
        self.x = x
        self.y = y
        self.z = z
    }
    
    public init() {
        self.init(x: Vector3(), y: Vector3(), z: Vector3())
    }
    
    public init(xAxisX: Real, xAxisY: Real, xAxisZ: Real,
                yAxisX: Real, yAxisY: Real, yAxisZ: Real,
                zAxisX: Real, zAxisY: Real, zAxisZ: Real) {
        self.init(x: Vector3(x: xAxisX, y: xAxisY, z: xAxisZ),
                  y: Vector3(x: yAxisX, y: yAxisY, z: yAxisZ),
                  z: Vector3(x: zAxisX, y: zAxisY, z: zAxisZ))
    }
}

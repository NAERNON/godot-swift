import Foundation

public struct Plane {
    public var normal: Vector3
    public var d: Real
    
    public init(normal: Vector3, d: Real) {
        self.normal = normal
        self.d = d
    }
    
    public init() {
        self.init(normal: Vector3(), d: 0)
    }
    
    public init(x: Real, y: Real, z: Real, d: Real) {
        self.init(normal: Vector3(x: x, y: y, z: z), d: d)
    }
}

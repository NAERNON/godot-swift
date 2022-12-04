import Foundation

public struct Plane {
    public var normal: Vector3
    public var d: Float
    
    public init(normal: Vector3, d: Float) {
        self.normal = normal
        self.d = d
    }
    
    public init() {
        self.init(normal: Vector3(), d: 0)
    }
}

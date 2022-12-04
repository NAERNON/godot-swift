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
}

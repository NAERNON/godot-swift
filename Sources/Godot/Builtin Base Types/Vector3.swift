import Foundation

public struct Vector3 {
    public var x: Real
    public var y: Real
    public var z: Real
    
    public init(x: Real, y: Real, z: Real) {
        self.x = x
        self.y = y
        self.z = z
    }
    
    public init() {
        self.init(x: 0, y: 0, z: 0)
    }
}

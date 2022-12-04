import Foundation

public struct Vector3 {
    public var x: Float
    public var y: Float
    public var z: Float
    
    public init(x: Float, y: Float, z: Float) {
        self.x = x
        self.y = y
        self.z = z
    }
    
    public init() {
        self.init(x: 0, y: 0, z: 0)
    }
}

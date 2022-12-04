import Foundation

public struct Vector4 {
    public var x: Float
    public var y: Float
    public var z: Float
    public var w: Float
    
    public init(x: Float, y: Float, z: Float, w: Float) {
        self.x = x
        self.y = y
        self.z = z
        self.w = w
    }
    
    public init() {
        self.init(x: 0, y: 0, z: 0, w: 0)
    }
}

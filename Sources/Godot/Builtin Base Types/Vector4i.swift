import Foundation

public struct Vector4i {
    public var x: Int
    public var y: Int
    public var z: Int
    public var w: Int
    
    public init(x: Int, y: Int, z: Int, w: Int) {
        self.x = x
        self.y = y
        self.z = z
        self.w = w
    }
    
    public init() {
        self.init(x: 0, y: 0, z: 0, w: 0)
    }
}

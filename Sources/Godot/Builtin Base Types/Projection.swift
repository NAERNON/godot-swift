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
}

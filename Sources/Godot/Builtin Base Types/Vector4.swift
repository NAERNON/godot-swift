import Foundation

public struct Vector4 {
    public var x: Real
    public var y: Real
    public var z: Real
    public var w: Real
    
    public init(x: Real, y: Real, z: Real, w: Real) {
        self.x = x
        self.y = y
        self.z = z
        self.w = w
    }
    
    public init() {
        self.init(x: 0, y: 0, z: 0, w: 0)
    }
}

extension Vector4: Hashable {}

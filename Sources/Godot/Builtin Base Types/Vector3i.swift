import Foundation

public struct Vector3i {
    public var x: Int
    public var y: Int
    public var z: Int
    
    public init(x: Int, y: Int, z: Int) {
        self.x = x
        self.y = y
        self.z = z
    }
    
    public init() {
        self.init(x: 0, y: 0, z: 0)
    }
}

extension Vector3i: Hashable {}

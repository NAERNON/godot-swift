import Foundation

public struct AABB {
    public var position: Vector3
    public var size: Vector3
    
    public init(position: Vector3, size: Vector3) {
        self.position = position
        self.size = size
    }
    
    public init() {
        self.init(position: Vector3(), size: Vector3())
    }
}

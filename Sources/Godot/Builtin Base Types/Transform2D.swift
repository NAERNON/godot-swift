import Foundation

public struct Transform2D {
    public var x: Vector2
    public var y: Vector2
    public var origin: Vector2
    
    public init(x: Vector2, y: Vector2, origin: Vector2) {
        self.x = x
        self.y = y
        self.origin = origin
    }
    
    public init() {
        self.init(x: Vector2(), y: Vector2(), origin: Vector2())
    }
}

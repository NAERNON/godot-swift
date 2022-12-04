import Foundation

public struct Rect2i {
    public var position: Vector2i
    public var size: Vector2i
    
    public init(position: Vector2i, size: Vector2i) {
        self.position = position
        self.size = size
    }
    
    public init() {
        self.init(position: Vector2i(), size: Vector2i())
    }
}

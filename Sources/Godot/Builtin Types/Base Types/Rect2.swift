import Foundation

public struct Rect2 {
    public var position: Vector2
    public var size: Vector2
    
    public init(position: Vector2, size: Vector2) {
        self.position = position
        self.size = size
    }
    
    public init() {
        self.init(position: Vector2(), size: Vector2())
    }
}

extension Rect2: Equatable, Hashable {}

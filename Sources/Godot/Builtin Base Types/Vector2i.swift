import Foundation

public struct Vector2i {
    public var x: Int
    public var y: Int
    
    public init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    public init() {
        self.init(x: 0, y: 0)
    }
}

extension Vector2i: Hashable {}

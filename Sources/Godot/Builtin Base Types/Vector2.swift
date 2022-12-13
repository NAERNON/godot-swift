import Foundation

public struct Vector2 {
    public var x: Real
    public var y: Real
    
    public init(x: Real, y: Real) {
        self.x = x
        self.y = y
    }
    
    public init() {
        self.init(x: 0, y: 0)
    }
}

extension Vector2: Hashable {}

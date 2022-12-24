import Foundation

public struct Vector2 {
    public var x: Real
    public var y: Real
    
    public init(x: Real, y: Real) {
        self.x = x
        self.y = y
    }
    
    public init<T>(x: T, y: T) where T: BinaryFloatingPoint {
        self.init(x: Real(x), y: Real(y))
    }
    
    public init<T>(x: T, y: T) where T: BinaryInteger {
        self.init(x: Real(x), y: Real(y))
    }
    
    public init(_ vector2i: Vector2i) {
        self.init(x: vector2i.x, y: vector2i.y)
    }
    
    public init() {
        self.init(x: 0, y: 0)
    }
}

extension Vector2: Equatable, Hashable {}

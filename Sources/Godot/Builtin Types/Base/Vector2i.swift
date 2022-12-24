import Foundation

public struct Vector2i {
    public var x: Int
    public var y: Int
    
    public init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    public init<T>(x: T, y: T) where T: BinaryFloatingPoint {
        self.init(x: Int(x), y: Int(y))
    }
    
    public init<T>(x: T, y: T) where T: BinaryInteger {
        self.init(x: Int(x), y: Int(y))
    }
    
    public init(_ vector2: Vector2) {
        self.init(x: vector2.x, y: vector2.y)
    }
    
    public init() {
        self.init(x: 0, y: 0)
    }
}

extension Vector2i: Equatable, Hashable {}

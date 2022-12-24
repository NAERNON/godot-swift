import Foundation

public struct Rect2 {
    public var position: Vector2
    public var size: Vector2
    
    public init(position: Vector2, size: Vector2) {
        self.position = position
        self.size = size
    }
    
    public init<T>(x: T, y: T, width: T, height: T) where T: BinaryFloatingPoint {
        self.init(position: Vector2(x: x, y: y),
                  size: Vector2(x: width, y: height))
    }
    
    public init<T>(x: T, y: T, width: T, height: T) where T: BinaryInteger {
        self.init(position: Vector2(x: x, y: y),
                  size: Vector2(x: width, y: height))
    }
    
    public init(_ other: Rect2i) {
        self.init(position: Vector2(other.position), size: Vector2(other.size))
    }
    
    public init() {
        self.init(position: Vector2(), size: Vector2())
    }
}

extension Rect2: Equatable, Hashable {}

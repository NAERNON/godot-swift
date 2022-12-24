import Foundation

public struct Rect2i {
    public var position: Vector2i
    public var size: Vector2i
    
    public init(position: Vector2i, size: Vector2i) {
        self.position = position
        self.size = size
    }
    
    public init<T>(x: T, y: T, width: T, height: T) where T: BinaryFloatingPoint {
        self.init(position: Vector2i(x: x, y: y),
                  size: Vector2i(x: width, y: height))
    }
    
    public init<T>(x: T, y: T, width: T, height: T) where T: BinaryInteger {
        self.init(position: Vector2i(x: x, y: y),
                  size: Vector2i(x: width, y: height))
    }
    
    public init(_ other: Rect2) {
        self.init(position: Vector2i(other.position), size: Vector2i(other.size))
    }
    
    public init() {
        self.init(position: Vector2i(), size: Vector2i())
    }
}

extension Rect2i: Equatable, Hashable {}

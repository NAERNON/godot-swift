import Foundation

public struct Vector2 {
    public var x: Float
    public var y: Float
    
    public init(x: Float, y: Float) {
        self.x = x
        self.y = y
    }
    
    public init() {
        self.init(x: 0, y: 0)
    }
}

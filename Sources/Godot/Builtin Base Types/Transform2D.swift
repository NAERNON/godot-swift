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
    
    public init(xAxisX: Real, xAxisY: Real,
                yAxisX: Real, yAxisY: Real,
                originX: Real, originY: Real) {
        self.init(x: Vector2(x: xAxisX, y: xAxisY),
                  y: Vector2(x: yAxisX, y: yAxisY),
                  origin: Vector2(x: originX, y: originY))
    }
}

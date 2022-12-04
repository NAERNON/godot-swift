import Foundation

public struct Color {
    public var r: Float
    public var g: Float
    public var b: Float
    public var a: Float
    
    public init(r: Float, g: Float, b: Float, a: Float) {
        self.r = r
        self.g = g
        self.b = b
        self.a = a
    }
    
    public init() {
        self.init(r: 0, g: 0, b: 0, a: 0)
    }
}

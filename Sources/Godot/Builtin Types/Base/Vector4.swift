import Foundation

public struct Vector4 {
    public var x: Real
    public var y: Real
    public var z: Real
    public var w: Real
    
    public init(x: Real, y: Real, z: Real, w: Real) {
        self.x = x
        self.y = y
        self.z = z
        self.w = w
    }
    
    public init<T>(x: T, y: T, z: T, w: T) where T: BinaryFloatingPoint {
        self.init(x: Real(x), y: Real(y), z: Real(z), w: Real(w))
    }
    
    public init<T>(x: T, y: T, z: T, w: T) where T: BinaryInteger {
        self.init(x: Real(x), y: Real(y), z: Real(z), w: Real(w))
    }
    
    public init(_ vector4: Vector4) {
        self.init(x: vector4.x, y: vector4.y, z: vector4.z, w: vector4.w)
    }
    
    public init() {
        self.init(x: 0, y: 0, z: 0, w: 0)
    }
}

extension Vector4: Equatable, Hashable {}

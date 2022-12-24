import Foundation

public struct Vector4i {
    public var x: Int
    public var y: Int
    public var z: Int
    public var w: Int
    
    public init(x: Int, y: Int, z: Int, w: Int) {
        self.x = x
        self.y = y
        self.z = z
        self.w = w
    }
    
    public init<T>(x: T, y: T, z: T, w: T) where T: BinaryFloatingPoint {
        self.init(x: Int(x), y: Int(y), z: Int(z), w: Int(w))
    }
    
    public init<T>(x: T, y: T, z: T, w: T) where T: BinaryInteger {
        self.init(x: Int(x), y: Int(y), z: Int(z), w: Int(w))
    }
    
    public init(_ vector4i: Vector4i) {
        self.init(x: vector4i.x, y: vector4i.y, z: vector4i.z, w: vector4i.w)
    }
    
    public init() {
        self.init(x: 0, y: 0, z: 0, w: 0)
    }
}

extension Vector4i: Equatable, Hashable {}

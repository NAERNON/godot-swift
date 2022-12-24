import Foundation

public struct Vector3 {
    public var x: Real
    public var y: Real
    public var z: Real
    
    public init(x: Real, y: Real, z: Real) {
        self.x = x
        self.y = y
        self.z = z
    }
    
    public init<T>(x: T, y: T, z: T) where T: BinaryFloatingPoint {
        self.init(x: Real(x), y: Real(y), z: Real(z))
    }
    
    public init<T>(x: T, y: T, z: T) where T: BinaryInteger {
        self.init(x: Real(x), y: Real(y), z: Real(z))
    }
    
    public init(_ vector3i: Vector3i) {
        self.init(x: vector3i.x, y: vector3i.y, z: vector3i.z)
    }
    
    public init() {
        self.init(x: 0, y: 0, z: 0)
    }
}

extension Vector3: Equatable, Hashable {}

import Foundation

public struct Vector3i {
    public var x: Int
    public var y: Int
    public var z: Int
    
    public init(x: Int, y: Int, z: Int) {
        self.x = x
        self.y = y
        self.z = z
    }
    
    public init<T>(x: T, y: T, z: T) where T: BinaryFloatingPoint {
        self.init(x: Int(x), y: Int(y), z: Int(z))
    }
    
    public init<T>(x: T, y: T, z: T) where T: BinaryInteger {
        self.init(x: Int(x), y: Int(y), z: Int(z))
    }
    
    public init(_ vector3: Vector3) {
        self.init(x: vector3.x, y: vector3.y, z: vector3.z)
    }
    
    public init() {
        self.init(x: 0, y: 0, z: 0)
    }
}

extension Vector3i: Equatable, Hashable {}

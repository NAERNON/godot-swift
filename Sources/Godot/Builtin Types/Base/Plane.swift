import Foundation

public struct Plane {
    public var normal: Vector3
    public var d: Real
    
    public init(normal: Vector3, d: Real) {
        self.normal = normal
        self.d = d
    }
    
    public init<T>(normal: Vector3, d: T) where T: BinaryFloatingPoint {
        self.init(normal: normal, d: Real(d))
    }
    
    public init<T>(normal: Vector3, d: T) where T: BinaryInteger {
        self.init(normal: normal, d: Real(d))
    }
    
    public init(x: Real, y: Real, z: Real, d: Real) {
        self.init(normal: Vector3(x: x, y: y, z: z), d: d)
    }
    
    public init<T>(x: T, y: T, z: T, d: T) where T: BinaryFloatingPoint {
        self.init(x: Real(x), y: Real(y), z: Real(z), d: Real(d))
    }
    
    public init<T>(x: T, y: T, z: T, d: T) where T: BinaryInteger {
        self.init(x: Real(x), y: Real(y), z: Real(z), d: Real(d))
    }
    
    public init(normal: Vector3) {
        self = Self._constructor(normal)
    }
    
    public init(normal: Vector3, point: Vector3) {
        self = Self._constructor(normal: normal, point: point)
    }
    
    public init(point1: Vector3, point2: Vector3, point3: Vector3) {
        self = Self._constructor(point1: point1, point2: point2, point3: point3)
    }
    
    public init() {
        self.init(normal: Vector3(), d: 0)
    }
}

extension Plane: Equatable, Hashable {}

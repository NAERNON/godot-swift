import Foundation

public struct Quaternion {
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
    
    public init(basis: Basis) {
        self = Self._constructor(basis)
    }
    
    public init<T>(axis: Vector3, angle: T) where T: BinaryFloatingPoint {
        self = Self._constructor(axis: axis, angle: Real(angle))
    }
    
    public init<T>(axis: Vector3, angle: T) where T: BinaryInteger {
        self = Self._constructor(axis: axis, angle: Real(angle))
    }
    
    public init(fromArc: Vector3, toArc: Vector3) {
        self = Self._constructor(arcFrom: fromArc, arcTo: toArc)
    }
    
    public init() {
        self.init(x: 0, y: 0, z: 0, w: 0)
    }
}

extension Quaternion: Equatable, Hashable {}

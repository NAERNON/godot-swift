
public struct Plane {
    public var normal: Vector3
    public var d: Real
    
    public init(normal: Vector3, d: Real) {
        self.normal = normal
        self.d = d
    }
    
    public init<T>(normal: Vector3, d: T) where T : BinaryFloatingPoint {
        self.init(normal: normal, d: Real(d))
    }
    
    public init<T>(normal: Vector3, d: T) where T : BinaryInteger {
        self.init(normal: normal, d: Real(d))
    }
    
    public init(x: Real, y: Real, z: Real, d: Real) {
        self.init(normal: Vector3(x: x, y: y, z: z), d: d)
    }
    
    public init<T>(x: T, y: T, z: T, d: T) where T : BinaryFloatingPoint {
        self.init(x: Real(x), y: Real(y), z: Real(z), d: Real(d))
    }
    
    public init<T>(x: T, y: T, z: T, d: T) where T : BinaryInteger {
        self.init(x: Real(x), y: Real(y), z: Real(z), d: Real(d))
    }
    
    public init(normal: Vector3) {
        self = Self._constructor_vector3(normal: normal)
    }
    
    public init(normal: Vector3, point: Vector3) {
        self = Self._constructor_vector3_vector3(normal: normal, point: point)
    }
    
    public init(point1: Vector3, point2: Vector3, point3: Vector3) {
        self = Self._constructor_vector3_vector3_vector3(point1: point1, point2: point2, point3: point3)
    }
    
    public init() {
        self.init(normal: Vector3(), d: 0)
    }
    
    // MARK: Operators
    
    public static func == (lhs: Plane, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: Plane) -> Bool {
        Self._operatorEqual(rhs, lhs)
    }
    
    public static prefix func - (plane: Plane) -> Plane {
        Self._operatorNegate(plane)
    }
    
    public static prefix func + (plane: Plane) -> Plane {
        Self._operatorPositive(plane)
    }
    
    public static func * (lhs: Plane, rhs: Transform3D) -> Plane {
        Self._operatorMultiply(lhs, rhs)
    }
    
    // MARK: Methods & variables
    
    public var normalized: Plane {
        _normalized()
    }
    
    public var center: Vector3 {
        _center()
    }
    
    public func isApproximatelyEqual(to other: Plane) -> Bool {
        _isEqualApprox(toPlane: other)
    }
    
    public var isFinite: Bool {
        _isFinite()
    }
    
    public func isPointOver(_ point: Vector3) -> Bool {
        _isPointOver(point: point)
    }
    
    public func distance(to point: Vector3) -> Real {
        _distanceTo(point: point)
    }
    
    public func hasPoint(_ point: Vector3, tolerance: Real = 1e-05) -> Bool {
        _hasPoint(point, tolerance: tolerance)
    }
    
    public func project(_ point: Vector3) -> Vector3 {
        _project(point: point)
    }
    
    public func intersect3(b: Plane, c: Plane) -> Variant {
        _intersect3(b: b, c: c)
    }
    
    public func intersectsRay(from fromPoint: Vector3, dir: Vector3) -> Variant {
        _intersectsRay(from: fromPoint, dir: dir)
    }
    
    public func intersectsSegment(from fromPoint: Vector3, to toPoint: Vector3) -> Variant {
        _intersectsSegment(from: fromPoint, to: toPoint)
    }
}

// MARK: - Extensions

extension Plane: Equatable, Hashable {}

extension Plane: Codable {
    public func encode(to encoder: Encoder) throws {
        try [normal.x, normal.y, normal.z, d].encode(to: encoder)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        let x = try container.decode(Real.self)
        let y = try container.decode(Real.self)
        let z = try container.decode(Real.self)
        let d = try container.decode(Real.self)
        self.init(x: x, y: y, z: z, d: d)
    }
}


/// A plane in Hessian normal form.
///
/// This type represents a normalized plane equation.
/// ``normal`` is the normal of the plane (a, b, c normalized),
/// and ``d`` is the distance from the origin to the plane (in the direction of "normal").
/// "Over" or "Above" the plane is considered
/// the side of the plane towards where the normal is pointing.
///
/// ## Topics
///
/// ### Creating Plane
///
/// - ``Plane/init(normal:d:)``
/// - ``Plane/init(normal:)``
/// - ``Plane/init(normal:point:)``
/// - ``Plane/init(point1:point2:point3:dir:)``
/// - ``Plane/init(a:b:c:d:)``
///
/// ### Special Values
///
/// - ``Plane/init()``
/// - ``Plane/yz``
/// - ``Plane/xz``
/// - ``Plane/xy``
///
/// ### Geometric Properties
///
/// - ``Plane/normal``
/// - ``Plane/d``
/// - ``Plane/x``
/// - ``Plane/y``
/// - ``Plane/z``
///
/// - ``Plane/center``
/// - ``Plane/isFinite``
///
/// ### Normalization
///
/// - ``Plane/normalized()``
/// - ``Plane/normalize()``
///
/// ### Distance and Points
///
/// - ``Plane/hasPoint(_:tolerance:)``
/// - ``Plane/distance(to:)``
/// - ``Plane/project(_:)``
/// - ``Plane/isPointOver(_:)``
///
/// ### Intersection
///
/// - ``Plane/intersection(with:and:)``
/// - ``Plane/segmentIntersection(from:to:)``
/// - ``Plane/rayIntersection(from:dir:)``
///
/// ### Approximate Equality
///
/// - ``Plane/isApproximatelyEqual(to:)``
public struct Plane: Equatable, Hashable {
    /// The normal of the plane, typically a unit vector.
    ///
    /// Shouldn't be a zero vector as `Plane` with
    /// such ``normal`` does not represent a valid plane.
    ///
    /// In the scalar equation of the plane `ax + by + cz = d`,
    /// this is the vector `(a, b, c)`, where `d` is the ``d`` property.
    public var normal: Vector3
    
    /// The distance from the origin to the plane, expressed in
    /// terms of `normal` (according to its direction and magnitude).
    ///
    /// Actual absolute distance from the origin to the plane can be calculated
    /// as `abs(d) / normal.length`
    /// (if normal has zero length then this `Plane` does not represent a valid plane).
    ///
    /// In the scalar equation of the plane `ax + by + cz = d`, this is `d`,
    /// while the `(a, b, c)` coordinates are represented by the ``normal`` property.
    public var d: Scalar
    
    // MARK: - Initializers
    
    /// Creates a new plane from the given normal vector and
    /// the plane's distance from the origin.
    ///
    /// - Parameters:
    ///   - normal: The plane's normal vector. Must be a unit vector.
    ///   - point: The plane's distance from the origin.
    public init(normal: Vector3, d: Scalar) {
        self.normal = normal
        self.d = d
    }
    
    /// Creates a new plane from the given four parameters.
    ///
    /// - Parameters:
    ///   - a: The plane's normal `x` value.
    ///   - b: The plane's normal `y` value.
    ///   - c: The plane's normal `z` value.
    ///   - d: The plane's distance from the origin.
    public init(
        a: Scalar,
        b: Scalar,
        c: Scalar,
        d: Scalar
    ) {
        self.normal = Vector3(x: a, y: b, z: c)
        self.d = d
    }
    
    /// Creates a new plane from the given normal vector.
    ///
    /// The plane will intersect the origin.
    ///
    /// - Parameter normal: The plane's normal vector. Must be a unit vector.
    public init(normal: Vector3) {
        self.normal = normal
        self.d = 0.0
    }
    
    /// Creates a new plane from the given normal vector and a point on the plane.
    ///
    /// - Parameters:
    ///   - normal: The plane's normal vector. Must be a unit vector.
    ///   - point: A point on the plane.
    public init(normal: Vector3, point: Vector3) {
        self.normal = normal
        self.d = normal.dot(point)
    }
    
    /// Creates a new plane from the given three points.
    ///
    /// - Parameters:
    ///   - point1: The first point on the plane.
    ///   - point2: The second point on the plane.
    ///   - point3: The third point on the plane.
    ///   - dir: The order in which the points are given.
    public init(
        point1: Vector3,
        point2: Vector3,
        point3: Vector3,
        dir: ClockDirection = .clockwise
    ) {
        if dir == .clockwise {
            self.normal = (point1 - point3).cross(point1 - point2)
        } else {
            self.normal = (point1 - point2).cross(point1 - point3)
        }

        self.normal.normalize()
        self.d = self.normal.dot(point1)
    }
    
    /// Creates a default-initialized `Plane` with all components set to `0`.
    public init() {
        self.normal = Vector3()
        self.d = 0.0
    }
}

// MARK: - Special Values

extension Plane {
    /// A plane that extends in the Y and Z axes (normal vector points +X).
    public static var yz: Plane {
        Plane(a: 1, b: 0, c: 0, d: 0)
    }
    
    /// A plane that extends in the X and Z axes (normal vector points +Y).
    public static var xz: Plane {
        Plane(a: 0, b: 1, c: 0, d: 0)
    }
    
    /// A plane that extends in the X and Y axes (normal vector points +Z).
    public static var xy: Plane {
        Plane(a: 0, b: 0, c: 1, d: 0)
    }
}

// MARK: - Operators

extension Plane {
    /// The opposite of a plane.
    ///
    /// This is the same as writing `Plane(normal: -p.normal, d: -p.d)`.
    /// This operation flips the direction of the normal vector and
    /// also flips the distance value, resulting in a `Plane` that
    /// is in the same place, but facing the opposite direction.
    public static prefix func - (plane: Plane) -> Plane {
        Plane(normal: -plane.normal, d: -plane.d)
    }
}

// MARK: - Properties

extension Plane {
    /// The X component of the plane's normal vector.
    public var x: Scalar {
        get {
            normal.x
        }
        set(newValue) {
            normal.x = newValue
        }
    }
    
    /// The Y component of the plane's normal vector.
    public var y: Scalar {
        get {
            normal.y
        }
        set(newValue) {
            normal.y = newValue
        }
    }
    
    /// The Z component of the plane's normal vector.
    public var z: Scalar {
        get {
            normal.z
        }
        set(newValue) {
            normal.z = newValue
        }
    }
}

// MARK: - Functions and variables

extension Plane {
    /// Returns the normalized version of the plane.
    ///
    /// The ``normal`` is normalized (so it's a unit vector).
    ///
    /// This function returns `Plane(0, 0, 0, 0)` if `normal`
    /// can't be normalized (it has zero length).
    public func normalized() -> Plane {
        var copy = self
        copy.normalize()
        return copy
    }
    
    /// Normalizes this plane.
    ///
    /// The ``normal`` is normalized (so it's a unit vector).
    ///
    /// This plane becomes `Plane(0, 0, 0, 0)` if `normal`
    /// can't be normalized (it has zero length).
    public mutating func normalize() {
        let l = normal.magnitude
        if l == 0 {
            self = Plane(a: 0, b: 0, c: 0, d: 0)
            return
        }
        normal /= l
        d /= l
    }
    
    /// The center of the plane.
    public var center: Vector3 {
        normal * d
    }
    
    /// Returns `true` if this plane is approximately equal to another one.
    public func isApproximatelyEqual(to other: Plane) -> Bool {
        normal.isApproximatelyEqual(to: other.normal) &&
        d.isApproximatelyEqual(to: other.d)
    }
    
    /// A Boolean value indicating whether the plane is finite.
    public var isFinite: Bool {
        normal.isFinite &&
        d.isFinite
    }
    
    /// Returns `true` if a given point is located above the plane.
    public func isPointOver(_ point: Vector3) -> Bool {
        normal.dot(point) > d
    }
    
    /// Returns the shortest distance from this plane to the given position point.
    ///
    /// If the point is above the plane, the distance will be positive.
    /// If below, the distance will be negative.
    public func distance(to point: Vector3) -> Scalar {
        normal.dot(point) - d
    }
    
    /// Returns `true` if the given point is inside this plane.
    ///
    /// Comparison uses a custom minimum tolerance threshold.
    public func hasPoint(_ point: Vector3, tolerance: Scalar = 1e-05) -> Bool {
        let dist = abs(normal.dot(point) - d)
        return dist <= tolerance
    }
    
    /// Returns the orthogonal projection of a given point into a point in the plane.
    public func project(_ point: Vector3) -> Vector3 {
        point - normal * distance(to: point)
    }
    
    /// Returns the intersection point of this plane and two other ones,
    /// if exists.
    public func intersection(with planeB: Plane, and planeC: Plane) -> Vector3? {
        let planeA = self
        let normal0 = planeA.normal
        let normal1 = planeB.normal
        let normal2 = planeC.normal

        let denom = normal0.cross(normal1).dot(normal2)

        if denom.isApproximatelyZero {
            return nil
        }
        
        return (
            (normal1.cross(normal2) * planeA.d) +
            (normal2.cross(normal0) * planeB.d) +
            (normal0.cross(normal1) * planeC.d)
        ) / denom
    }
    
    /// Returns the intersection point of a ray consisting of the position
    /// and the direction normal with this plane, is exists.
    ///
    /// - Parameters:
    ///   - fromPoint: The ray position.
    ///   - dir: The ray direction.
    public func rayIntersection(from fromPoint: Vector3, dir: Vector3) -> Vector3? {
        let segment = dir
        let den = normal.dot(segment)
        
        if den.isApproximatelyZero {
            return nil
        }

        let dist = (normal.dot(fromPoint) - d) / den
        
        if dist > .cmpEpsilon { // this is a ray, before the emitting pos (fromPoint) doesn't exist
            return nil
        }
        
        return fromPoint + segment * -dist
    }
    
    /// Returns the intersection point between two points with this plane, is exists.
    public func segmentIntersection(from fromPoint: Vector3, to toPoint: Vector3) -> Vector3? {
        let segment = fromPoint - toPoint
        let den = normal.dot(segment)
        
        if den.isApproximatelyZero {
            return nil
        }
        
        let dist = (normal.dot(fromPoint) - d) / den
        
        if dist < -.cmpEpsilon || dist > (1.0 + .cmpEpsilon) {
            return nil
        }
        
        return fromPoint + segment * -dist
    }
}

// MARK: - Codable

extension Plane: Codable {
    public func encode(to encoder: Encoder) throws {
        var unkeyedContainer = encoder.unkeyedContainer()
        try unkeyedContainer.encode(normal.x)
        try unkeyedContainer.encode(normal.y)
        try unkeyedContainer.encode(normal.z)
        try unkeyedContainer.encode(d)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        let x = try container.decode(Scalar.self)
        let y = try container.decode(Scalar.self)
        let z = try container.decode(Scalar.self)
        let d = try container.decode(Scalar.self)
        self.init(a: x, b: y, c: z, d: d)
    }
}

// MARK: - CustomStringConvertible

extension Plane: CustomStringConvertible {
    public var description: String {
        "(normal: \(normal), d: \(d))"
    }
}

extension Plane: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Plane(normal: \(normal), d: \(d))"
    }
}


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
/// - ``init(normal:d:)-4b0we``
/// - ``init(normal:d:)-4fwyy``
/// - ``init(normal:d:)-63rpz``
/// - ``init(normal:)``
/// - ``init(normal:point:)``
/// - ``init(point1:point2:point3:)``
/// - ``init(a:b:c:d:)-7m9r8``
/// - ``init(a:b:c:d:)-6aiaw``
/// - ``init(a:b:c:d:)-908jd``
///
/// ### Special Values
///
/// - ``init()``
/// - ``planeYZ``
/// - ``planeXZ``
/// - ``planeXY``
///
/// ### Geometric Properties
///
/// - ``d``
/// - ``normal``
/// - ``x``
/// - ``y``
/// - ``z``
/// 
/// - ``center``
/// - ``isFinite``
/// - ``distance(to:)``
/// - ``isPointOver(_:)``
///
/// ### Transformation
///
/// - ``normalized``
///
/// ### Intersection
///
/// - ``hasPoint(_:tolerance:)``
/// - ``project(_:)``
/// - ``intersection(with:and:)``
/// - ``segmentIntersection(from:to:)``
/// - ``rayIntersection(from:dir:)``
public struct Plane {
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
    
    /// Creates a plane from the normal vector and the plane's distance from the origin.
    ///
    /// - Parameters:
    ///   - normal: The plane's normal vector. Must be a unit vector.
    ///   - point: The plane's distance from the origin.
    public init(normal: Vector3, d: Scalar) {
        self.normal = normal
        self.d = d
    }
}

extension Plane {
    // MARK: Constructors
    
    /// Creates a plane from the normal vector and the plane's distance from the origin.
    ///
    /// - Parameters:
    ///   - normal: The plane's normal vector. Must be a unit vector.
    ///   - point: The plane's distance from the origin.
    public init<T>(normal: Vector3, d: T) where T : BinaryFloatingPoint {
        self.init(normal: normal, d: Scalar(d))
    }
    
    /// Creates a plane from the normal vector and the plane's distance from the origin.
    ///
    /// - Parameters:
    ///   - normal: The plane's normal vector. Must be a unit vector.
    ///   - point: The plane's distance from the origin.
    public init<T>(normal: Vector3, d: T) where T : BinaryInteger {
        self.init(normal: normal, d: Scalar(d))
    }
    
    /// Creates a plane from the four parameters.
    ///
    /// - Parameters:
    ///   - a: The plane's normal `x` value.
    ///   - b: The plane's normal `y` value.
    ///   - c: The plane's normal `z` value.
    ///   - d: The plane's distance from the origin.
    public init(a: Scalar, b: Scalar, c: Scalar, d: Scalar) {
        self.init(normal: Vector3(x: a, y: b, z: c), d: d)
    }
    
    /// Creates a plane from the four parameters.
    ///
    /// - Parameters:
    ///   - a: The plane's normal `x` value.
    ///   - b: The plane's normal `y` value.
    ///   - c: The plane's normal `z` value.
    ///   - d: The plane's distance from the origin.
    public init<T>(a: T, b: T, c: T, d: T) where T : BinaryFloatingPoint {
        self.init(a: Scalar(a), b: Scalar(b), c: Scalar(c), d: Scalar(d))
    }
    
    /// Creates a plane from the four parameters.
    ///
    /// - Parameters:
    ///   - a: The plane's normal `x` value.
    ///   - b: The plane's normal `y` value.
    ///   - c: The plane's normal `z` value.
    ///   - d: The plane's distance from the origin.
    public init<T>(a: T, b: T, c: T, d: T) where T : BinaryInteger {
        self.init(a: Scalar(a), b: Scalar(b), c: Scalar(c), d: Scalar(d))
    }
    
    /// Creates a plane from the normal vector.
    ///
    /// The plane will intersect the origin.
    ///
    /// - Parameter normal: The plane's normal vector. Must be a unit vector.
    public init(normal: Vector3) {
        self = Self._constructor_vector3(normal: normal)
    }
    
    /// Creates a plane from the normal vector and a point on the plane.
    ///
    /// - Parameters:
    ///   - normal: The plane's normal vector. Must be a unit vector.
    ///   - point: A point on the plane.
    public init(normal: Vector3, point: Vector3) {
        self = Self._constructor_vector3_vector3(normal: normal, point: point)
    }
    
    /// Creates a plane from the three points, given in clockwise order.
    public init(point1: Vector3, point2: Vector3, point3: Vector3) {
        self = Self._constructor_vector3_vector3_vector3(point1: point1, point2: point2, point3: point3)
    }
    
    /// Creates a default-initialized `Plane` with all components set to 0.
    public init() {
        self.init(normal: Vector3(), d: 0)
    }
    
    // MARK: Constant
    
    /// A plane that extends in the Y and Z axes (normal vector points +X).
    public static let planeYZ: Plane = Plane(a: 1, b: 0, c: 0, d: 0)
    
    /// A plane that extends in the X and Z axes (normal vector points +Y).
    public static let planeXZ: Plane = Plane(a: 0, b: 1, c: 0, d: 0)
    
    /// A plane that extends in the X and Y axes (normal vector points +Z).
    public static let planeXY: Plane = Plane(a: 0, b: 0, c: 1, d: 0)
    
    // MARK: Operators
    
    /// Returns the negative value of the `Plane`.
    ///
    /// This is the same as writing `Plane(normal: -p.normal, d: -p.d)`.
    /// This operation flips the direction of the normal vector and
    /// also flips the distance value, resulting in a `Plane` that
    /// is in the same place, but facing the opposite direction.
    public static prefix func - (plane: Plane) -> Plane {
        Self._operatorNegate(plane)
    }
    
    /// Returns the same value as if the + was not there.
    public static prefix func + (plane: Plane) -> Plane {
        Self._operatorPositive(plane)
    }
    
    /// Inversely transforms (multiplies) the Plane by the given transformation matrix.
    ///
    /// `plane * transform` is equivalent to `transform.affineInverted * plane`.
    /// See Transform3D's ``Transform3D/affineInverted``.
    public static func * (lhs: Plane, rhs: Transform3D) -> Plane {
        Self._operatorMultiply(lhs, rhs)
    }
    
    // MARK: Methods & variables
    
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
    
    /// The normalized version of the plane.
    ///
    /// The ``normal`` is normalized (so it's a unit vector).
    ///
    /// This property returns `Plane(0, 0, 0, 0)` if `normal`
    /// can't be normalized (it has zero length).
    public var normalized: Plane {
        _normalized()
    }
    
    /// The center of the plane.
    public var center: Vector3 {
        _center()
    }
    
    /// Returns `true` if the `Plane` is approximately equal to another one.
    public func isApproximatelyEqual(to other: Plane) -> Bool {
        _isEqualApprox(toPlane: other)
    }
    
    /// A Boolean value indicating whether the plane is finite.
    public var isFinite: Bool {
        _isFinite()
    }
    
    /// Returns `true` if a given point is located above the plane.
    public func isPointOver(_ point: Vector3) -> Bool {
        _isPointOver(point: point)
    }
    
    /// Returns the shortest distance from the plane to the position point.
    ///
    /// If the point is above the plane, the distance will be positive.
    /// If below, the distance will be negative.
    public func distance(to point: Vector3) -> Scalar {
        _distanceTo(point: point)
    }
    
    /// Returns `true` if the given point is inside the plane.
    ///
    /// Comparison uses a custom minimum tolerance threshold.
    public func hasPoint(_ point: Vector3, tolerance: Scalar = 1e-05) -> Bool {
        _hasPoint(point, tolerance: tolerance)
    }
    
    /// Returns the orthogonal projection of a given point into a point in the plane.
    public func project(_ point: Vector3) -> Vector3 {
        _project(point: point)
    }
    
    /// Returns the intersection point of the plane and two other ones,
    /// if exists.
    public func intersection(with planeB: Plane, and planeC: Plane) -> Vector3? {
        try? Vector3.convertFromStorage(
            _intersect3(b: planeB, c: planeC)
        )
    }
    
    /// Returns the intersection point of a ray consisting of the position
    /// and the direction normal with the plane, is exists.
    ///
    /// - Parameters:
    ///   - fromPoint: The ray position.
    ///   - dir: The ray direction.
    public func rayIntersection(from fromPoint: Vector3, dir: Vector3) -> Vector3? {
        try? Vector3.convertFromStorage(
            _intersectsRay(from: fromPoint, dir: dir)
        )
    }
    
    /// Returns the intersection point between two points with the plane, is exists.
    public func segmentIntersection(from fromPoint: Vector3, to toPoint: Vector3) -> Vector3? {
        try? Vector3.convertFromStorage(
            _intersectsSegment(from: fromPoint, to: toPoint)
        )
    }
}

extension Plane: Equatable, Hashable {}

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

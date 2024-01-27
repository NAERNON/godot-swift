
/// A 3D axis-aligned bounding box.
///
/// `AABB` consists of a position, a size, and several utility functions.
/// It is typically used for fast overlap tests.
///
/// It uses floating-point coordinates. The 2D counterpart to `AABB` is ``Rect2``.
///
/// Negative values for size are not supported and will not work for most methods.
/// Use ``abs`` to get an `AABB` with a positive size.
///
/// >note: Unlike ``Rect2``, `AABB` does not have a variant that uses integer coordinates.
///
/// ## Topics
///
/// ### Creating AABB
///
/// - ``init(position:size:)``
/// - ``init()``
///
/// ### Geometric Properties
///
/// - ``position``
/// - ``size``
/// - ``end``
///
/// - ``center``
/// - ``volume``
/// - ``isFinite``
/// - ``hasSurface``
/// - ``hasVolume``
///
/// - ``support(dir:)``
/// - ``endpoint(index:)``
///
/// ### Transformation
///
/// - ``abs``
/// - ``expand(to:)``
/// - ``grow(by:)``
/// - ``merged(with:)``
///
/// ### Intersection
///
/// - ``intersects(_:)-2px8t``
/// - ``intersects(_:)-4xwip``
/// - ``intersection(with:)``
/// - ``rayIntersection(from:dir:)``
/// - ``segmentIntersection(from:to:)``
/// - ``hasPoint(_:)``
/// - ``encloses(_:)``
///
/// ### Axis
///
/// - ``longestAxisVector``
/// - ``longestAxisSize``
/// - ``longestAxis``
/// - ``shortestAxisVector``
/// - ``shortestAxisSize``
/// - ``shortestAxis``
public struct AABB {
    /// The beginning corner.
    ///
    /// Typically has values lower than ``end``.
    public var position: Vector3
    
    /// The size from position to end.
    ///
    /// Typically, all components are positive.
    /// If the size is negative, you can use ``abs`` to fix it.
    public var size: Vector3
    
    /// Creates an `AABB` from a position and size.
    public init(position: Vector3, size: Vector3) {
        self.position = position
        self.size = size
    }
}

extension AABB {
    // MARK: Constructors
    
    /// Creates a default-initialized `AABB` with default
    /// (zero) values of `position` and `size`.
    public init() {
        self.init(position: Vector3(), size: Vector3())
    }
    
    // MARK: Operators
    
    /// Inversely transforms (multiplies) the `AABB` by the
    /// given transformation matrix.
    ///
    /// This function assumes that the transformation basis
    /// is orthonormal (i.e. rotation/reflection is fine, scaling/skew is not).
    ///
    /// ```swift
    /// /// The two values are equivalent:
    /// aabb * transform
    /// transform.inverted * aabb
    /// ```
    /// See `Transform3D`'s ``Transform3D/inverted``.
    ///
    /// For transforming by inverse of an affine transformation (e.g. with scaling)
    /// `transform.affineInverted * aabb` can be used instead.
    /// See `Transform3D`'s ``Transform3D/affineInverted``.
    public static func * (lhs: AABB, rhs: Transform3D) -> AABB {
        Self._operatorMultiply(lhs, rhs)
    }
    
    // MARK: Methods & variables
    
    /// The ending corner.
    ///
    /// This is calculated as `position + size`. Setting this value will change the size.
    public var end: Vector3 {
        get {
            position + size
        }
        set(newValue) {
            size = newValue - position
        }
    }
    
    /// The AABB with equivalent position and size,
    /// modified so that the most-negative corner
    /// is the origin and the size is positive
    public var abs: AABB {
        _abs()
    }
    
    /// The center of the AABB.
    ///
    /// The center is equal to `position + (size / 2)`.
    public var center: Vector3 {
        _center()
    }
    
    /// The volume of the AABB.
    public var volume: Scalar {
        _volume()
    }
    
    /// A Boolean value indicating whether the `AABB` has a volume.
    ///
    /// This function returns `false` if the `AABB` is flat,
    /// empty, or has a negative size.
    public var hasVolume: Bool {
        _hasVolume()
    }
    
    /// A Boolean value indicating whether the `AABB` has a surface or a length.
    ///
    /// This property is `false` if the `AABB` is empty (all components of size are zero or negative).
    public var hasSurface: Bool {
        _hasSurface()
    }
    
    /// Returns `true` if the AABB contains a given point.
    ///
    /// Points on the faces of the `AABB` are considered included,
    /// though float-point precision errors may impact the accuracy of such checks.
    ///
    /// >note: This method is not reliable for `AABB` with a negative size.
    /// Use ``abs`` to get a positive sized equivalent
    /// `AABB` to check for contained points.
    public func hasPoint(_ point: Vector3) -> Bool {
        _hasPoint(point)
    }
    
    /// Returns `true` if the `AABB` is approximately equal to another one.
    public func isApproximatelyEqual(to other: AABB) -> Bool {
        _isEqualApprox(aabb: other)
    }
    
    /// A Boolean value indicating whether the `AABB` is finite.
    public var isFinite: Bool {
        _isFinite()
    }
    
    /// Returns `true` if the `AABB` completely encloses another one.
    public func encloses(_ other: AABB) -> Bool {
        _encloses(with: other)
    }
    
    /// Returns `true` if the `AABB` overlaps with another one.
    public func intersects(_ other: AABB) -> Bool {
        _intersects(with: other)
    }
    
    /// Returns `true` if the `AABB` is on both sides of a given plane.
    public func intersects(_ plane: Plane) -> Bool {
        _intersectsPlane(plane)
    }
    
    /// Returns the intersection between the `AABB` and another one.
    ///
    /// - Returns: The calculated intersection, or an empty `AABB` if it failed.
    public func intersection(with other: AABB) -> AABB {
        _intersection(with: other)
    }
    
    /// Returns a larger `AABB` that contains both the `AABB` and a given one.
    public func merged(with other: AABB) -> AABB {
        _merge(with: other)
    }
    
    /// Returns the AABB expanded to include a given point.
    ///
    /// ```swift
    /// // position (-3, 2, 0), size (1, 1, 1)
    /// let box = AABB(
    ///     position: Vector3(x: -3, y: 2, z: 0),
    ///     size: Vector3(x: 1, y: 1, z: 1)
    /// )
    /// /// position (-3, -1, 0), size (3, 4, 2), so we fit both the original AABB and Vector3(0, -1, 2)
    /// let box2 = box.expand(to: Vector3(x: 0, y: -1, z: 2))
    /// ```
    public func expand(to point: Vector3) -> AABB {
        _expand(toPoint: point)
    }
    
    /// Returns the AABB grown a given number of units towards all the sides.
    public func grow(by amount: Scalar) -> AABB {
        _grow(by: amount)
    }
    
    /// Returns the vertex of the `AABB` that's the farthest in a given direction.
    ///
    /// This point is commonly known as the
    /// support point in collision detection algorithms.
    public func support(dir: Vector3) -> Vector3 {
        _support(dir: dir)
    }
    
    /// The normalized longest axis of the `AABB`.
    public var longestAxisVector: Vector3 {
        _longestAxis()
    }
    
    /// The longest axis of the `AABB`.
    public var longestAxis: Axis3D {
        .init(rawValue: UInt32(_longestAxisIndex())).unsafelyUnwrapped
    }
    
    /// The scalar length of the longest axis of the `AABB`.
    public var longestAxisSize: Scalar {
        _longestAxisSize()
    }
    
    /// The normalized shortest axis of the `AABB`.
    public var shortestAxisVector: Vector3 {
        _shortestAxis()
    }
    
    /// The shortest axis of the `AABB`.
    public var shortestAxis: Axis3D {
        .init(rawValue: UInt32(_shortestAxisIndex())).unsafelyUnwrapped
    }
    
    /// The scalar length of the shortest axis of the `AABB`.
    public var shortestAxisSize: Scalar {
        _shortestAxisSize()
    }
    
    /// Returns the position of the 8 endpoints of the `AABB` in space.
    public func endpoint(index: Int) -> Vector3 {
        _endpoint(idx: index)
    }
    
    /// Returns the point of intersection between two points with the `AABB`, if exists.
    public func segmentIntersection(from fromPoint: Vector3, to toPoint: Vector3) -> Vector3? {
        try? Vector3.convertFromStorage(
            _intersectsSegment(from: fromPoint, to: toPoint)
        )
    }
    
    /// Returns the point of intersection of the given ray with the `AABB`, if exists.
    ///
    /// Ray length is infinite.
    public func rayIntersection(from fromPoint: Vector3, dir: Vector3) -> Vector3? {
        try? Vector3.convertFromStorage(
            _intersectsRay(from: fromPoint, dir: dir)
        )
    }
}

extension AABB: Equatable, Hashable {}

extension AABB: Codable {
    public func encode(to encoder: Encoder) throws {
        var unkeyedContainer = encoder.unkeyedContainer()
        try unkeyedContainer.encode(position.x)
        try unkeyedContainer.encode(position.y)
        try unkeyedContainer.encode(position.z)
        try unkeyedContainer.encode(size.x)
        try unkeyedContainer.encode(size.y)
        try unkeyedContainer.encode(size.z)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        let positionX = try container.decode(Scalar.self)
        let positionY = try container.decode(Scalar.self)
        let positionZ = try container.decode(Scalar.self)
        let sizeX = try container.decode(Scalar.self)
        let sizeY = try container.decode(Scalar.self)
        let sizeZ = try container.decode(Scalar.self)
        
        self.init(
            position: Vector3(x: positionX, y: positionY, z: positionZ),
            size: Vector3(x: sizeX, y: sizeY, z: sizeZ))
    }
}

extension AABB: CustomStringConvertible {
    public var description: String {
        "(position: \(position), size: \(size))"
    }
}

extension AABB: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AABB(position: \(position), size: \(size))"
    }
}

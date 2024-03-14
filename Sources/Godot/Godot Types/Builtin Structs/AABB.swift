
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
/// - ``AABB/init(position:size:)``
/// - ``AABB/init()``
///
/// ### Geometric Properties
///
/// - ``AABB/position``
/// - ``AABB/size``
/// - ``AABB/end``
///
/// - ``AABB/center``
/// - ``AABB/volume``
/// - ``AABB/isFinite``
/// - ``AABB/hasSurface``
/// - ``AABB/hasVolume``
///
/// - ``AABB/endpoint(at:)``
/// - ``AABB/support(normal:)``
///
/// ### Transformation
///
/// - ``AABB/abs()``
/// - ``AABB/formAbs()``
/// - ``AABB/expanded(to:)``
/// - ``AABB/expand(to:)``
/// - ``AABB/grown(by:)``
/// - ``AABB/grow(by:)``
/// - ``AABB/merged(with:)``
/// - ``AABB/merge(with:)``
///
/// ### Intersection
///
/// - ``AABB/intersects(_:)-2px8t``
/// - ``AABB/intersects(_:)-4xwip``
/// - ``AABB/intersection(with:)``
/// - ``AABB/formIntersection(with:)``
/// - ``AABB/rayIntersection(from:dir:)``
/// - ``AABB/segmentIntersection(from:to:)``
/// - ``AABB/hasPoint(_:)``
/// - ``AABB/encloses(_:)``
///
/// ### Axis
///
/// - ``AABB/longestAxisSize``
/// - ``AABB/longestAxis``
/// - ``AABB/shortestAxisSize``
/// - ``AABB/shortestAxis``
///
/// ### Approximate Equality
///
/// - ``AABB/isApproximatelyEqual(to:)``
public struct AABB: Equatable, Hashable {
    /// The beginning corner.
    ///
    /// Typically has values lower than ``end``.
    public var position: Vector3
    
    // MARK: - Initializers
    
    /// The size from position to end.
    ///
    /// Typically, all components are positive.
    /// If the size is negative, you can use ``abs()`` to fix it.
    public var size: Vector3
    
    /// Creates a new AABB from the given position and size.
    public init(position: Vector3, size: Vector3) {
        self.position = position
        self.size = size
    }
    
    /// Creates a default-initialized `AABB` with default
    /// (zero) values of `position` and `size`.
    public init() {
        self.init(position: Vector3(), size: Vector3())
    }
}

// MARK: - Properties

extension AABB {
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
}

// MARK: Functions and variables

extension AABB {
    /// Returns the AABB with equivalent position and size,
    /// modified so that the most-negative corner
    /// is the origin and the size is positive
    public func abs() -> AABB {
        AABB(
            position: Vector3(
                position.x + min(size.x, 0),
                position.y + min(size.y, 0),
                position.z + min(size.z, 0)
            ),
            size: size.abs()
        )
    }
    
    /// Returns the AABB with equivalent position and size,
    /// modified so that the most-negative corner
    /// is the origin and the size is positive
    public mutating func formAbs() {
        self = abs()
    }
    
    /// The center of the AABB.
    ///
    /// The center is equal to `position + (size / 2)`.
    public var center: Vector3 {
        position + size * 0.5
    }
    
    /// The volume of the AABB.
    public var volume: FloatingPointType {
        size.x * size.y * size.z
    }
    
    /// A Boolean value indicating whether the `AABB` has a volume.
    ///
    /// This function returns `false` if the `AABB` is flat,
    /// empty, or has a negative size.
    public var hasVolume: Bool {
        size.x > 0 && size.y > 0 && size.z > 0
    }
    
    /// A Boolean value indicating whether the `AABB` has a surface or a length.
    ///
    /// This property is `false` if the `AABB` is empty (all components of size are zero or negative).
    public var hasSurface: Bool {
        size.x > 0 || size.y > 0 || size.z > 0
    }
    
    /// Returns `true` if the `AABB` contains a given point.
    ///
    /// Points on the faces of the `AABB` are considered included,
    /// though float-point precision errors may impact the accuracy of such checks.
    ///
    /// >note: This method is not reliable for `AABB` with a negative size.
    /// Use ``abs()`` to get a positive sized equivalent
    /// `AABB` to check for contained points.
    public func hasPoint(_ point: Vector3) -> Bool {
#if MATH_CHECKS
        if size.x < 0 || size.y < 0 || size.z < 0 {
            godotPrintError("AABB size is negative, this is not supported. Use abs() to get an AABB with a positive size.")
        }
#endif
        if point.x < position.x {
            return false
        }
        if point.y < position.y {
            return false
        }
        if point.z < position.z {
            return false
        }
        if point.x > position.x + size.x {
            return false
        }
        if point.y > position.y + size.y {
            return false
        }
        if point.z > position.z + size.z {
            return false
        }
        
        return true
    }
    
    /// Returns `true` if this `AABB` is approximately equal to another one.
    public func isApproximatelyEqual(to other: AABB) -> Bool {
        position.isApproximatelyEqual(to: other.position) &&
        size.isApproximatelyEqual(to: other.size)
    }
    
    /// A Boolean value indicating whether the `AABB` is finite.
    public var isFinite: Bool {
        position.isFinite &&
        size.isFinite
    }
    
    /// Returns `true` if the `AABB` completely encloses another one.
    public func encloses(_ other: AABB) -> Bool {
#if MATH_CHECKS
        if size.x < 0 || size.y < 0 || size.z < 0 || other.size.x < 0 || other.size.y < 0 || other.size.z < 0 {
            godotPrintError("AABB size is negative, this is not supported. Use .abs() to get an AABB with a positive size.")
        }
#endif
        let srcMin = position
        let srcMax = position + size
        let dstMin = other.position
        let dstMax = other.position + other.size
        
        return (
            (srcMin.x <= dstMin.x) &&
            (srcMax.x > dstMax.x) &&
            (srcMin.y <= dstMin.y) &&
            (srcMax.y > dstMax.y) &&
            (srcMin.z <= dstMin.z) &&
            (srcMax.z > dstMax.z)
        )
    }
    
    /// Returns `true` if this `AABB` overlaps with another one.
    public func intersects(_ other: AABB) -> Bool {
#if MATH_CHECKS
        if size.x < 0 || size.y < 0 || size.z < 0 || other.size.x < 0 || other.size.y < 0 || other.size.z < 0 {
            godotPrintError("AABB size is negative, this is not supported. Use abs() to get an AABB with a positive size.");
        }
#endif
        if position.x >= (other.position.x + other.size.x) {
            return false
        }
        if (position.x + size.x) <= other.position.x {
            return false
        }
        if position.y >= (other.position.y + other.size.y) {
            return false
        }
        if (position.y + size.y) <= other.position.y {
            return false
        }
        if position.z >= (other.position.z + other.size.z) {
            return false
        }
        if (position.z + size.z) <= other.position.z {
            return false
        }
        
        return true
    }
    
    /// Returns `true` if this `AABB` is on both sides of a given plane.
    public func intersects(_ plane: Plane) -> Bool {
        let points = (
            Vector3(position.x, position.y, position.z),
            Vector3(position.x, position.y, position.z + size.z),
            Vector3(position.x, position.y + size.y, position.z),
            Vector3(position.x, position.y + size.y, position.z + size.z),
            Vector3(position.x + size.x, position.y, position.z),
            Vector3(position.x + size.x, position.y, position.z + size.z),
            Vector3(position.x + size.x, position.y + size.y, position.z),
            Vector3(position.x + size.x, position.y + size.y, position.z + size.z)
        )

        var over = false
        var under = false
        
        if plane.distance(to: points.0) > 0 {
            over = true
        } else {
            under = true
        }
        if plane.distance(to: points.1) > 0 {
            over = true
        } else {
            under = true
        }
        if plane.distance(to: points.2) > 0 {
            over = true
        } else {
            under = true
        }
        if plane.distance(to: points.3) > 0 {
            over = true
        } else {
            under = true
        }
        if plane.distance(to: points.4) > 0 {
            over = true
        } else {
            under = true
        }
        if plane.distance(to: points.5) > 0 {
            over = true
        } else {
            under = true
        }
        if plane.distance(to: points.6) > 0 {
            over = true
        } else {
            under = true
        }
        if plane.distance(to: points.7) > 0 {
            over = true
        } else {
            under = true
        }
        
        return under && over
    }
    
    /// Returns the intersection between this `AABB` and another one.
    ///
    /// - Returns: The calculated intersection, or an empty `AABB` if it failed.
    public func intersection(with other: AABB) -> AABB {
#if MATH_CHECKS
        if size.x < 0 || size.y < 0 || size.z < 0 || other.size.x < 0 || other.size.y < 0 || other.size.z < 0 {
            godotPrintError("AABB size is negative, this is not supported. Use .abs() to get an AABB with a positive size.");
        }
#endif
        let srcMin = position
        let srcMax = position + size
        let dstMin = other.position
        let dstMax = other.position + other.size
        
        var min = Vector3()
        var max = Vector3()
        
        if (srcMin.x > dstMax.x || srcMax.x < dstMin.x) {
            return AABB()
        } else {
            min.x = (srcMin.x > dstMin.x) ? srcMin.x : dstMin.x
            max.x = (srcMax.x < dstMax.x) ? srcMax.x : dstMax.x
        }
        
        if (srcMin.y > dstMax.y || srcMax.y < dstMin.y) {
            return AABB()
        } else {
            min.y = (srcMin.y > dstMin.y) ? srcMin.y : dstMin.y
            max.y = (srcMax.y < dstMax.y) ? srcMax.y : dstMax.y
        }
        
        if (srcMin.z > dstMax.z || srcMax.z < dstMin.z) {
            return AABB()
        } else {
            min.z = (srcMin.z > dstMin.z) ? srcMin.z : dstMin.z
            max.z = (srcMax.z < dstMax.z) ? srcMax.z : dstMax.z
        }
        
        return AABB(position: min, size: max - min)
    }
    
    /// Replaces this `AABB` with the intersection between this `AABB` and another one.
    ///
    /// This `AABB` becomes empty if it failed.
    public mutating func formIntersection(with other: AABB) {
        self = self.intersection(with: other)
    }
    
    /// Returns a larger `AABB` that contains both this `AABB` and a given one.
    public func merged(with other: AABB) -> AABB {
        var copy = self
        copy.merge(with: other)
        return copy
    }
    
    /// Replaces this `AABB` with one that contains both this `AABB` and a given one.
    public mutating func merge(with other: AABB) {
#if MATH_CHECKS
        if size.x < 0 || size.y < 0 || size.z < 0 || other.size.x < 0 || other.size.y < 0 || other.size.z < 0 {
            godotPrintError("AABB size is negative, this is not supported. Use .abs() to get an AABB with a positive size.")
        }
#endif
        var beg1 = Vector3()
        var beg2 = Vector3()
        var end1 = Vector3()
        var end2 = Vector3()
        var min = Vector3()
        var max = Vector3()
        
        beg1 = position
        beg2 = other.position
        end1 = size + beg1
        end2 = other.size + beg2
        
        min.x = (beg1.x < beg2.x) ? beg1.x : beg2.x
        min.y = (beg1.y < beg2.y) ? beg1.y : beg2.y
        min.z = (beg1.z < beg2.z) ? beg1.z : beg2.z
        
        max.x = (end1.x > end2.x) ? end1.x : end2.x
        max.y = (end1.y > end2.y) ? end1.y : end2.y
        max.z = (end1.z > end2.z) ? end1.z : end2.z
        
        position = min
        size = max - min
    }
    
    /// Returns this `AABB` expanded to include a given point.
    ///
    /// ```swift
    /// // position (-3, 2, 0), size (1, 1, 1)
    /// let box = AABB(
    ///     position: Vector3(x: -3, y: 2, z: 0),
    ///     size: Vector3(x: 1, y: 1, z: 1)
    /// )
    /// // position (-3, -1, 0), size (3, 4, 2)
    /// // so we fit both the original AABB and Vector3(0, -1, 2)
    /// let box2 = box.expanded(to: Vector3(0, -1, 2))
    /// ```
    public func expanded(to point: Vector3) -> AABB {
        var copy = self
        copy.expand(to: point)
        return copy
    }
    
    /// Expands this `AABB` to include a given point.
    ///
    /// ```swift
    /// // position (-3, 2, 0), size (1, 1, 1)
    /// let box = AABB(
    ///     position: Vector3(x: -3, y: 2, z: 0),
    ///     size: Vector3(x: 1, y: 1, z: 1)
    /// )
    /// // position (-3, -1, 0), size (3, 4, 2)
    /// // so we fit both the original AABB and Vector3(0, -1, 2)
    /// box.expand(to: Vector3(0, -1, 2))
    /// ```
    public mutating func expand(to point: Vector3) {
#if MATH_CHECKS
        if size.x < 0 || size.y < 0 || size.z < 0 {
            godotPrintError("AABB size is negative, this is not supported. Use .abs() to get an AABB with a positive size.")
        }
#endif
        var begin = position
        var end = position + size
        
        if point.x < begin.x {
            begin.x = point.x
        }
        if point.y < begin.y {
            begin.y = point.y
        }
        if point.z < begin.z {
            begin.z = point.z
        }
        
        if point.x > end.x {
            end.x = point.x
        }
        if point.y > end.y {
            end.y = point.y
        }
        if point.z > end.z {
            end.z = point.z
        }
        
        position = begin
        size = end - begin
    }
    
    /// Returns this `AABB` grown a given number of units towards all the sides.
    public func grown(by amount: FloatingPointType) -> AABB {
        var copy = self
        copy.grow(by: amount)
        return copy
    }
    
    /// Grows this `AABB` a given number of units towards all the sides.
    public mutating func grow(by amount: FloatingPointType) {
        position.x -= amount
        position.y -= amount
        position.z -= amount
        size.x += 2.0 * amount
        size.y += 2.0 * amount
        size.z += 2.0 * amount
    }
    
    /// Returns the vertex of the `AABB` that's the farthest in a given direction.
    ///
    /// This point is commonly known as the
    /// support point in collision detection algorithms.
    public func support(normal: Vector3) -> Vector3 {
        let halfExtents = size * 0.5
        let ofs = position + halfExtents

        return Vector3(
            (normal.x > 0) ? halfExtents.x : -halfExtents.x,
            (normal.y > 0) ? halfExtents.y : -halfExtents.y,
            (normal.z > 0) ? halfExtents.z : -halfExtents.z
        ) + ofs
    }
    
    /// The longest axis of the `AABB`.
    public var longestAxis: Axis3D {
        var axis = Axis3D.x
        var maxSize = size.x

        if size.y > maxSize {
            axis = .y
            maxSize = size.y
        }

        if size.z > maxSize {
            axis = .z
        }

        return axis
    }
    
    /// The scalar length of the longest axis of the `AABB`.
    public var longestAxisSize: FloatingPointType {
        var maxSize = size.x

        if size.y > maxSize {
            maxSize = size.y
        }

        if size.z > maxSize {
            maxSize = size.z
        }

        return maxSize
    }
    
    /// The shortest axis of the `AABB`.
    public var shortestAxis: Axis3D {
        var axis = Axis3D.x
        var minSize = size.x

        if size.y < minSize {
            axis = .y
            minSize = size.y
        }

        if size.z < minSize {
            axis = .z
        }

        return axis
    }
    
    /// The scalar length of the shortest axis of the `AABB`.
    public var shortestAxisSize: FloatingPointType {
        var maxSize = size.x

        if size.y < maxSize {
            maxSize = size.y
        }

        if size.z < maxSize {
            maxSize = size.z
        }

        return maxSize
    }
    
    /// Returns the position of the endpoint at the given index of the `AABB` in space.
    public func endpoint(at index: Int) -> Vector3 {
        switch index {
        case 0:
            return Vector3(position.x, position.y, position.z)
        case 1:
            return Vector3(position.x, position.y, position.z + size.z)
        case 2:
            return Vector3(position.x, position.y + size.y, position.z)
        case 3:
            return Vector3(position.x, position.y + size.y, position.z + size.z)
        case 4:
            return Vector3(position.x + size.x, position.y, position.z)
        case 5:
            return Vector3(position.x + size.x, position.y, position.z + size.z)
        case 6:
            return Vector3(position.x + size.x, position.y + size.y, position.z)
        case 7:
            return Vector3(position.x + size.x, position.y + size.y, position.z + size.z)
        default: fatalError("Attempting to retrieve endpoint \(index) of AABB.")
        }
    }
    
    /// Returns the point of intersection between two points with this `AABB`, if exists.
    public func segmentIntersection(from fromPoint: Vector3, to toPoint: Vector3) -> Vector3? {
#if MATH_CHECKS
        if size.x < 0 || size.y < 0 || size.z < 0 {
            godotPrintError("AABB size is negative, this is not supported. Use .abs() to get an AABB with a positive size.")
        }
#endif
        var min: FloatingPointType = 0, max: FloatingPointType = 1
        
        var i = 0
        while i < 3 {
            let segFrom = fromPoint[i]
            let segTo = toPoint[i]
            let boxBegin = position[i]
            let boxEnd = boxBegin + size[i]
            var cmin: FloatingPointType = 0, cmax: FloatingPointType = 0
            
            if segFrom < segTo {
                if segFrom > boxEnd || segTo < boxBegin {
                    return nil
                }
                let length = segTo - segFrom
                cmin = (segFrom < boxBegin) ? ((boxBegin - segFrom) / length) : 0
                cmax = (segTo > boxEnd) ? ((boxEnd - segFrom) / length) : 1
            } else {
                if segTo > boxEnd || segFrom < boxBegin {
                    return nil
                }
                let length = segTo - segFrom
                cmin = (segFrom > boxEnd) ? (boxEnd - segFrom) / length : 0
                cmax = (segTo < boxBegin) ? (boxBegin - segFrom) / length : 1
            }
            
            if cmin > min {
                min = cmin
            }
            if cmax < max {
                max = cmax
            }
            if max < min {
                return nil
            }
            
            i += 1
        }
        
        let rel = toPoint - fromPoint
        
        return fromPoint + rel * min
    }
    
    /// Returns the point of intersection of the given ray with this `AABB`, if exists.
    ///
    /// Ray length is infinite.
    public func rayIntersection(from fromPoint: Vector3, dir: Vector3) -> Vector3? {
#if MATH_CHECKS
        if size.x < 0 || size.y < 0 || size.z < 0 {
            godotPrintError("AABB size is negative, this is not supported. Use .abs() to get an AABB with a positive size.")
        }
#endif
        var c1 = Vector3(), c2 = Vector3()
        let end = position + size
        var near: FloatingPointType = -1e20
        var far: FloatingPointType = 1e20
        
        var i = 0
        while i < 3 {
            if dir[i] == 0 {
                if (fromPoint[i] < position[i]) || (fromPoint[i] > end[i]) {
                    return nil
                }
            } else { // ray not parallel to planes in this direction
                c1[i] = (position[i] - fromPoint[i]) / dir[i]
                c2[i] = (end[i] - fromPoint[i]) / dir[i]
                
                if c1[i] > c2[i] {
                    swap(&c1, &c2)
                }
                if c1[i] > near {
                    near = c1[i]
                }
                if c2[i] < far {
                    far = c2[i]
                }
                if (near > far) || (far < 0) {
                    return nil
                }
            }
            
            i += 1
        }
        
        return c1
    }
}

// MARK: - Codable

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
        let positionX = try container.decode(FloatingPointType.self)
        let positionY = try container.decode(FloatingPointType.self)
        let positionZ = try container.decode(FloatingPointType.self)
        let sizeX = try container.decode(FloatingPointType.self)
        let sizeY = try container.decode(FloatingPointType.self)
        let sizeZ = try container.decode(FloatingPointType.self)
        
        self.init(
            position: Vector3(x: positionX, y: positionY, z: positionZ),
            size: Vector3(x: sizeX, y: sizeY, z: sizeZ)
        )
    }
}

// MARK: - CustomStringConvertible

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

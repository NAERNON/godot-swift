
public struct AABB {
    public var position: Vector3
    public var size: Vector3
    
    public init(position: Vector3, size: Vector3) {
        self.position = position
        self.size = size
    }
    
    public init() {
        self.init(position: Vector3(), size: Vector3())
    }
    
    // MARK: Operators
    
    public static func == (lhs: AABB, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: AABB) -> Bool {
        Self._operatorEqual(rhs, lhs)
    }
    
    public static func * (lhs: AABB, rhs: Transform3D) -> AABB {
        Self._operatorMultiply(lhs, rhs)
    }
    
    // MARK: Methods & variables
    
    public var abs: AABB {
        _abs()
    }
    
    public var center: Vector3 {
        _center()
    }
    
    public var volume: Real {
        _volume()
    }
    
    public var hasVolume: Bool {
        _hasVolume()
    }
    
    public var hasSurface: Bool {
        _hasSurface()
    }
    
    public func hasPoint(_ point: Vector3) -> Bool {
        _hasPoint(point)
    }
    
    public func isApproximatelyEqual(to other: AABB) -> Bool {
        _isEqualApprox(aabb: other)
    }
    
    public var isFinite: Bool {
        _isFinite()
    }
    
    public func intersects(_ other: AABB) -> Bool {
        _intersects(with: other)
    }
    
    public func encloses(_ other: AABB) -> Bool {
        _encloses(with: other)
    }
    
    public func intersects(_ plane: Plane) -> Bool {
        _intersectsPlane(plane)
    }
    
    public func intersection(with other: AABB) -> AABB {
        _intersection(with: other)
    }
    
    public func merged(with other: AABB) -> AABB {
        _merge(with: other)
    }
    
    public func expand(to point: Vector3) -> AABB {
        _expand(toPoint: point)
    }
    
    public func grow(by amount: Real) -> AABB {
        _grow(by: amount)
    }
    
    public func support(dir: Vector3) -> Vector3 {
        _support(dir: dir)
    }
    
    public var longestAxis: Vector3 {
        _longestAxis()
    }
    
    public var longestAxisIndex: Int {
        _longestAxisIndex()
    }
    
    public var longestAxisSize: Real {
        _longestAxisSize()
    }
    
    public var shortestAxis: Vector3 {
        _shortestAxis()
    }
    
    public var shortestAxisIndex: Int {
        _shortestAxisIndex()
    }
    
    public var shortestAxisSize: Real {
        _shortestAxisSize()
    }
    
    public func endpoint(index: Int) -> Vector3 {
        _endpoint(idx: index)
    }
    
    public func intersectsSegment(from fromPoint: Vector3, to toPoint: Vector3) -> Variant {
        _intersectsSegment(from: fromPoint, to: toPoint)
    }
    
    public func intersectsRay(from fromPoint: Vector3, dir: Vector3) -> Variant {
        _intersectsRay(from: fromPoint, dir: dir)
    }
}

// MARK: - Extensions

extension AABB: Equatable, Hashable {}

extension AABB: Codable {
    public func encode(to encoder: Encoder) throws {
        try [position, size].encode(to: encoder)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        position = try container.decode(Vector3.self)
        size = try container.decode(Vector3.self)
    }
}

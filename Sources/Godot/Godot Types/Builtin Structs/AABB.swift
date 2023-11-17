
public struct AABB {
    public var position: Vector3
    public var size: Vector3
    
    public init(position: Vector3, size: Vector3) {
        self.position = position
        self.size = size
    }
}

extension AABB {
    // MARK: Constructors
    
    public init() {
        self.init(position: Vector3(), size: Vector3())
    }
    
    // MARK: Operators
    
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
        Variant(storage: _intersectsSegment(from: fromPoint, to: toPoint))
    }
    
    public func intersectsRay(from fromPoint: Vector3, dir: Vector3) -> Variant {
        Variant(storage: _intersectsRay(from: fromPoint, dir: dir))
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
        let positionX = try container.decode(Real.self)
        let positionY = try container.decode(Real.self)
        let positionZ = try container.decode(Real.self)
        let sizeX = try container.decode(Real.self)
        let sizeY = try container.decode(Real.self)
        let sizeZ = try container.decode(Real.self)
        
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

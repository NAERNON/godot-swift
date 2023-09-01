
public struct Rect2 {
    public var position: Vector2
    public var size: Vector2
    
    public init(position: Vector2, size: Vector2) {
        self.position = position
        self.size = size
    }
    
    public init<T>(x: T, y: T, width: T, height: T) where T : BinaryFloatingPoint {
        self.init(position: Vector2(x: x, y: y),
                  size: Vector2(x: width, y: height))
    }
    
    public init<T>(x: T, y: T, width: T, height: T) where T : BinaryInteger {
        self.init(position: Vector2(x: x, y: y),
                  size: Vector2(x: width, y: height))
    }
    
    public init(_ other: Rect2i) {
        self.init(position: Vector2(other.position), size: Vector2(other.size))
    }
    
    public init() {
        self.init(position: Vector2(), size: Vector2())
    }
    
    // MARK: Operators
    
    public static func == (lhs: Rect2, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: Rect2) -> Bool {
        Self._operatorEqual(rhs, lhs)
    }
    
    public static func * (lhs: Rect2, rhs: Transform2D) -> Rect2 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    // MARK: Methods & variables
    
    public var center: Vector2 {
        _center()
    }
    
    public var area: Real {
        _area()
    }
    
    public var hasArea: Bool {
        _hasArea()
    }
    
    public func hasPoint(_ point: Vector2) -> Bool {
        _hasPoint(point)
    }
    
    public func isApproximatelyEqual(to other: Rect2) -> Bool {
        _isEqualApprox(rect: other)
    }
    
    public var isFinite: Bool {
        _isFinite()
    }
    
    public func intersects(_ other: Rect2, includeBorders: Bool = false) -> Bool {
        _intersects(b: other, includeBorders: includeBorders)
    }
    
    public func encloses(_ other: Rect2) -> Bool {
        _encloses(other)
    }
    
    public func intersection(with other: Rect2) -> Rect2 {
        _intersection(other)
    }
    
    public func merged(with other: Rect2) -> Rect2 {
        _merge(other)
    }
    
    public func expand(to point: Vector2) -> Rect2 {
        _expand(to: point)
    }
    
    public func grow(by amount: Real) -> Rect2 {
        _grow(amount: amount)
    }
    
    public func grow(by amount: Real, side: Int) -> Rect2 {
        _growSide(side, amount: amount)
    }
    
    public func grow(left: Real, top: Real, right: Real, bottom: Real) -> Rect2 {
        _growIndividual(left: left, top: top, right: right, bottom: bottom)
    }
    
    public var abs: Rect2 {
        _abs()
    }
}

// MARK: - Extensions

extension Rect2: Equatable, Hashable {}

extension Rect2: Codable {
    public func encode(to encoder: Encoder) throws {
        try [position, size].encode(to: encoder)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        position = try container.decode(Vector2.self)
        size = try container.decode(Vector2.self)
    }
}

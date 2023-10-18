
public struct Rect2i {
    public var position: Vector2i
    public var size: Vector2i
    
    public init(position: Vector2i, size: Vector2i) {
        self.position = position
        self.size = size
    }
}

extension Rect2i {
    // MARK: Constructors
    
    public init<T>(x: T, y: T, width: T, height: T) where T : BinaryFloatingPoint {
        self.init(position: Vector2i(x: x, y: y),
                  size: Vector2i(x: width, y: height))
    }
    
    public init<T>(x: T, y: T, width: T, height: T) where T : BinaryInteger {
        self.init(position: Vector2i(x: x, y: y),
                  size: Vector2i(x: width, y: height))
    }
    
    public init(_ other: Rect2) {
        self.init(position: Vector2i(other.position), size: Vector2i(other.size))
    }
    
    public init() {
        self.init(position: Vector2i(), size: Vector2i())
    }
    
    // MARK: Methods & variables
    
    public var center: Vector2i {
        _center()
    }
    
    public var area: Int {
        _area()
    }
    
    public var hasArea: Bool {
        _hasArea()
    }
    
    public func hasPoint(_ point: Vector2i) -> Bool {
        _hasPoint(point)
    }
    
    public func intersects(_ other: Rect2i) -> Bool {
        _intersects(other)
    }
    
    public func encloses(_ other: Rect2i) -> Bool {
        _encloses(other)
    }
    
    public func intersection(with other: Rect2i) -> Rect2i {
        _intersection(other)
    }
    
    public func merged(with other: Rect2i) -> Rect2i {
        _merge(other)
    }
    
    public func expand(to point: Vector2i) -> Rect2i {
        _expand(to: point)
    }
    
    public func grow(by amount: Int) -> Rect2i {
        _grow(amount: amount)
    }
    
    public func grow(by amount: Int, side: Int) -> Rect2i {
        _growSide(side, amount: amount)
    }
    
    public func grow(left: Int, top: Int, right: Int, bottom: Int) -> Rect2i {
        _growIndividual(left: left, top: top, right: right, bottom: bottom)
    }
    
    public var abs: Rect2i {
        _abs()
    }
}

extension Rect2i: Equatable, Hashable {}

extension Rect2i: Codable {
    public func encode(to encoder: Encoder) throws {
        var unkeyedContainer = encoder.unkeyedContainer()
        try unkeyedContainer.encode(position)
        try unkeyedContainer.encode(size)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        position = try container.decode(Vector2i.self)
        size = try container.decode(Vector2i.self)
    }
}

extension Rect2i: CustomStringConvertible {
    public var description: String {
        "(\(position.x), \(position.y), \(size.x), \(size.y))"
    }
}

extension Rect2i: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Rect2i(x: \(position.x), y: \(position.y), width: \(size.x), height: \(size.y))"
    }
}

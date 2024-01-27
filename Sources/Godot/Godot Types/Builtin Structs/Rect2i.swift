
/// A 2D axis-aligned bounding box using integer coordinates.
///
/// The `Rect2I` is defined by its position and size,
/// which are ``Vector2I``. Because it does not rotate,
/// it is frequently used for fast overlap tests (see intersects).
///
/// For floating-point coordinates, see ``Rect2``.
///
/// >note: Negative values for size are not supported. With negative size,
/// most `Rect2I` methods do not work correctly.
/// Use ``abs`` to get an equivalent `Rect2I` with a non-negative size.
///
/// ### Use as Boolean
///
/// In a boolean context, a `Rect2I` evaluates to `false` if both position
/// and size are zero (equal to `Vector2I`'s ``Vector2I/zero``).
/// Otherwise, it always evaluates to `true`.
///
/// ## Topics
///
/// ### Creating Rect2I
///
/// - ``init(position:size:)``
/// - ``init(x:y:width:height:)-3weud``
/// - ``init(x:y:width:height:)-2bbn1``
/// - ``init(_:)``
/// - ``init()``
///
/// ### Geometric Properties
///
/// - ``position``
/// - ``size``
/// - ``end``
///
/// - ``center``
/// - ``area``
/// - ``hasArea``
/// - ``hasPoint(_:)``
/// - ``intersects(_:)``
/// - ``intersection(with:)``
/// - ``encloses(_:)``
///
/// ### Transformation
///
/// - ``abs``
/// - ``expand(to:)``
/// - ``merged(with:)``
///
/// ### Growing Rect2I
///
/// - ``grow(by:)``
/// - ``grow(by:side:)``
/// - ``grow(by:sides:)``
/// - ``grow(left:top:right:bottom:)``
public struct Rect2I {
    /// The origin point.
    ///
    /// This is usually the top-left corner of the rectangle.
    public var position: Vector2I
    
    /// The rectangle's width and height, starting from position.
    ///
    /// Setting this value also affects the end point.
    ///
    /// >note: It's recommended setting the width and height
    /// to non-negative values, as most methods in Godot assume
    /// that the position is the top-left corner, and the end is the
    /// bottom-right corner.
    /// To get an equivalent rectangle with non-negative size, use ``abs``.
    public var size: Vector2I
    
    /// Creates a `Rect2I` by position and size.
    public init(position: Vector2I, size: Vector2I) {
        self.position = position
        self.size = size
    }
}

extension Rect2I {
    // MARK: Constructors
    
    /// Creates a `Rect2I` by setting its position to `(x, y)`,
    /// and its size to `(width, height)`.
    public init<T>(x: T, y: T, width: T, height: T) where T : BinaryFloatingPoint {
        self.init(position: Vector2I(x: x, y: y),
                  size: Vector2I(x: width, y: height))
    }
    
    /// Creates a `Rect2I` by setting its position to `(x, y)`,
    /// and its size to `(width, height)`.
    public init<T>(x: T, y: T, width: T, height: T) where T : BinaryInteger {
        self.init(position: Vector2I(x: x, y: y),
                  size: Vector2I(x: width, y: height))
    }
    
    /// Creates a `Rect2I` from a `Rect2`.
    ///
    /// The floating-point coordinates are truncated.
    public init(_ other: Rect2) {
        self.init(position: Vector2I(other.position), size: Vector2I(other.size))
    }
    
    /// Creates a `Rect2I` with its position and size set to zero.
    public init() {
        self.init(position: Vector2I(), size: Vector2I())
    }
    
    // MARK: Methods & variables
    
    /// The ending point.
    ///
    /// This is usually the bottom-right corner of the rectangle,
    /// and is equivalent to `position + size`.
    /// Setting this point affects the ``size``.
    public var end: Vector2I {
        get {
            position + size
        }
        set(newValue) {
            size = newValue - position
        }
    }
    
    /// The center point of the rectangle.
    ///
    /// This is the same as `position + (size / 2)`.
    ///
    /// >note: If the size is odd, the result will be rounded towards position.
    public var center: Vector2I {
        _center()
    }
    
    /// The rectangle's area.
    ///
    /// This is equivalent to `size.x * size.y`.
    ///
    /// ## See Also
    ///
    /// - ``hasArea``
    public var area: Int {
        _area()
    }
    
    /// A Boolean value indicating whether the rectangle has positive width and height.
    ///
    /// ## See Also
    ///
    /// - ``area``
    public var hasArea: Bool {
        _hasArea()
    }
    
    /// Returns `true` if the rectangle contains the given point.
    ///
    /// By convention, points on the right and bottom edges are not included.
    ///
    /// >note: This method is not reliable for `Rect2I` with a negative size.
    /// Use ``abs`` first to get a valid rectangle.
    public func hasPoint(_ point: Vector2I) -> Bool {
        _hasPoint(point)
    }
    
    /// Returns `true` if the rectangle overlaps with another one.
    ///
    /// The edges of both rectangles are excluded.
    ///
    /// ## See Also
    ///
    /// - ``intersection(with:)``
    public func intersects(_ other: Rect2I) -> Bool {
        _intersects(other)
    }
    
    /// Returns `true` if the rectangle completely encloses another one.
    public func encloses(_ other: Rect2I) -> Bool {
        _encloses(other)
    }
    
    /// Returns the intersection between the rectangle and another one.
    ///
    /// If the rectangles do not intersect, returns an empty `Rect2I`.
    ///
    /// ```swift
    /// let rect1 = Rect2I(x: 0, y: 0, width: 5, height: 10)
    /// let rect2 = Rect2I(x: 2, y: 0, width: 8, height: 4)
    ///
    /// print(rect1.intersection(with: rect2))
    /// // Prints (2, 0, 3, 4)
    /// ```
    ///
    /// ## See Also
    ///
    /// - ``intersects(_:)``
    public func intersection(with other: Rect2I) -> Rect2I {
        _intersection(other)
    }
    
    /// Returns a `Rect2I` that encloses both the
    /// rectangle and another one around the edges.
    ///
    /// ## See Also
    ///
    /// - ``encloses(_:)``
    public func merged(with other: Rect2I) -> Rect2I {
        _merge(other)
    }
    
    /// Returns the rectangle expanded to align the edges with the given point, if necessary.
    ///
    /// ```swift
    /// let rect = Rect2I(x: 0, y: 0, width: 5, height: 2)
    ///
    /// print(rect.expand(to: Vector2I(x: 10, y: 0)))
    /// // Prints (0, 0, 10, 2)
    /// print(rect.expand(to: Vector2I(x: -5, y: 5)))
    /// // Prints (-5, 0, 10, 5)
    /// ```
    public func expand(to point: Vector2I) -> Rect2I {
        _expand(to: point)
    }
    
    /// The rectangle extended on all sides by the given amount.
    ///
    /// A negative amount shrinks the rectangle instead.
    ///
    /// ```swift
    /// print(Rect2I(x: 4, y: 4, width: 8, height: 8).grow(by: 4))
    /// // Prints (0, 0, 16, 16)
    /// print(Rect2I(x: 0, y: 0, width: 8, height: 4).grow(by: 2))
    /// // Prints (-2, -2, 12, 8)
    /// ```
    public func grow(by amount: Int) -> Rect2I {
        _grow(amount: amount)
    }
    
    /// The rectangle with its side extended by the given amount.
    ///
    /// A negative amount shrinks the rectangle, instead.
    public func grow(by amount: Int, side: Side) -> Rect2I {
        _growSide(Int(side.rawValue), amount: amount)
    }
    
    /// The rectangle with its sides extended by the given amount.
    ///
    /// A negative amount shrinks the rectangle, instead.
    public func grow(by amount: Int, sides: Side.Set) -> Rect2I {
        var copy = self
        
        if sides.contains(.top) {
            copy = _growSide(Int(Side.top.rawValue), amount: amount)
        }
        if sides.contains(.bottom) {
            copy = _growSide(Int(Side.bottom.rawValue), amount: amount)
        }
        if sides.contains(.left) {
            copy = _growSide(Int(Side.left.rawValue), amount: amount)
        }
        if sides.contains(.right) {
            copy = _growSide(Int(Side.right.rawValue), amount: amount)
        }
        
        return copy
    }
    
    /// The rectangle with its left, top, right, and bottom sides extended by the given amounts.
    ///
    /// Negative values shrink the sides, instead.
    public func grow(left: Int, top: Int, right: Int, bottom: Int) -> Rect2I {
        _growIndividual(left: left, top: top, right: right, bottom: bottom)
    }
    
    /// A `Rect2I` equivalent to the rectangle, with non-negative
    /// width and height values, and position at the top-left corner.
    ///
    /// ```swift
    /// let rect = Rect2I(x: 25, y: 25, width: -100, height: -50)
    /// print(rect.abs)
    /// // prints (-75, -25, 100, 50).
    /// ```
    ///
    /// >note: It's recommended to use this method when size is negative,
    /// as most other methods in Godot assume that the position
    /// is the top-left corner, and the end is the bottom-right corner.
    public var abs: Rect2I {
        _abs()
    }
}

extension Rect2I: Equatable, Hashable {}

extension Rect2I: Codable {
    public func encode(to encoder: Encoder) throws {
        var unkeyedContainer = encoder.unkeyedContainer()
        try unkeyedContainer.encode(position)
        try unkeyedContainer.encode(size)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        position = try container.decode(Vector2I.self)
        size = try container.decode(Vector2I.self)
    }
}

extension Rect2I: CustomStringConvertible {
    public var description: String {
        "(\(position.x), \(position.y), \(size.x), \(size.y))"
    }
}

extension Rect2I: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Rect2I(x: \(position.x), y: \(position.y), width: \(size.x), height: \(size.y))"
    }
}

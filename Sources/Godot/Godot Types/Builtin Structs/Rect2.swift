
/// A 2D axis-aligned bounding box using floating-point coordinates.
///
/// The `Rect2` is defined by its position and size, which are ``Vector2``.
/// It is frequently used for fast overlap tests (see ``intersects(_:includeBorders:)``).
/// Although `Rect2` itself is axis-aligned, it can be combined
/// with ``Transform2D`` to represent a rotated or skewed rectangle.
///
/// For integer coordinates, use ``Rect2i``.
/// The 3D equivalent to `Rect2` is ``AABB``.
///
/// >note: Negative values for size are not supported. With negative size,
/// most `Rect2` methods do not work correctly.
/// Use ``abs`` to get an equivalent `Rect2` with a non-negative size.
///
/// ### Use as Boolean
///
/// In a Boolean context, a `Rect2` evaluates to `false`
/// if both position and size are zero (equal to `Vector2`'s ``Vector2/zero``).
/// Otherwise, it always evaluates to `true`.
///
/// ## Topics
///
/// ### Creating Rect2
///
/// - ``init(position:size:)``
/// - ``init(x:y:width:height:)-556mq``
/// - ``init(x:y:width:height:)-3zk6i``
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
/// - ``isFinite``
/// - ``hasPoint(_:)``
/// - ``intersects(_:includeBorders:)``
/// - ``intersection(with:)``
/// - ``encloses(_:)``
///
/// ### Transformation
///
/// - ``abs``
/// - ``expand(to:)``
/// - ``merged(with:)``
///
/// ### Growing Rect2
///
/// - ``grow(by:)``
/// - ``grow(by:side:)``
/// - ``grow(by:sides:)``
/// - ``grow(left:top:right:bottom:)``
public struct Rect2 {
    /// The origin point.
    ///
    /// This is usually the top-left corner of the rectangle.
    public var position: Vector2
    
    /// The rectangle's width and height, starting from position.
    ///
    /// Setting this value also affects the ``end`` point.
    ///
    /// >note: It's recommended setting the width and height to non-negative
    /// values, as most methods in Godot assume that the position
    /// is the top-left corner, and the end is the bottom-right corner.
    /// To get an equivalent rectangle with non-negative size, use ``abs``.
    public var size: Vector2
    
    /// Creates a `Rect2` by position and size.
    public init(position: Vector2, size: Vector2) {
        self.position = position
        self.size = size
    }
}

extension Rect2 {
    // MARK: Constructors
    
    /// Creates a `Rect2` by setting its position to `(x, y)`,
    /// and its size to `(width, height)`.
    public init<T>(x: T, y: T, width: T, height: T) where T : BinaryFloatingPoint {
        self.init(position: Vector2(x: x, y: y),
                  size: Vector2(x: width, y: height))
    }
    
    /// Creates a `Rect2` by setting its position to `(x, y)`,
    /// and its size to `(width, height)`.
    public init<T>(x: T, y: T, width: T, height: T) where T : BinaryInteger {
        self.init(position: Vector2(x: x, y: y),
                  size: Vector2(x: width, y: height))
    }
    
    /// Creates a `Rect2` from a `Rect2i`.
    public init(_ other: Rect2i) {
        self.init(position: Vector2(other.position), size: Vector2(other.size))
    }
    
    /// Creates a `Rect2` with its position and size set to zero.
    public init() {
        self.init(position: Vector2(), size: Vector2())
    }
    
    // MARK: Operators
    
    /// Inversely transforms (multiplies) the `Rect2` by the given transformation matrix.
    ///
    /// This operator assumes that the transformation basis is orthonormal (i.e. rotation/reflection is fine, scaling/skew is not).
    ///
    /// `rect * transform` is equivalent to `transform.inverted * rect`.
    /// See `Transform2D`'s ``Transform2D/inverted``.
    ///
    /// For transforming by inverse of an affine transformation
    /// (e.g. with scaling) `transform.affineInverted * rect`
    /// can be used instead.
    /// See `Transform2D`'s ``Transform2D/affineInverted``.
    public static func * (lhs: Rect2, rhs: Transform2D) -> Rect2 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    // MARK: Methods & variables
    
    /// The ending point.
    ///
    /// This is usually the bottom-right corner of the rectangle,
    /// and is equivalent to `position + size`.
    ///
    /// Setting this point affects the ``size``.
    public var end: Vector2 {
        get {
            position + size
        }
        set(newValue) {
            size = newValue - position
        }
    }
    
    /// The center point of the rectangle.
    ///
    /// This is the same as `position + (size / 2.0)`.
    public var center: Vector2 {
        _center()
    }
    
    /// The rectangle's area.
    ///
    /// This is equivalent to `size.x * size.y`.
    ///
    /// ## See Also
    ///
    /// - ``hasArea``
    public var area: Scalar {
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
    /// >note: This method is not reliable for `Rect2` with a negative size.
    /// Use ``abs`` first to get a valid rectangle.
    public func hasPoint(_ point: Vector2) -> Bool {
        _hasPoint(point)
    }
    
    /// Returns `true` if the rectangle is approximately equal to another one.
    public func isApproximatelyEqual(to other: Rect2) -> Bool {
        _isEqualApprox(rect: other)
    }
    
    /// A Boolean value indicating whether the rectangle's values are finite.
    public var isFinite: Bool {
        _isFinite()
    }
    
    /// Returns `true` if the rectangle overlaps with another one.
    ///
    /// - Parameters:
    ///   - other: The other rectangle to test intersection with.
    ///   - includeBorders: A Boolean value indicating whether
    ///   the edges of both rectangles are excluded.
    ///
    /// ## See Also
    ///
    /// - ``intersection(with:)``
    public func intersects(_ other: Rect2, includeBorders: Bool = false) -> Bool {
        _intersects(b: other, includeBorders: includeBorders)
    }
    
    /// Returns `true` if the rectangle completely encloses another one.
    public func encloses(_ other: Rect2) -> Bool {
        _encloses(other)
    }
    
    /// Returns the intersection between the rectangle and another one.
    ///
    /// If the rectangles do not intersect, returns an empty `Rect2`.
    ///
    /// ```swift
    /// let rect1 = Rect2(x: 0, y: 0, width: 5, height: 10)
    /// let rect2 = Rect2(x: 2, y: 0, width: 8, height: 4)
    ///
    /// print(rect1.intersection(with: rect2))
    /// // Prints (2, 0, 3, 4)
    /// ```
    ///
    /// ## See Also
    ///
    /// - ``intersects(_:includeBorders:)``
    public func intersection(with other: Rect2) -> Rect2 {
        _intersection(other)
    }
    
    /// Returns a `Rect2` that encloses both the
    /// rectangle and another one around the edges.
    ///
    /// ## See Also
    ///
    /// - ``encloses(_:)``
    public func merged(with other: Rect2) -> Rect2 {
        _merge(other)
    }
    
    /// Returns the rectangle expanded to align the edges with the given point, if necessary.
    ///
    /// ```swift
    /// let rect = Rect2(x: 0, y: 0, width: 5, height: 2)
    ///
    /// print(rect.expand(to: Vector2(x: 10, y: 0)))
    /// // Prints (0, 0, 10, 2)
    /// print(rect.expand(to: Vector2(x: -5, y: 5)))
    /// // Prints (-5, 0, 10, 5)
    /// ```
    public func expand(to point: Vector2) -> Rect2 {
        _expand(to: point)
    }
    
    /// The rectangle extended on all sides by the given amount.
    ///
    /// A negative amount shrinks the rectangle instead.
    ///
    /// ```swift
    /// print(Rect2(x: 4, y: 4, width: 8, height: 8).grow(by: 4))
    /// // Prints (0, 0, 16, 16)
    /// print(Rect2(x: 0, y: 0, width: 8, height: 4).grow(by: 2))
    /// // Prints (-2, -2, 12, 8)
    /// ```
    public func grow(by amount: Scalar) -> Rect2 {
        _grow(amount: amount)
    }
    
    /// The rectangle with its side extended by the given amount.
    ///
    /// A negative amount shrinks the rectangle, instead.
    public func grow(by amount: Scalar, side: Side) -> Rect2 {
        _growSide(Int(side.rawValue), amount: amount)
    }
    
    /// The rectangle with its sides extended by the given amount.
    ///
    /// A negative amount shrinks the rectangle, instead.
    public func grow(by amount: Scalar, sides: Side.Set) -> Rect2 {
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
    public func grow(left: Scalar, top: Scalar, right: Scalar, bottom: Scalar) -> Rect2 {
        _growIndividual(left: left, top: top, right: right, bottom: bottom)
    }
    
    /// A `Rect2` equivalent to the rectangle, with non-negative
    /// width and height values, and position at the top-left corner.
    ///
    /// ```swift
    /// let rect = Rect2(x: 25, y: 25, width: -100, height: -50)
    /// print(rect.abs)
    /// // prints (-75, -25, 100, 50).
    /// ```
    ///
    /// >note: It's recommended to use this method when size is negative,
    /// as most other methods in Godot assume that the position
    /// is the top-left corner, and the end is the bottom-right corner.
    public var abs: Rect2 {
        _abs()
    }
}

extension Rect2: Equatable, Hashable {}

extension Rect2: Codable {
    public func encode(to encoder: Encoder) throws {
        var unkeyedContainer = encoder.unkeyedContainer()
        try unkeyedContainer.encode(position)
        try unkeyedContainer.encode(size)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        position = try container.decode(Vector2.self)
        size = try container.decode(Vector2.self)
    }
}

extension Rect2: CustomStringConvertible {
    public var description: String {
        "(\(position.x), \(position.y), \(size.x), \(size.y))"
    }
}

extension Rect2: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Rect2(x: \(position.x), y: \(position.y), width: \(size.x), height: \(size.y))"
    }
}

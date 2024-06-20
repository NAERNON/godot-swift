
/// A 2D axis-aligned bounding box using floating-point coordinates.
///
/// The `Rect2` is defined by its position and size, which are ``Vector2``.
/// It is frequently used for fast overlap tests (see ``intersects(_:includeBorders:)``).
/// Although `Rect2` itself is axis-aligned, it can be combined
/// with ``Transform2D`` to represent a rotated or skewed rectangle.
///
/// For integer coordinates, use ``Rect2I``.
/// The 3D equivalent to `Rect2` is ``AABB``.
///
/// >note: Negative values for size are not supported. With negative size,
/// most `Rect2` methods do not work correctly.
/// Use ``abs()`` to get an equivalent `Rect2` with a non-negative size.
///
/// ### Use as Boolean
///
/// In a Boolean context, a `Rect2` evaluates to `false`
/// if both position and size are zero (equal to `Vector2`'s `zero`).
/// Otherwise, it always evaluates to `true`.
///
/// ## Topics
///
/// ### Creating Rect2
///
/// - ``Rect2/init(position:size:)``
/// - ``Rect2/init(x:y:width:height:)``
/// - ``Rect2/init(_:_:_:_:)``
/// - ``Rect2/init(_:)``
/// - ``Rect2/init()``
///
/// ### Geometric Properties
///
/// - ``Rect2/position``
/// - ``Rect2/size``
/// - ``Rect2/end``
/// - ``Rect2/x``
/// - ``Rect2/y``
/// - ``Rect2/width``
/// - ``Rect2/height``
/// - ``Rect2/center``
/// - ``Rect2/isFinite``
/// - ``Rect2/abs()``
/// - ``Rect2/formAbs()``
///
/// ### Area
///
/// - ``Rect2/area``
/// - ``Rect2/hasArea``
/// - ``Rect2/hasPoint(_:)``
///
/// ### Intersection
///
/// - ``Rect2/intersects(_:includeBorders:)``
/// - ``Rect2/intersection(with:)``
/// - ``Rect2/formIntersection(with:)``
/// - ``Rect2/encloses(_:)``
///
/// ### Growing
///
/// - ``Rect2/grown(by:)``
/// - ``Rect2/grow(by:)``
/// - ``Rect2/grown(by:side:)``
/// - ``Rect2/grow(by:side:)``
/// - ``Rect2/grown(by:sides:)``
/// - ``Rect2/grow(by:sides:)``
/// - ``Rect2/grown(left:top:right:bottom:)``
/// - ``Rect2/grow(left:top:right:bottom:)``
///
/// ### Expanding & Merging
///
/// - ``Rect2/merged(with:)``
/// - ``Rect2/merge(with:)``
/// - ``Rect2/expanded(to:)``
/// - ``Rect2/expand(to:)``
///
/// ### Rounding
///
/// - ``Rect2/rounded(_:)``
/// - ``Rect2/round(_:)``
///
/// ### Approximate Equality
///
/// - ``Rect2/isApproximatelyEqual(to:)``
public struct Rect2: Equatable, Hashable {
    /// The origin point.
    ///
    /// This is usually the top-left corner of the rectangle.
    public var position: Point2
    
    /// The rectangle's width and height, starting from position.
    ///
    /// Setting this value also affects the ``end`` point.
    ///
    /// >note: It's recommended setting the width and height to non-negative
    /// values, as most methods in Godot assume that the position
    /// is the top-left corner, and the end is the bottom-right corner.
    /// To get an equivalent rectangle with non-negative size, use ``abs()``.
    public var size: Size2
    
    // MARK: - Initializers
    
    /// Creates a new 2D rectangle from the given position and size.
    public init(position: Point2, size: Size2) {
        self.position = position
        self.size = size
    }
    
    /// Creates a new 2D rectangle from the given position coordinates
    /// and size values.
    public init(
        x: Scalar,
        y: Scalar,
        width: Scalar,
        height: Scalar
    ) {
        self.position = Vector2(x, y)
        self.size = Vector2(width, height)
    }
    
    /// Creates a new 2D rectangle from the given position coordinates
    /// and size values.
    public init(
        _ x: Scalar,
        _ y: Scalar,
        _ width: Scalar,
        _ height: Scalar
    ) {
        self.position = Vector2(x, y)
        self.size = Vector2(width, height)
    }
    
    /// Creates a new 2D rectangle from an integer 2D rectangle.
    public init(_ other: Rect2I) {
        self.position = Vector2(other.position)
        self.size = Vector2(other.size)
    }
    
    /// Creates a new 2D rectangle with its position and size set to zero.
    public init() {
        self.position = Vector2()
        self.size = Vector2()
    }
}

// MARK: - Functions and variables

extension Rect2 {
    /// The X coordinate of the origin point.
    public var x: Scalar {
        get {
            position.x
        }
        set(newValue) {
            position.x = newValue
        }
    }
    
    /// The Y coordinate of the origin point.
    public var y: Scalar {
        get {
            position.y
        }
        set(newValue) {
            position.y = newValue
        }
    }
    
    /// The rectangle's width.
    public var width: Scalar {
        get {
            size.x
        }
        set(newValue) {
            size.x = newValue
        }
    }
    
    /// The rectangle's height.
    public var height: Scalar {
        get {
            size.y
        }
        set(newValue) {
            size.y = newValue
        }
    }
    
    /// The ending point.
    ///
    /// This is usually the bottom-right corner of the rectangle,
    /// and is equivalent to `position + size`.
    ///
    /// Setting this point affects the ``size``.
    public var end: Point2 {
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
    public var center: Point2 {
        position + (size * 0.5)
    }
    
    /// The rectangle's area.
    ///
    /// This is equivalent to `size.x * size.y`.
    public var area: Scalar {
        size.x * size.y
    }
    
    /// A Boolean value indicating whether the rectangle has positive width and height.
    public var hasArea: Bool {
        size.x > 0 && size.y > 0
    }
    
    /// Returns `true` if the rectangle contains the given point.
    ///
    /// By convention, points on the right and bottom edges are not included.
    ///
    /// >note: This method is not reliable for `Rect2` with a negative size.
    /// Use ``abs()`` first to get a valid rectangle.
    public func hasPoint(_ point: Point2) -> Bool {
#if MATH_CHECKS
        if size.x < 0 || size.y < 0 {
            godotPrintError("Rect2 size is negative, this is not supported. Use Rect2.abs() to get a Rect2 with a positive size.")
        }
#endif
        if point.x < position.x {
            return false
        }
        if point.y < position.y {
            return false
        }
        
        if point.x >= (position.x + size.x) {
            return false
        }
        if point.y >= (position.y + size.y) {
            return false
        }
        
        return true
    }
    
    /// Returns `true` if this rectangle is approximately equal to another one.
    public func isApproximatelyEqual(to other: Rect2) -> Bool {
        position.isApproximatelyEqual(to: other.position) &&
        size.isApproximatelyEqual(to: other.size)
    }
    
    /// A Boolean value indicating whether the rectangle's values are finite.
    public var isFinite: Bool {
        position.isFinite && size.isFinite
    }
    
    /// Returns `true` if this rectangle overlaps with another one.
    ///
    /// - Parameters:
    ///   - other: The other rectangle to test intersection with.
    ///   - includeBorders: A Boolean value indicating whether
    ///   the edges of both rectangles are excluded.
    public func intersects(_ other: Rect2, includeBorders: Bool = false) -> Bool {
#if MATH_CHECKS
        if size.x < 0 || size.y < 0 || other.size.x < 0 || other.size.y < 0 {
            godotPrintError("Rect2 size is negative, this is not supported. Use Rect2.abs() to get a Rect2 with a positive size.")
        }
#endif
        if includeBorders {
            if position.x > (other.position.x + other.size.width) {
                return false
            }
            if (position.x + size.width) < other.position.x {
                return false
            }
            if position.y > (other.position.y + other.size.height) {
                return false
            }
            if (position.y + size.height) < other.position.y {
                return false
            }
        } else {
            if position.x >= (other.position.x + other.size.width) {
                return false
            }
            if (position.x + size.width) <= other.position.x {
                return false
            }
            if position.y >= (other.position.y + other.size.height) {
                return false
            }
            if (position.y + size.height) <= other.position.y {
                return false
            }
        }
        
        return true
    }
    
    /// Returns `true` if this rectangle completely encloses another one.
    public func encloses(_ other: Rect2) -> Bool {
#if MATH_CHECKS
        if size.x < 0 || size.y < 0 || other.size.x < 0 || other.size.y < 0 {
            godotPrintError("Rect2 size is negative, this is not supported. Use Rect2.abs() to get a Rect2 with a positive size.")
        }
#endif
        return (other.position.x >= position.x) && (other.position.y >= position.y) &&
        ((other.position.x + other.size.x) <= (position.x + size.x)) &&
        ((other.position.y + other.size.y) <= (position.y + size.y))
    }
    
    /// Returns the intersection between this rectangle and another one.
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
    public func intersection(with other: Rect2) -> Rect2 {
        var newRect = other

        if !intersects(newRect) {
            return Rect2()
        }

        newRect.position.x = max(other.position.x, position.x)
        newRect.position.y = max(other.position.y, position.y)

        let otherEnd = other.position + other.size
        let end = position + size

        newRect.size.x = min(otherEnd.x, end.x) - newRect.position.x
        newRect.size.y = min(otherEnd.y, end.y) - newRect.position.y

        return newRect
    }
    
    /// Replaces this rectangle with the intersection
    /// between this rectangle and another one.
    ///
    /// If the rectangles do not intersect, returns an empty `Rect2`.
    ///
    /// ```swift
    /// var rect1 = Rect2(x: 0, y: 0, width: 5, height: 10)
    /// let rect2 = Rect2(x: 2, y: 0, width: 8, height: 4)
    ///
    /// rect1.formIntersection(with: rect2)
    /// // rect1 is (2, 0, 3, 4)
    /// ```
    public mutating func formIntersection(with other: Rect2) {
        self = intersection(with: other)
    }
    
    /// Returns a rectangle that encloses both this
    /// rectangle and another one around the edges.
    public func merged(with other: Rect2) -> Rect2 {
#if MATH_CHECKS
        if size.x < 0 || size.y < 0 || other.size.x < 0 || other.size.y < 0 {
            godotPrintError("Rect2 size is negative, this is not supported. Use Rect2.abs() to get a Rect2 with a positive size.")
        }
#endif
        var newRect = Rect2()
        
        newRect.position.x = min(other.position.x, position.x)
        newRect.position.y = min(other.position.y, position.y)
        
        newRect.size.x = max(other.position.x + other.size.x, position.x + size.x)
        newRect.size.y = max(other.position.y + other.size.y, position.y + size.y)
        
        newRect.size = newRect.size - newRect.position // Make relative again.
        
        return newRect
    }
    
    /// Merges this rectangle with another one around the edges.
    public mutating func merge(with other: Rect2) {
        self = merged(with: other)
    }
    
    /// Returns the rectangle expanded to align the edges with the given point, if necessary.
    ///
    /// ```swift
    /// let rect = Rect2(x: 0, y: 0, width: 5, height: 2)
    ///
    /// print(rect.expanded(to: Vector2(x: 10, y: 0)))
    /// // Prints (0, 0, 10, 2)
    /// print(rect.expanded(to: Vector2(x: -5, y: 5)))
    /// // Prints (-5, 0, 10, 5)
    /// ```
    public func expanded(to point: Vector2) -> Rect2 {
        var copy = self
        copy.expand(to: point)
        return copy
    }
    
    /// Returns the rectangle expanded to align the edges with the given point, if necessary.
    ///
    /// ```swift
    /// var rect = Rect2(x: 0, y: 0, width: 5, height: 2)
    /// rect.expand(to: Vector2(x: 10, y: 0))
    /// // rect is (0, 0, 10, 2)
    ///
    /// var rect2 = Rect2(x: 0, y: 0, width: 5, height: 2)
    /// rect2.expand(to: Vector2(x: -5, y: 5))
    /// // rect2 is (-5, 0, 10, 5)
    /// ```
    public mutating func expand(to point: Vector2) {
#if MATH_CHECKS
        if size.x < 0 || size.y < 0 {
            godotPrintError("Rect2 size is negative, this is not supported. Use Rect2.abs() to get a Rect2 with a positive size.")
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
        
        if point.x > end.x {
            end.x = point.x
        }
        if point.y > end.y {
            end.y = point.y
        }
        
        position = begin
        size = end - begin
    }
    
    /// Returns this rectangle extended on all sides by the given amount.
    ///
    /// A negative amount shrinks the rectangle instead.
    ///
    /// ```swift
    /// print(Rect2(x: 4, y: 4, width: 8, height: 8).grown(by: 4))
    /// // Prints (0, 0, 16, 16)
    /// print(Rect2(x: 0, y: 0, width: 8, height: 4).grown(by: 2))
    /// // Prints (-2, -2, 12, 8)
    /// ```
    public func grown(by amount: Scalar) -> Rect2 {
        var copy = self
        copy.grow(by: amount)
        return copy
    }
    
    /// Extends this rectangle on all sides by the given amount.
    ///
    /// A negative amount shrinks the rectangle instead.
    ///
    /// ```swift
    /// var rect = Rect2(x: 4, y: 4, width: 8, height: 8)
    /// rect.grow(by: 4)
    /// // rect is (0, 0, 16, 16)
    /// var rect2 = Rect2(x: 0, y: 0, width: 8, height: 4)
    /// rect2.grow(by: 2)
    /// // rect2 is (-2, -2, 12, 8)
    /// ```
    public mutating func grow(by amount: Scalar) {
        position.x -= amount
        position.y -= amount
        size.width += amount * 2
        size.height += amount * 2
    }
    
    /// Returns this rectangle with its side extended by the given amount.
    ///
    /// A negative amount shrinks the rectangle, instead.
    public func grown(by amount: Scalar, side: Side) -> Rect2 {
        var copy = self
        copy.grow(by: amount, side: side)
        return copy
    }
    
    /// Extends this rectangle's given side by the given amount.
    ///
    /// A negative amount shrinks the rectangle, instead.
    public mutating func grow(by amount: Scalar, side: Side) {
        grow(
            left: side == .left ? amount : 0,
            top: side == .top ? amount : 0,
            right: side == .right ? amount : 0,
            bottom: side == .bottom ? amount : 0
        )
    }
    
    /// Returns this rectangle with the given sides extended by the given amount.
    ///
    /// A negative amount shrinks the rectangle, instead.
    public func grown(by amount: Scalar, sides: Side.Set) -> Rect2 {
        var copy = self
        copy.grow(by: amount, sides: sides)
        return copy
    }
    
    /// Extends this rectangle's given sides by the given amount.
    ///
    /// A negative amount shrinks the rectangle, instead.
    public mutating func grow(by amount: Scalar, sides: Side.Set) {
        if sides.contains(.top) {
            grow(by: amount, side: .top)
        }
        if sides.contains(.bottom) {
            grow(by: amount, side: .bottom)
        }
        if sides.contains(.left) {
            grow(by: amount, side: .left)
        }
        if sides.contains(.right) {
            grow(by: amount, side: .right)
        }
    }
    
    /// Returns this rectangle with its left, top, right,
    /// and bottom sides extended by the given amounts.
    ///
    /// Negative values shrink the sides, instead.
    public mutating func grown(
        left: Scalar,
        top: Scalar,
        right: Scalar,
        bottom: Scalar
    ) -> Rect2 {
        var copy = self
        copy.grow(left: left, top: top, right: right, bottom: bottom)
        return copy
    }
    
    /// Extend this rectangle's left, top, right, and bottom sides by the given amounts.
    ///
    /// Negative values shrink the sides, instead.
    public mutating func grow(
        left: Scalar,
        top: Scalar,
        right: Scalar,
        bottom: Scalar
    ) {
        position.x -= left
        position.y -= top
        size.width += left + right
        size.height += top + bottom
    }
    
    /// Returns a rectangle equivalent to this rectangle, with non-negative
    /// width and height values, and position at the top-left corner.
    ///
    /// ```swift
    /// let rect = Rect2(x: 25, y: 25, width: -100, height: -50)
    /// print(rect.abs())
    /// // prints (-75, -25, 100, 50).
    /// ```
    ///
    /// >note: It's recommended to use this method when size is negative,
    /// as most other methods in Godot assume that the position
    /// is the top-left corner, and the end is the bottom-right corner.
    public func abs() -> Rect2 {
        Rect2(
            position: Point2(
                position.x + min(size.x, 0),
                position.y + min(size.y, 0)
            ),
            size: size.abs()
        )
    }
    
    /// Replaces this rectangle with non-negative
    /// width and height values, and position at the top-left corner.
    ///
    /// ```swift
    /// var rect = Rect2(x: 25, y: 25, width: -100, height: -50)
    /// rect.formAbs()
    /// // rect is (-75, -25, 100, 50).
    /// ```
    ///
    /// >note: It's recommended to use this method when size is negative,
    /// as most other methods in Godot assume that the position
    /// is the top-left corner, and the end is the bottom-right corner.
    public mutating func formAbs() {
        self = abs()
    }
    
    /// Returns a rectangle formed by rounding the position and size
    /// to an integral value according to the specified rounding `rule`.
    public func rounded(_ rule: FloatingPointRoundingRule) -> Rect2 {
        var copy = self
        copy.round(rule)
        return copy
    }
    
    /// Rounds the position and size
    /// to an integral value according to the specified rounding `rule`.
    public mutating func round(_ rule: FloatingPointRoundingRule) {
        position.round(rule)
        size.round(rule)
    }
}

// MARK: - Codable

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

// MARK: - CustomStringConvertible

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

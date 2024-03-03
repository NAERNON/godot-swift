
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
/// Use ``abs()`` to get an equivalent `Rect2I` with a non-negative size.
///
/// ### Use as Boolean
///
/// In a boolean context, a `Rect2I` evaluates to `false` if both position
/// and size are zero (equal to `Vector2I`'s `zero`).
/// Otherwise, it always evaluates to `true`.
///
/// ## Topics
///
/// ## Topics
///
/// ### Creating Rect2I
///
/// - ``Rect2I/init(position:size:)``
/// - ``Rect2I/init(x:y:width:height:)``
/// - ``Rect2I/init(_:_:_:_:)``
/// - ``Rect2I/init(_:)``
/// - ``Rect2I/init(_:rounding:)``
/// - ``Rect2I/init()``
///
/// ### Geometric Properties
///
/// - ``Rect2I/position``
/// - ``Rect2I/size``
/// - ``Rect2I/end``
/// - ``Rect2I/x``
/// - ``Rect2I/y``
/// - ``Rect2I/width``
/// - ``Rect2I/height``
/// - ``Rect2I/center``
/// - ``Rect2I/abs()``
/// - ``Rect2I/formAbs()``
///
/// ### Area
///
/// - ``Rect2I/area``
/// - ``Rect2I/hasArea``
/// - ``Rect2I/hasPoint(_:)``
///
/// ### Intersection
///
/// - ``Rect2I/intersects(_:)``
/// - ``Rect2I/intersection(with:)``
/// - ``Rect2I/formIntersection(with:)``
/// - ``Rect2I/encloses(_:)``
///
/// ### Growing
///
/// - ``Rect2I/grew(by:)``
/// - ``Rect2I/grow(by:)``
/// - ``Rect2I/grew(by:side:)``
/// - ``Rect2I/grow(by:side:)``
/// - ``Rect2I/grew(by:sides:)``
/// - ``Rect2I/grow(by:sides:)``
/// - ``Rect2I/grew(left:top:right:bottom:)``
/// - ``Rect2I/grow(left:top:right:bottom:)``
///
/// ### Expanding & Merging
///
/// - ``Rect2I/merged(with:)``
/// - ``Rect2I/merge(with:)``
/// - ``Rect2I/expanded(to:)``
/// - ``Rect2I/expand(to:)``
public struct Rect2I: Equatable, Hashable {
    /// The origin point.
    ///
    /// This is usually the top-left corner of the rectangle.
    public var position: Point2I
    
    /// The rectangle's width and height, starting from position.
    ///
    /// Setting this value also affects the end point.
    ///
    /// >note: It's recommended setting the width and height
    /// to non-negative values, as most methods in Godot assume
    /// that the position is the top-left corner, and the end is the
    /// bottom-right corner.
    /// To get an equivalent rectangle with non-negative size, use ``abs()``.
    public var size: Size2I
    
    // MARK: - Initializers
    
    /// Creates a new 2D rectangle from the given position and size.
    public init(position: Point2I, size: Size2I) {
        self.position = position
        self.size = size
    }
    
    /// Creates a new 2D rectangle from the given position coordinates
    /// and size values.
    public init(
        x: Int32,
        y: Int32,
        width: Int32,
        height: Int32
    ) {
        self.position = Vector2I(x, y)
        self.size = Vector2I(width, height)
    }
    
    /// Creates a new 2D rectangle from the given position coordinates
    /// and size values.
    public init(
        _ x: Int32,
        _ y: Int32,
        _ width: Int32,
        _ height: Int32
    ) {
        self.position = Vector2I(x, y)
        self.size = Vector2I(width, height)
    }
    
    /// Creates a new 2D rectangle from a floating-point 2D rectangle.
    public init(_ other: Rect2) {
        self.position = Vector2I(other.position)
        self.size = Vector2I(other.size)
    }
    
    /// Creates a new 2D rectangle from a floating-point 2D rectangle.
    public init(_ other: Rect2, rounding rule: FloatingPointRoundingRule) {
        self.position = Vector2I(other.position, rounding: rule)
        self.size = Vector2I(other.size, rounding: rule)
    }
    
    /// Creates a new 2D rectangle with its position and size set to zero.
    public init() {
        self.position = Vector2I()
        self.size = Vector2I()
    }
}

// MARK: Functions and variables

extension Rect2I {
    /// The X coordinate of the origin point.
    public var x: Int32 {
        get {
            position.x
        }
        set(newValue) {
            position.x = newValue
        }
    }
    
    /// The Y coordinate of the origin point.
    public var y: Int32 {
        get {
            position.y
        }
        set(newValue) {
            position.y = newValue
        }
    }
    
    /// The rectangle's width.
    public var width: Int32 {
        get {
            size.x
        }
        set(newValue) {
            size.x = newValue
        }
    }
    
    /// The rectangle's height.
    public var height: Int32 {
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
    /// Setting this point affects the ``size``.
    public var end: Point2I {
        get {
            Point2I(position.x + size.x, position.y + size.y)
        }
        set(newValue) {
            size = Point2I(newValue.x - position.x, newValue.y - position.y)
        }
    }
    
    /// The center point of the rectangle.
    ///
    /// This is the same as `position + (size / 2)`.
    ///
    /// >note: If the size is odd, the result will be rounded towards position.
    public var center: Point2I {
        Point2I(
            x: position.x + (size.x / 2),
            y: position.y + (size.y / 2)
        )
    }
    
    /// The rectangle's area.
    ///
    /// This is equivalent to `size.x * size.y`.
    public var area: UInt64 {
        UInt64(size.width) * UInt64(size.height)
    }
    
    /// A Boolean value indicating whether the rectangle has positive width and height.
    public var hasArea: Bool {
        size.x > 0 && size.y > 0
    }
    
    /// Returns `true` if this rectangle contains the given point.
    ///
    /// By convention, points on the right and bottom edges are not included.
    ///
    /// >note: This method is not reliable for `Rect2I` with a negative size.
    /// Use ``abs()`` first to get a valid rectangle.
    public func hasPoint(_ point: Vector2I) -> Bool {
#if MATH_CHECKS
        if size.x < 0 || size.y < 0 {
            godotPrintError("Rect2I size is negative, this is not supported. Use Rect2I.abs() to get a Rect2I with a positive size.")
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
    
    /// Returns `true` if this rectangle overlaps with another one.
    ///
    /// The edges of both rectangles are excluded.
    public func intersects(_ other: Rect2I) -> Bool {
#if MATH_CHECKS
        if size.x < 0 || size.y < 0 || other.size.x < 0 || other.size.y < 0 {
            godotPrintError("Rect2I size is negative, this is not supported. Use Rect2I.abs() to get a Rect2I with a positive size.")
        }
#endif
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
        
        return true
    }
    
    /// Returns `true` if this rectangle completely encloses another one.
    public func encloses(_ other: Rect2I) -> Bool {
#if MATH_CHECKS
        if size.x < 0 || size.y < 0 || other.size.x < 0 || other.size.y < 0 {
            godotPrintError("Rect2I size is negative, this is not supported. Use Rect2I.abs() to get a Rect2i with a positive size.")
        }
#endif
        return (other.position.x >= position.x) && (other.position.y >= position.y) &&
        ((other.position.x + other.size.x) <= (position.x + size.x)) &&
        ((other.position.y + other.size.y) <= (position.y + size.y))
    }
    
    /// Returns the intersection between this rectangle and another one.
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
    public func intersection(with other: Rect2I) -> Rect2I {
        var newRect = other

        if !intersects(newRect) {
            return Rect2I()
        }

        newRect.position.x = max(other.position.x, position.x)
        newRect.position.y = max(other.position.y, position.y)

        let otherEndX = other.position.x + other.size.x
        let otherEndY = other.position.y + other.size.y
        let endX = position.x + size.x
        let endY = position.y + size.y

        newRect.size.x = min(otherEndX, endX) - newRect.position.x
        newRect.size.y = min(otherEndY, endY) - newRect.position.y

        return newRect
    }
    
    /// Returns the intersection between this rectangle and another one.
    ///
    /// If the rectangles do not intersect, returns an empty `Rect2I`.
    ///
    /// ```swift
    /// var rect1 = Rect2I(x: 0, y: 0, width: 5, height: 10)
    /// let rect2 = Rect2I(x: 2, y: 0, width: 8, height: 4)
    ///
    /// rect1.formIntersection(with: rect2)
    /// // rect1 is (2, 0, 3, 4)
    /// ```
    public mutating func formIntersection(with other: Rect2I) {
        self = intersection(with: other)
    }
    
    /// Returns a rectangle that encloses both this
    /// rectangle and another one around the edges.
    public func merged(with other: Rect2I) -> Rect2I {
#if MATH_CHECKS
        if size.x < 0 || size.y < 0 || other.size.x < 0 || other.size.y < 0 {
            godotPrintError("Rect2I size is negative, this is not supported. Use Rect2I.abs() to get a Rect2I with a positive size.")
        }
#endif
        var newRect = Rect2I()
        
        newRect.position.x = min(other.position.x, position.x)
        newRect.position.y = min(other.position.y, position.y)
        
        newRect.size.x = max(other.position.x + other.size.x, position.x + size.x)
        newRect.size.y = max(other.position.y + other.size.y, position.y + size.y)
        
        // Make relative again.
        newRect.size.x = newRect.size.x - newRect.position.x
        newRect.size.y = newRect.size.y - newRect.position.y
        
        return newRect
    }
    
    /// Merges this rectangle with another one around the edges.
    public mutating func merge(with other: Rect2I) {
        self = merged(with: other)
    }
    
    /// Returns the rectangle expanded to align the edges with the given point, if necessary.
    ///
    /// ```swift
    /// let rect = Rect2I(x: 0, y: 0, width: 5, height: 2)
    ///
    /// print(rect.expanded(to: Vector2I(x: 10, y: 0)))
    /// // Prints (0, 0, 10, 2)
    /// print(rect.expanded(to: Vector2I(x: -5, y: 5)))
    /// // Prints (-5, 0, 10, 5)
    /// ```
    public func expanded(to point: Vector2I) -> Rect2I {
        var copy = self
        copy.expand(to: point)
        return copy
    }
    
    /// Returns the rectangle expanded to align the edges with the given point, if necessary.
    ///
    /// ```swift
    /// var rect = Rect2I(x: 0, y: 0, width: 5, height: 2)
    /// rect.expand(to: Vector2I(x: 10, y: 0))
    /// // rect is (0, 0, 10, 2)
    ///
    /// var rect2 = Rect2I(x: 0, y: 0, width: 5, height: 2)
    /// rect2.expand(to: Vector2I(x: -5, y: 5))
    /// // rect2 is (-5, 0, 10, 5)
    /// ```
    public mutating func expand(to point: Vector2I) {
#if MATH_CHECKS
        if size.x < 0 || size.y < 0 {
            godotPrintError("Rect2I size is negative, this is not supported. Use Rect2I.abs() to get a Rect2I with a positive size.")
        }
#endif
        var begin = position
        var endX = position.x + size.x
        var endY = position.y + size.y
        
        if point.x < begin.x {
            begin.x = point.x
        }
        if point.y < begin.y {
            begin.y = point.y
        }
        
        if point.x > endX {
            endX = point.x
        }
        if point.y > endY {
            endY = point.y
        }
        
        position = begin
        size.x = endX - begin.x
        size.y = endY - begin.y
    }
    
    /// Returns this rectangle extended on all sides by the given amount.
    ///
    /// A negative amount shrinks the rectangle instead.
    ///
    /// ```swift
    /// print(Rect2I(x: 4, y: 4, width: 8, height: 8).grew(by: 4))
    /// // Prints (0, 0, 16, 16)
    /// print(Rect2I(x: 0, y: 0, width: 8, height: 4).grew(by: 2))
    /// // Prints (-2, -2, 12, 8)
    /// ```
    public func grew(by amount: Int32) -> Rect2I {
        var copy = self
        copy.grow(by: amount)
        return copy
    }
    
    /// Extends this rectangle on all sides by the given amount.
    ///
    /// A negative amount shrinks the rectangle instead.
    ///
    /// ```swift
    /// var rect = Rect2I(x: 4, y: 4, width: 8, height: 8)
    /// rect.grow(by: 4)
    /// // rect is (0, 0, 16, 16)
    /// var rect2 = Rect2I(x: 0, y: 0, width: 8, height: 4)
    /// rect2.grow(by: 2)
    /// // rect2 is (-2, -2, 12, 8)
    /// ```
    public mutating func grow(by amount: Int32) {
        position.x -= amount
        position.y -= amount
        size.width += amount * 2
        size.height += amount * 2
    }
    
    /// Returns this rectangle with its side extended by the given amount.
    ///
    /// A negative amount shrinks the rectangle, instead.
    public func grew(by amount: Int32, side: Side) -> Rect2I {
        var copy = self
        copy.grow(by: amount, side: side)
        return copy
    }
    
    /// Extends this rectangle's given side by the given amount.
    ///
    /// A negative amount shrinks the rectangle, instead.
    public mutating func grow(by amount: Int32, side: Side) {
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
    public func grew(by amount: Int32, sides: Side.Set) -> Rect2I {
        var copy = self
        copy.grow(by: amount, sides: sides)
        return copy
    }
    
    /// Extends this rectangle's given sides by the given amount.
    ///
    /// A negative amount shrinks the rectangle, instead.
    public mutating func grow(by amount: Int32, sides: Side.Set) {
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
    public mutating func grew(
        left: Int32,
        top: Int32,
        right: Int32,
        bottom: Int32
    ) -> Rect2I {
        var copy = self
        copy.grow(left: left, top: top, right: right, bottom: bottom)
        return copy
    }
    
    /// Extend this rectangle's left, top, right, and bottom sides by the given amounts.
    ///
    /// Negative values shrink the sides, instead.
    public mutating func grow(
        left: Int32,
        top: Int32,
        right: Int32,
        bottom: Int32
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
    /// let rect = Rect2I(x: 25, y: 25, width: -100, height: -50)
    /// print(rect.abs())
    /// // prints (-75, -25, 100, 50).
    /// ```
    ///
    /// >note: It's recommended to use this method when size is negative,
    /// as most other methods in Godot assume that the position
    /// is the top-left corner, and the end is the bottom-right corner.
    public func abs() -> Rect2I {
        Rect2I(
            position: Point2I(
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
    /// var rect = Rect2I(x: 25, y: 25, width: -100, height: -50)
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
}

// MARK: - Codable

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

// MARK: - CustomStringConvertible

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

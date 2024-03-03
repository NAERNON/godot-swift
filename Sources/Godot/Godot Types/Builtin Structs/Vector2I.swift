
/// A 2D vector using integer coordinates.
///
/// This type can be used to represent 2D grid coordinates or any other pair of integers.
///
/// It uses integer coordinates and is therefore preferable to ``Vector2``
/// when exact precision is required.
///
/// >note: The values are limited to 32 bits, and unlike ``Vector2``
/// this cannot be configured with an engine build option.
///
/// ## Topics
///
/// ### Creating 2D Vector
///
/// - ``Vector2I/init(x:y:)``
/// - ``Vector2I/init(_:_:)``
/// - ``Vector2I/init(_:)``
/// - ``Vector2I/init(_:rounding:)``
/// - ``Vector2I/init(repeating:)``
///
/// ### Special Values
///
/// - ``Vector2I/zero``
/// - ``Vector2I/init()``
/// - ``Vector2I/one``
/// - ``Vector2I/left``
/// - ``Vector2I/right``
/// - ``Vector2I/up``
/// - ``Vector2I/down``
///
/// ### Geometric Properties
///
/// - ``Vector2I/x``
/// - ``Vector2I/y``
/// - ``Vector2I/subscript(_:)``
/// - ``Vector2I/width``
/// - ``Vector2I/height``
/// - ``Vector2I/aspect``
/// - ``Vector2I/abs()``
/// - ``Vector2I/formAbs()``
/// - ``Vector2I/clamped(lowerBound:upperBound:)``
/// - ``Vector2I/clamp(lowerBound:upperBound:)``
/// - ``Vector2I/sum()``
/// - ``Vector2I/signUnitValue``
///
/// ### Magnitude and Distance
///
/// - ``Vector2I/magnitude``
/// - ``Vector2I/magnitudeSquared``
///
/// ### Axis
///
/// - ``Vector2I/minAxis``
/// - ``Vector2I/maxAxis``
/// - ``Vector2I/subscript(axis:)``
///
/// ### Rounding and Division
///
/// - ``Vector2I/snapped(step:)``
/// - ``Vector2I/snap(step:)``
///
/// ### Comparison
///
/// - ``Vector2I/<(_:_:)``
/// - ``Vector2I/<=(_:_:)``
/// - ``Vector2I/>(_:_:)``
/// - ``Vector2I/>=(_:_:)``
public struct Vector2I: Hashable, Equatable {
    /// The first element of the vector.
    public var x: Int32
    /// The second element of the vector.
    public var y: Int32
    
    // MARK: - Initializers
    
    /// Creates a new vector from the given elements.
    public init(
        x: Int32,
        y: Int32
    ) {
        self.x = x
        self.y = y
    }
    
    /// Creates a new vector from the given elements.
    public init(
        _ x: Int32,
        _ y: Int32
    ) {
        self.x = x
        self.y = y
    }
    
    /// Creates a new vector with all elements set to `0`.
    public init() {
        self = .zero
    }
    
    /// Creates a new vector from a given floating-point vector,
    /// rounded using a given rule.
    public init(_ other: Vector2, rounding rule: FloatingPointRoundingRule) {
        self.x = Int32(other.x.rounded(rule))
        self.y = Int32(other.y.rounded(rule))
    }
    
    /// Creates a new vector from a given floating-point vector.
    public init(_ other: Vector2) {
        self.x = Int32(other.x)
        self.y = Int32(other.y)
    }
    
    /// Creates a new vector with all elements set to the specified value.
    public init(repeating value: Int32) {
        self.x = value
        self.y = value
    }
}

// MARK: - Special Values

extension Vector2I {
    /// A vector with all elements set to `0`.
    public static var zero: Vector2I {
        Vector2I(0, 0)
    }
    
    /// A vector with all elements set to `1`.
    public static var one: Vector2I {
        Vector2I(1, 1)
    }
    
    /// The left unit vector.
    ///
    /// Represents the direction of left.
    public static var left: Vector2I {
        Vector2I(x: -1, y: 0)
    }
    
    /// The right unit vector.
    ///
    /// Represents the direction of right.
    public static var right: Vector2I {
        Vector2I(x: 1, y: 0)
    }
    
    /// The up unit vector.
    ///
    /// Y is down in 2D, so this vector points -Y.
    public static var up: Vector2I {
        Vector2I(x: 0, y: -1)
    }
    
    /// The down unit vector.
    ///
    /// Y is down in 2D, so this vector points +Y.
    public static var down: Vector2I {
        Vector2I(x: 0, y: 1)
    }
}

// MARK: - Properties

extension Vector2I {
    /// The vector's width. Equivalent to `x`.
    public var width: Int32 {
        get {
            x
        }
        set(newValue) {
            x = newValue
        }
    }
    
    /// The vector's height. Equivalent to `y`.
    public var height: Int32 {
        get {
            y
        }
        set(newValue) {
            y = newValue
        }
    }
}

// MARK: Subscripts

extension Vector2I {
    /// Accesses the vector component at the given index.
    public subscript(index: Int) -> Int32 {
        get {
            switch index {
            case 0: x
            case 1: y
            default: fatalError("Attempting to read component \(index) from 2D vector.")
            }
        }
        set(newValue) {
            switch index {
            case 0: x = newValue
            case 1: y = newValue
            default: fatalError("Attempting to set component \(index) on 2D vector.")
            }
        }
    }
    
    /// Accesses the vector component on the given axis.
    public subscript(axis axis: Axis2D) -> Int32 {
        get {
            switch axis {
            case .x: x
            case .y: y
            }
        }
        set(newValue) {
            switch axis {
            case .x: x = newValue
            case .y: y = newValue
            }
        }
    }
}

// MARK: Functions and variables

extension Vector2I {
    /// The aspect ratio of the vector, the ratio of `x` to `y`.
    public var aspect: FloatingPointType {
        FloatingPointType(x) / FloatingPointType(y)
    }
    
    /// A vector with each component set to `1` if it's positive,
    /// `-1` if it's negative, and `0` if it's zero.
    public var signUnitValue: Vector2I {
        Vector2I(x: x.signUnitValue, y: y.signUnitValue)
    }
    
    /// Returns a new vector with each component snapped to
    /// the closest multiple of the corresponding component in a given vector.
    public func snapped(step: Vector2I) -> Vector2I {
        Vector2I(
            x: x.snapped(step: step.x),
            y: y.snapped(step: step.y)
        )
    }
    
    /// Replaces this vector with a vector with each component snapped to
    /// the nearest multiple of the corresponding component in a given vector.
    ///
    /// This can also be used to round the components
    /// to an arbitrary number of decimals.
    public mutating func snap(step: Vector2I) {
        self = snapped(step: step)
    }
    
    /// The magnitude (length) of the vector.
    public var magnitude: FloatingPointType {
        FloatingPointType(magnitudeSquared).squareRoot()
    }
    
    /// The squared magnitude of the vector.
    ///
    /// This property runs faster than ``magnitude``, so prefer it if you need
    /// to compare vectors or need the squared distance for some formula.
    public var magnitudeSquared: UInt64 {
        (UInt64(x) * UInt64(x)) + (UInt64(y) * UInt64(y))
    }
    
    /// Returns this vector with all components in absolute values (i.e. positive).
    public func abs() -> Vector2I {
        Vector2I(x: Swift.abs(x), y: Swift.abs(y))
    }
    
    /// Replaces this vector with a vector with all
    /// components in absolute values (i.e. positive).
    public mutating func formAbs() {
        self = abs()
    }
    
    /// Returns a new vector with all components clamped between the components
    /// of the two given bounds.
    public func clamped(lowerBound: Vector2I, upperBound: Vector2I) -> Vector2I {
        Vector2I(
            x.clamped(lowerBound: lowerBound.x, upperBound: upperBound.x),
            y.clamped(lowerBound: lowerBound.y, upperBound: upperBound.y)
        )
    }
    
    /// Clamps all components between the components
    /// of the two given bounds.
    public mutating func clamp(lowerBound: Vector2I, upperBound: Vector2I) {
        self = clamped(lowerBound: lowerBound, upperBound: upperBound)
    }
    
    /// Returns the sum of the scalars in the vector.
    public func sum() -> Int64 {
        Int64(x) + Int64(y)
    }
}

// MARK: - Operators

extension Vector2I {
    /// The multiplication of all components of a vector and a floating-point value.
    public static func * (lhs: Vector2I, rhs: Int32) -> Vector2I {
        Vector2I(lhs.x * rhs, lhs.y * rhs)
    }
    
    /// The multiplication of all components of a vector and a floating-point value.
    public static func * (lhs: Int32, rhs: Vector2I) -> Vector2I {
        rhs * lhs
    }
    
    /// Updates the vector with the multiplication of
    /// all components of a vector and a floating-point value.
    public static func *= (lhs: inout Vector2I, rhs: Int32) {
        lhs = lhs * rhs
    }
    
    /// The division of all components of a vector and a floating-point value.
    public static func / (lhs: Vector2I, rhs: Int32) -> Vector2I {
        Vector2I(lhs.x / rhs, lhs.y / rhs)
    }
    
    /// Updates the vector with the division of
    /// all components of a vector and a floating-point value.
    public static func /= (lhs: inout Vector2I, rhs: Int32) {
        lhs = lhs / rhs
    }
    
    /// The opposite of a vector.
    ///
    /// This is the same as multiplying by `-1`.
    public static prefix func - (lhs: Vector2I) -> Vector2I {
        var copy = lhs
        copy.x = -copy.x
        copy.y = -copy.y
        return copy
    }
    
    /// The multiplication of two vectors, component by component.
    public static func * (lhs: Vector2I, rhs: Vector2I) -> Vector2I {
        Vector2I(lhs.x * rhs.x, lhs.y * rhs.y)
    }
    
    /// Updates the vector with the multiplication of two vectors,
    /// component by component.
    public static func *= (lhs: inout Vector2I, rhs: Vector2I) {
        lhs = lhs * rhs
    }
    
    /// The division of two vectors, component by component.
    public static func / (lhs: Vector2I, rhs: Vector2I) -> Vector2I {
        Vector2I(lhs.x / rhs.x, lhs.y / rhs.y)
    }
    
    /// Updates the vector with the division of two vectors,
    /// component by component.
    public static func /= (lhs: inout Vector2I, rhs: Vector2I) {
        lhs = lhs / rhs
    }
}

// MARK: AdditiveArithmetic

extension Vector2I: AdditiveArithmetic {
    public static func + (lhs: Vector2I, rhs: Vector2I) -> Vector2I {
        Vector2I(lhs.x + rhs.x, lhs.y + rhs.y)
    }
    
    public static func - (lhs: Vector2I, rhs: Vector2I) -> Vector2I {
        Vector2I(lhs.x - rhs.x, lhs.y - rhs.y)
    }
}

// MARK: - Comparable

extension Vector2I: Comparable {
    /// Compares two vectors scalar by scalar.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is less than the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors. This operator is useful for sorting vectors.
    ///
    /// >note: Vectors with `nan` elements don't behave the same as other vectors.
    /// Therefore, the results from this operator may not be accurate if `nan`s are included.
    public static func < (lhs: Vector2I, rhs: Vector2I) -> Bool {
        lhs.x == rhs.x ? lhs.y < rhs.y : lhs.x < rhs.x
    }
    
    /// Compares two vectors scalar by scalar.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is greater than the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors. This operator is useful for sorting vectors.
    ///
    /// >note: Vectors with `nan` elements don't behave the same as other vectors.
    /// Therefore, the results from this operator may not be accurate if `nan`s are included.
    public static func > (lhs: Vector2I, rhs: Vector2I) -> Bool {
        lhs.x == rhs.x ? lhs.y > rhs.y : lhs.x > rhs.x
    }
    
    /// Compares two vectors scalar by scalar.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is less than or equal to the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors. This operator is useful for sorting vectors.
    ///
    /// >note: Vectors with `nan` elements don't behave the same as other vectors.
    /// Therefore, the results from this operator may not be accurate if `nan`s are included.
    public static func <= (lhs: Vector2I, rhs: Vector2I) -> Bool {
        lhs.x == rhs.x ? lhs.y <= rhs.y : lhs.x < rhs.x
    }
    
    /// Compares two vectors scalar by scalar.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is greater than or equal to the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors. This operator is useful for sorting vectors.
    ///
    /// >note: Vectors with `nan` elements don't behave the same as other vectors.
    /// Therefore, the results from this operator may not be accurate if `nan`s are included.
    public static func >= (lhs: Vector2I, rhs: Vector2I) -> Bool {
        lhs.x == rhs.x ? lhs.y >= rhs.y : lhs.x > rhs.x
    }
    
    /// The axis of the vector's highest value.
    ///
    /// If all components are equal, this method returns ``Axis2D/x``.
    public var maxAxis: Axis2D {
        x < y ? .x : .y
    }
    
    /// The axis of the vector's lowest value.
    ///
    /// If all components are equal, this method returns ``Axis2D/y``.
    public var minAxis: Axis2D {
        x < y ? .y : .x
    }
}

// MARK: - CustomStringConvertible

extension Vector2I: CustomStringConvertible, CustomDebugStringConvertible {
    public var description: String {
        "(x: \(x), y: \(y))"
    }
    
    public var debugDescription: String {
        "Vector2I(x: \(x), y: \(y))"
    }
}

// MARK: - ExpressibleByArrayLiteral

extension Vector2I: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Int32...) {
        precondition(
            elements.count == 2,
            "Attempting to create a 2D vector from \(elements.count) elements."
        )
        
        self.x = elements[0]
        self.y = elements[1]
    }
}

// MARK: - Codable

extension Vector2I: Codable {
    public func encode(to encoder: Encoder) throws {
        var unkeyedContainer = encoder.unkeyedContainer()
        try unkeyedContainer.encode(x)
        try unkeyedContainer.encode(y)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        x = try container.decode(Int32.self)
        y = try container.decode(Int32.self)
    }
}

// MARK: - Typealiases

/// A 2D integer point.
public typealias Point2I = Vector2I

/// A 2D integer size.
public typealias Size2I = Vector2I

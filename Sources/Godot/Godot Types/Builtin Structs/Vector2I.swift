
/// A 2D vector using integer coordinates.
///
/// This type can be used to represent 2D grid coordinates or any other pair of integers.
///
/// It uses integer coordinates and is therefore preferable to ``Vector2``
/// when exact precision is required.
///
/// >note: The values are limited to 32 bits, and unlike ``Vector2``
/// this cannot be configured with an engine build option.
/// Use `Int` or ``PackedInt64Array`` if 64-bit values are needed.
///
/// ### Use as Boolean
///
/// In a boolean context, a `Vector2I` evaluates to `false` if
/// it's equal to `(0, 0)`.
/// Otherwise, it always evaluates to `true`.
///
/// ## Topics
///
/// ### Creating Vector2I
///
/// - ``init(x:y:)-4czd5``
/// - ``init(x:y:)-74dwz``
/// - ``init(x:y:)-25y4k``
/// - ``init(_:)``
///
/// ### Special Values
///
/// - ``zero``
/// - ``init()``
/// - ``one``
/// - ``min``
/// - ``max``
/// - ``left``
/// - ``right``
/// - ``up``
/// - ``down``
///
/// ### Geometric Properties
///
/// - ``x``
/// - ``y``
/// - ``subscript(_:)``
///
/// - ``length``
/// - ``lengthSquared``
/// - ``aspect``
/// - ``maxAxis``
/// - ``minAxis``
///
/// ### Transformation
///
/// - ``abs``
/// - ``sign``
/// - ``clamped(min:max:)``
/// - ``snapped(step:)``
///
/// ### Comparison
///
/// - ``<(_:_:)``
/// - ``<=(_:_:)``
/// - ``>(_:_:)``
/// - ``>=(_:_:)``
public struct Vector2I {
    /// The vector's X component.
    ///
    /// Also accessible by using ``subscript(_:)`` with index `0`.
    public var x: Int32
    
    /// The vector's Y component.
    ///
    /// Also accessible by using ``subscript(_:)`` with index `1`.
    public var y: Int32
    
    /// Creates a new `Vector2I` from the given `x` and `y`.
    public init(x: Int32, y: Int32) {
        self.x = x
        self.y = y
    }
}

extension Vector2I {
    // MARK: Constructors
    
    /// Creates a new `Vector2I` from the given `x` and `y`.
    public init<T>(x: T, y: T) where T : BinaryFloatingPoint {
        self.init(x: Int32(x), y: Int32(y))
    }
    
    /// Creates a new `Vector2I` from the given `x` and `y`.
    public init<T>(x: T, y: T) where T : BinaryInteger {
        self.init(x: Int32(x), y: Int32(y))
    }
    
    /// Creates a new `Vector2I` from the given `Vector2`
    /// by truncating components' fractional parts (rounding towards zero).
    ///
    /// For a different behavior consider passing the result of
    /// `Vector2`'s ``Vector2/ceil``, ``Vector2/floor``
    /// or ``Vector2/rounded`` to this constructor instead.
    public init(_ vector2: Vector2) {
        self.init(x: vector2.x, y: vector2.y)
    }
    
    /// Creates a default-initialized `Vector2I` with all components set to `0`.
    public init() {
        self.init(x: 0, y: 0)
    }
    
    // MARK: Constant
    
    /// A vector with all components set to `0`.
    public static let zero: Vector2I = Vector2I(x: 0, y: 0)
    
    /// A vector with all components set to `1`.
    public static let one: Vector2I = Vector2I(x: 1, y: 1)
    
    /// A vector with all components equal to `Int32.min`.
    ///
    /// Can be used as a negative integer equivalent
    /// of `Vector2`'s ``Vector2/infinity``.
    public static let min: Vector2I = Vector2I(x: .min, y: .min)
    
    /// A vector with all components equal to `Int32.max`.
    ///
    /// Can be used as an integer equivalent
    /// of `Vector2`'s ``Vector2/infinity``.
    public static let max: Vector2I = Vector2I(x: .max, y: .max)
    
    /// The left unit vector.
    ///
    /// Represents the direction of left.
    public static let left: Vector2I = Vector2I(x: -1, y: 0)
    
    /// The right unit vector.
    ///
    /// Represents the direction of right.
    public static let right: Vector2I = Vector2I(x: 1, y: 0)
    
    /// The up unit vector.
    ///
    /// Y is down in 2D, so this vector points -Y.
    public static let up: Vector2I = Vector2I(x: 0, y: -1)
    
    /// The down unit vector.
    ///
    /// Y is down in 2D, so this vector points +Y.
    public static let down: Vector2I = Vector2I(x: 0, y: 1)
    
    // MARK: Operators
    
    /// Returns the negative value of the `Vector2I`.
    ///
    /// This is the same as writing `Vector2I(x: -v.x, y: -v.y)`.
    /// This operation flips the direction of the vector while keeping the same magnitude.
    public static prefix func - (vector2I: Vector2I) -> Vector2I {
        Self._operatorNegate(vector2I)
    }
    
    /// Returns the same value as if the `+` was not there.
    public static prefix func + (vector2I: Vector2I) -> Vector2I {
        Self._operatorPositive(vector2I)
    }
    
    /// Multiplies each component of a `Vector2I` by a value.
    public static func * (lhs: Vector2I, rhs: Int) -> Vector2I {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// Multiplies each component of a `Vector2I` by a value.
    public static func * (lhs: Int, rhs: Vector2I) -> Vector2I {
        rhs * lhs
    }
    
    /// Multiplies each component of a `Vector2I` by a value.
    public static func * (lhs: Vector2I, rhs: Scalar) -> Vector2 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// Multiplies each component of a `Vector2I` by a value.
    public static func * (lhs: Scalar, rhs: Vector2I) -> Vector2 {
        rhs * lhs
    }
    
    /// Divides each component of a `Vector2I` by a value.
    public static func / (lhs: Vector2I, rhs: Int) -> Vector2I {
        Self._operatorDivide(lhs, rhs)
    }
    
    /// Divides each component of a `Vector2I` by a value.
    public static func / (lhs: Vector2I, rhs: Scalar) -> Vector2 {
        Self._operatorDivide(lhs, rhs)
    }
    
    /// Gets the remainder of each component a `Vector2I` with a given `Int`.
    ///
    /// This operation uses truncated division, which is often not desired as it
    /// does not work well with negative numbers.
    /// Consider using ``posmod`` instead if you want to handle negative numbers.
    public static func % (lhs: Vector2I, rhs: Int) -> Vector2I {
        Self._operatorModule(lhs, rhs)
    }
    
    /// Compares two vectors.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is less than the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors. This operator is useful for sorting vectors.
    public static func < (lhs: Vector2I, rhs: Vector2I) -> Bool {
        Self._operatorLess(lhs, rhs)
    }
    
    /// Compares two vectors.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is less than or equal to the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors. This operator is useful for sorting vectors.
    public static func <= (lhs: Vector2I, rhs: Vector2I) -> Bool {
        Self._operatorLessEqual(lhs, rhs)
    }
    
    /// Compares two vectors.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is greater than the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors. This operator is useful for sorting vectors.
    public static func > (lhs: Vector2I, rhs: Vector2I) -> Bool {
        Self._operatorGreater(lhs, rhs)
    }
    
    /// Compares two vectors.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is greater than or equal to the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors. This operator is useful for sorting vectors.
    public static func >= (lhs: Vector2I, rhs: Vector2I) -> Bool {
        Self._operatorGreaterEqual(lhs, rhs)
    }
    
    /// Adds each component of a `Vector2I` by the components of another `Vector2I`.
    ///
    /// ```swift
    /// print(Vector2I(x: 10, y: 20) + Vector2I(x: 3, y: 4))
    /// // Prints "(13, 24)"
    /// ```
    public static func + (lhs: Vector2I, rhs: Vector2I) -> Vector2I {
        Self._operatorAdd(lhs, rhs)
    }
    
    /// Subtracts each component of a `Vector2I` by the components of another `Vector2I`.
    ///
    /// ```swift
    /// print(Vector2I(x: 10, y: 20) - Vector2I(x: 3, y: 4))
    /// // Prints "(7, 16)"
    /// ```
    public static func - (lhs: Vector2I, rhs: Vector2I) -> Vector2I {
        Self._operatorSubtract(lhs, rhs)
    }
    
    /// Multiplies each component a `Vector2I` by the components of a given `Vector2I`.
    public static func * (lhs: Vector2I, rhs: Vector2I) -> Vector2I {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// Divides each component of a `Vector2I` by the components of another `Vector2I`.
    ///
    /// ```swift
    /// print(Vector2I(x: 10, y: 20) / Vector2I(x: 2, y: 5))
    /// // Prints "(5, 4)"
    /// ```
    public static func / (lhs: Vector2I, rhs: Vector2I) -> Vector2I {
        Self._operatorDivide(lhs, rhs)
    }
    
    /// Gets the remainder of each component of a `Vector2I` with the
    /// components of another `Vector2I`.
    ///
    /// This operation uses truncated division, which is often not desired as
    /// it does not work well with negative numbers.
    /// Consider using``posmod`` instead if you want to handle negative numbers.
    public static func % (lhs: Vector2I, rhs: Vector2I) -> Vector2I {
        Self._operatorModule(lhs, rhs)
    }
    
    // MARK: Methods & variables
    
    /// The aspect ratio of this vector, the ratio of `x` to `y`.
    public var aspect: Scalar {
        _aspect()
    }
    
    /// The axis of the vector's highest value.
    ///
    /// If all components are equal, this method returns ``Axis/x``.
    public var maxAxis: Axis {
        .init(rawValue: UInt32(_maxAxisIndex()))!
    }
    
    /// The axis of the vector's lowest value.
    ///
    /// If all components are equal, this method returns ``Axis/y``.
    public var minAxis: Axis {
        .init(rawValue: UInt32(_minAxisIndex()))!
    }
    
    /// The length (magnitude) of the vector.
    public var length: Scalar {
        _length()
    }
    
    /// The squared length (squared magnitude) of this vector.
    ///
    /// This property runs faster than ``length``, so prefer it if you need
    /// to compare vectors or need the squared distance for some formula.
    public var lengthSquared: Int {
        _lengthSquared()
    }
    
    /// A vector with each component set to `1` if it's positive,
    /// `-1` if it's negative, and `0` if it's zero.
    public var sign: Vector2I {
        _sign()
    }
    
    /// A new vector with all components in absolute values (i.e. positive).
    public var abs: Vector2I {
        _abs()
    }
    
    /// Returns a new vector with all components clamped
    /// between the given values.
    public func clamped(min: Vector2I, max: Vector2I) -> Vector2I {
        _clamp(min: min, max: max)
    }
    
    /// Returns a new vector with each component snapped
    /// to the closest multiple of the corresponding component in a given vector.
    public func snapped(step: Vector2I) -> Vector2I {
        _snapped(step: step)
    }
    
    /// Accesses vector component at the given index.
    ///
    /// Indices are in the following order: `x`, `y`.
    public subscript(index: Int) -> Int32 {
        get {
            switch index {
            case 0: x
            case 1: y
            default: fatalError("Attempting to retrieve value at index \(index) from 2D vector.")
            }
        }
        set(newValue) {
            switch index {
            case 0: x = newValue
            case 1: y = newValue
            default: fatalError("Attempting to set value at index \(index) from 2D vector.")
            }
        }
    }
}

extension Vector2I: Equatable, Hashable {}

extension Vector2I: AdditiveArithmetic, Comparable {}

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

extension Vector2I: CustomStringConvertible {
    public var description: String {
        "(\(x), \(y))"
    }
}

extension Vector2I: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Vector2I(x: \(x), y: \(y))"
    }
}

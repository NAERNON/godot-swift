
/// A 4D vector using integer coordinates.
///
/// This type can be used to represent 2D grid coordinates or any other quadruplet of integers.
///
/// It uses integer coordinates and is therefore preferable to ``Vector4``
/// when exact precision is required.
///
/// >note: The values are limited to 32 bits, and unlike ``Vector3``
/// this cannot be configured with an engine build option.
/// Use `Int` or ``PackedInt64Array`` if 64-bit values are needed.
///
/// ### Use as Boolean
///
/// In a boolean context, a `Vector4i` evaluates to `false` if
/// it's equal to `(0, 0, 0, 0)`.
/// Otherwise, it always evaluates to `true`.
///
/// ## Topics
///
/// ### Creating Vector4i
///
/// - ``init(x:y:z:w:)-185qb``
/// - ``init(x:y:z:w:)-8kqw9``
/// - ``init(x:y:z:w:)-3omp3``
/// - ``init(_:)``
///
/// ### Special Values
///
/// - ``zero``
/// - ``init()``
/// - ``one``
/// - ``min``
/// - ``max``
///
/// ### Geometric Properties
///
/// - ``x``
/// - ``y``
/// - ``z``
/// - ``w``
/// - ``subscript(_:)``
///
/// - ``length``
/// - ``lengthSquared``
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
public struct Vector4i {
    /// The vector's X component.
    ///
    /// Also accessible by using ``subscript(_:)`` with index `0`.
    public var x: Int32
    
    /// The vector's Y component.
    ///
    /// Also accessible by using ``subscript(_:)`` with index `1`.
    public var y: Int32
    
    /// The vector's Z component.
    ///
    /// Also accessible by using ``subscript(_:)`` with index `2`.
    public var z: Int32
    
    /// The vector's W component.
    ///
    /// Also accessible by using ``subscript(_:)`` with index `3`.
    public var w: Int32
    
    /// Creates a new `Vector4i` from the given `x`,`y`, `z` and `w`.
    public init(x: Int32, y: Int32, z: Int32, w: Int32) {
        self.x = x
        self.y = y
        self.z = z
        self.w = w
    }
}

extension Vector4i {
    // MARK: Constructors
    
    /// Creates a new `Vector4i` from the given `x`,`y`, `z` and `w`.
    public init<T>(x: T, y: T, z: T, w: T) where T : BinaryFloatingPoint {
        self.init(x: Int32(x), y: Int32(y), z: Int32(z), w: Int32(w))
    }
    
    /// Creates a new `Vector4i` from the given `x`,`y`, `z` and `w`.
    public init<T>(x: T, y: T, z: T, w: T) where T : BinaryInteger {
        self.init(x: Int32(x), y: Int32(y), z: Int32(z), w: Int32(w))
    }
    
    /// Creates a new `Vector4i` from the given `Vector4`
    /// by truncating components' fractional parts (rounding towards zero).
    ///
    /// For a different behavior consider passing the result of
    /// `Vector4`'s ``Vector4/ceil``, ``Vector4/floor``
    /// or ``Vector4/rounded`` to this constructor instead.
    public init(_ vector4: Vector4) {
        self.init(x: vector4.x, y: vector4.y, z: vector4.z, w: vector4.w)
    }
    
    /// Creates a default-initialized `Vector4i` with all components set to `0`.
    public init() {
        self.init(x: 0, y: 0, z: 0, w: 0)
    }
    
    // MARK: Constants
    
    /// A vector with all components set to `0`.
    public static let zero: Vector4i = Vector4i(x: 0, y: 0, z: 0, w: 0)
    
    /// A vector with all components set to `1`.
    public static let one: Vector4i = Vector4i(x: 1, y: 1, z: 1, w: 1)
    
    /// A vector with all components equal to `Int32.min`.
    ///
    /// Can be used as a negative integer equivalent
    /// of `Vector4`'s ``Vector4/infinity``.
    public static let min: Vector4i = Vector4i(x: .min, y: .min, z: .min, w: .min)
    
    /// A vector with all components equal to `Int32.max`.
    ///
    /// Can be used as an integer equivalent
    /// of `Vector4`'s ``Vector4/infinity``.
    public static let max: Vector4i = Vector4i(x: .max, y: .max, z: .max, w: .max)
    
    // MARK: Operators
    
    /// Returns the negative value of the `Vector4i`.
    ///
    /// This is the same as writing `Vector4i(x: -v.x, y: -v.y, z: -v.z, w: -v.w)`.
    /// This operation flips the direction of the vector while keeping the same magnitude.
    public static prefix func - (vector4i: Vector4i) -> Vector4i {
        Self._operatorNegate(vector4i)
    }
    
    /// Returns the same value as if the `+` was not there.
    public static prefix func + (vector4i: Vector4i) -> Vector4i {
        Self._operatorPositive(vector4i)
    }
    
    /// Multiplies each component of a `Vector4i` by a value.
    public static func * (lhs: Vector4i, rhs: Int) -> Vector4i {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// Multiplies each component of a `Vector4i` by a value.
    public static func * (lhs: Int, rhs: Vector4i) -> Vector4i {
        rhs * lhs
    }
    
    /// Multiplies each component of a `Vector4i` by a value.
    public static func * (lhs: Vector4i, rhs: Scalar) -> Vector4 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// Multiplies each component of a `Vector4i` by a value.
    public static func * (lhs: Scalar, rhs: Vector4i) -> Vector4 {
        rhs * lhs
    }
    
    /// Divides each component of a `Vector4i` by a value.
    public static func / (lhs: Vector4i, rhs: Int) -> Vector4i {
        Self._operatorDivide(lhs, rhs)
    }
    
    /// Divides each component of a `Vector4i` by a value.
    public static func / (lhs: Vector4i, rhs: Scalar) -> Vector4 {
        Self._operatorDivide(lhs, rhs)
    }
    
    /// Gets the remainder of each component a `Vector4i` with a given `Int`.
    ///
    /// This operation uses truncated division, which is often not desired as it
    /// does not work well with negative numbers.
    /// Consider using ``posmod`` instead if you want to handle negative numbers.
    public static func % (lhs: Vector4i, rhs: Int) -> Vector4i {
        Self._operatorModule(lhs, rhs)
    }
    
    /// Compares two vectors.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is less than the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors, Z values of the two vectors, and then with the W values.
    /// This operator is useful for sorting vectors.
    public static func < (lhs: Vector4i, rhs: Vector4i) -> Bool {
        Self._operatorLess(lhs, rhs)
    }
    
    /// Compares two vectors.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is less than or equal to the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors, Z values of the two vectors, and then with the W values.
    /// This operator is useful for sorting vectors.
    public static func <= (lhs: Vector4i, rhs: Vector4i) -> Bool {
        Self._operatorLessEqual(lhs, rhs)
    }
    
    /// Compares two vectors.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is greater than the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors, Z values of the two vectors, and then with the W values.
    /// This operator is useful for sorting vectors.
    public static func > (lhs: Vector4i, rhs: Vector4i) -> Bool {
        Self._operatorGreater(lhs, rhs)
    }
    
    /// Compares two vectors.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is greater than or equal to the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors, Z values of the two vectors, and then with the W values.
    /// This operator is useful for sorting vectors.
    public static func >= (lhs: Vector4i, rhs: Vector4i) -> Bool {
        Self._operatorGreaterEqual(lhs, rhs)
    }
    
    /// Adds each component of a `Vector4i` by the components of another `Vector4i`.
    ///
    /// ```swift
    /// print(Vector4i(x: 10, y: 20, z: 30, w: 40) + Vector4i(x: 3, y: 4, z: 5, w: 6))
    /// // Prints "(13, 24, 35, 46)"
    /// ```
    public static func + (lhs: Vector4i, rhs: Vector4i) -> Vector4i {
        Self._operatorAdd(lhs, rhs)
    }
    
    /// Subtracts each component of a `Vector4i` by the components of another `Vector4i`.
    ///
    /// ```swift
    /// print(Vector4i(x: 10, y: 20, z: 30, w: 40) - Vector4i(x: 3, y: 4, z: 5, w: 6))
    /// // Prints "(7, 16, 25, 34)"
    /// ```
    public static func - (lhs: Vector4i, rhs: Vector4i) -> Vector4i {
        Self._operatorSubtract(lhs, rhs)
    }
    
    /// Multiplies each component of a `Vector4i` by the components of another `Vector4i`.
    ///
    /// ```swift
    /// print(Vector4i(x: 10, y: 20, z: 30, w: 40) * Vector4i(x: 3, y: 4, z: 5, w: 6))
    /// // Prints "(30, 80, 150, 240)"
    /// ```
    public static func * (lhs: Vector4i, rhs: Vector4i) -> Vector4i {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// Divides each component of a `Vector4` by the components of another `Vector4`.
    ///
    /// ```swift
    /// print(Vector4(x: 10, y: 20, z: 30, w: 40) / Vector4(x: 2, y: 5, z: 3, w: 4))
    /// // Prints "(5, 4, 10, 10)"
    /// ```
    public static func / (lhs: Vector4i, rhs: Vector4i) -> Vector4i {
        Self._operatorDivide(lhs, rhs)
    }
    
    /// Gets the remainder of each component of a `Vector4i` with the
    /// components of another `Vector4i`.
    ///
    /// This operation uses truncated division, which is often not desired as
    /// it does not work well with negative numbers.
    /// Consider using``posmod`` instead if you want to handle negative numbers.
    public static func % (lhs: Vector4i, rhs: Vector4i) -> Vector4i {
        Self._operatorModule(lhs, rhs)
    }
    
    // MARK: Methods & variables
    
    /// The axis of the vector's highest value.
    ///
    /// If all components are equal, this method returns ``Axis/x``.
    public var maxAxis: Axis {
        .init(rawValue: UInt32(_maxAxisIndex()))!
    }
    
    /// The axis of the vector's lowest value.
    ///
    /// If all components are equal, this method returns ``Axis/w``.
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
    public var sign: Vector4i {
        _sign()
    }
    
    /// A new vector with all components in absolute values (i.e. positive).
    public var abs: Vector4i {
        _abs()
    }
    
    /// Returns a new vector with all components clamped
    /// between the given values.
    public func clamped(min: Vector4i, max: Vector4i) -> Vector4i {
        _clamp(min: min, max: max)
    }
    
    /// Returns a new vector with each component snapped
    /// to the closest multiple of the corresponding component in a given vector.
    public func snapped(step: Vector4i) -> Vector4i {
        _snapped(step: step)
    }
    
    /// Accesses vector component at the given index.
    ///
    /// Indices are in the following order: `x`, `y`, `z`, `w`.
    public subscript(index: Int) -> Int32 {
        get {
            switch index {
            case 0: x
            case 1: y
            case 2: z
            case 3: w
            default: fatalError("Attempting to retrieve value at index \(index) from 4D vector.")
            }
        }
        set(newValue) {
            switch index {
            case 0: x = newValue
            case 1: y = newValue
            case 2: z = newValue
            case 3: w = newValue
            default: fatalError("Attempting to set value at index \(index) from 4D vector.")
            }
        }
    }
}

extension Vector4i: Equatable, Hashable {}

extension Vector4i: AdditiveArithmetic, Comparable {}

extension Vector4i: Codable {
    public func encode(to encoder: Encoder) throws {
        var unkeyedContainer = encoder.unkeyedContainer()
        try unkeyedContainer.encode(x)
        try unkeyedContainer.encode(y)
        try unkeyedContainer.encode(z)
        try unkeyedContainer.encode(w)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        x = try container.decode(Int32.self)
        y = try container.decode(Int32.self)
        z = try container.decode(Int32.self)
        w = try container.decode(Int32.self)
    }
}

extension Vector4i: CustomStringConvertible {
    public var description: String {
        "(\(x), \(y), \(z), \(w))"
    }
}

extension Vector4i: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Vector4i(x: \(x), y: \(y), z: \(z), w: \(w))"
    }
}


/// A 3D vector using integer coordinates.
///
/// This type can be used to represent 2D grid coordinates or any other triplet of integers.
///
/// It uses integer coordinates and is therefore preferable to ``Vector3``
/// when exact precision is required.
///
/// >note: The values are limited to 32 bits, and unlike ``Vector3``
/// this cannot be configured with an engine build option.
/// Use `Int` or ``PackedInt64Array`` if 64-bit values are needed.
///
/// ### Use as Boolean
///
/// In a boolean context, a `Vector3i` evaluates to `false` if
/// it's equal to `(0, 0, 0)`.
/// Otherwise, it always evaluates to `true`.
///
/// ## Topics
///
/// ### Creating Vector3i
///
/// - ``init(x:y:z:)-4iefc``
/// - ``init(x:y:z:)-2bk18``
/// - ``init(x:y:z:)-79zqj``
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
/// - ``forward``
/// - ``back``
///
/// ### Geometric Properties
///
/// - ``x``
/// - ``y``
/// - ``z``
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
public struct Vector3i {
    /// The vector's X component.
    ///
    /// Also accessible by using ``subscript(_:)`` with index `0`.
    public var x: Int
    
    /// The vector's Y component.
    ///
    /// Also accessible by using ``subscript(_:)`` with index `1`.
    public var y: Int
    
    /// The vector's Z component.
    ///
    /// Also accessible by using ``subscript(_:)`` with index `2`.
    public var z: Int
    
    /// Creates a new `Vector3i` from the given `x`,`y` and `z`.
    public init(x: Int, y: Int, z: Int) {
        self.x = x
        self.y = y
        self.z = z
    }
}

extension Vector3i {
    // MARK: Constructors
    
    /// Creates a new `Vector3i` from the given `x`,`y` and `z`.
    public init<T>(x: T, y: T, z: T) where T : BinaryFloatingPoint {
        self.init(x: Int(x), y: Int(y), z: Int(z))
    }
    
    /// Creates a new `Vector3i` from the given `x`,`y` and `z`.
    public init<T>(x: T, y: T, z: T) where T : BinaryInteger {
        self.init(x: Int(x), y: Int(y), z: Int(z))
    }
    
    /// Creates a new `Vector3i` from the given `Vector3`
    /// by truncating components' fractional parts (rounding towards zero).
    ///
    /// For a different behavior consider passing the result of
    /// `Vector3`'s ``Vector3/ceil``, ``Vector3/floor``
    /// or ``Vector3/rounded`` to this constructor instead.
    public init(_ vector3: Vector3) {
        self.init(x: vector3.x, y: vector3.y, z: vector3.z)
    }
    
    /// Creates a default-initialized `Vector3i` with all components set to `0`.
    public init() {
        self.init(x: 0, y: 0, z: 0)
    }
    
    // MARK: Constants
    
    /// A vector with all components set to `0`.
    public static let zero: Vector3i = Vector3i(x: 0, y: 0, z: 0)
    
    /// A vector with all components set to `1`.
    public static let one: Vector3i = Vector3i(x: 1, y: 1, z: 1)
    
    /// A vector with all components equal to `Int32.min`.
    ///
    /// Can be used as a negative integer equivalent
    /// of `Vector3`'s ``Vector3/infinity``.
    public static let min: Vector3i = Vector3i(x: -2147483648, y: -2147483648, z: -2147483648)
    
    /// A vector with all components equal to `Int32.max`.
    ///
    /// Can be used as an integer equivalent
    /// of `Vector3`'s ``Vector3/infinity``.
    public static let max: Vector3i = Vector3i(x: 2147483647, y: 2147483647, z: 2147483647)
    
    /// The left unit vector.
    ///
    /// Represents the local direction of left, and the global direction of west.
    public static let left: Vector3i = Vector3i(x: -1, y: 0, z: 0)
    
    /// The right unit vector.
    ///
    /// Represents the local direction of right, and the global direction of east.
    public static let right: Vector3i = Vector3i(x: 1, y: 0, z: 0)
    
    /// The up unit vector.
    public static let up: Vector3i = Vector3i(x: 0, y: 1, z: 0)
    
    /// The down unit vector.
    public static let down: Vector3i = Vector3i(x: 0, y: -1, z: 0)
    
    /// The forward unit vector.
    ///
    /// Represents the local direction of forward, and the global direction of north.
    public static let forward: Vector3i = Vector3i(x: 0, y: 0, z: -1)
    
    /// The back unit vector.
    ///
    /// Represents the local direction of back, and the global direction of south.
    public static let back: Vector3i = Vector3i(x: 0, y: 0, z: 1)
    
    // MARK: Operators
    
    /// Returns the negative value of the `Vector3i`.
    ///
    /// This is the same as writing `Vector3i(x: -v.x, y: -v.y, z: -v.z)`.
    /// This operation flips the direction of the vector while keeping the same magnitude.
    public static prefix func - (vector3i: Vector3i) -> Vector3i {
        Self._operatorNegate(vector3i)
    }
    
    /// Returns the same value as if the `+` was not there.
    public static prefix func + (vector3i: Vector3i) -> Vector3i {
        Self._operatorPositive(vector3i)
    }
    
    /// Multiplies each component of a `Vector3i` by a value.
    public static func * (lhs: Vector3i, rhs: Int) -> Vector3i {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// Multiplies each component of a `Vector3i` by a value.
    public static func * (lhs: Int, rhs: Vector3i) -> Vector3i {
        rhs * lhs
    }
    
    /// Multiplies each component of a `Vector3i` by a value.
    public static func * (lhs: Vector3i, rhs: Scalar) -> Vector3 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// Multiplies each component of a `Vector3i` by a value.
    public static func * (lhs: Scalar, rhs: Vector3i) -> Vector3 {
        rhs * lhs
    }
    
    /// Divides each component of a `Vector3i` by a value.
    public static func / (lhs: Vector3i, rhs: Int) -> Vector3i {
        Self._operatorDivide(lhs, rhs)
    }
    
    /// Divides each component of a `Vector3i` by a value.
    public static func / (lhs: Vector3i, rhs: Scalar) -> Vector3 {
        Self._operatorDivide(lhs, rhs)
    }
    
    /// Gets the remainder of each component a `Vector3i` with a given `Int`.
    ///
    /// This operation uses truncated division, which is often not desired as it
    /// does not work well with negative numbers.
    /// Consider using ``posmod`` instead if you want to handle negative numbers.
    public static func % (lhs: Vector3i, rhs: Int) -> Vector3i {
        Self._operatorModule(lhs, rhs)
    }
    
    /// Compares two vectors.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is less than the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors, and then with the Z values.
    /// This operator is useful for sorting vectors.
    public static func < (lhs: Vector3i, rhs: Vector3i) -> Bool {
        Self._operatorLess(lhs, rhs)
    }
    
    /// Compares two vectors.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is less than or equal the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors, and then with the Z values.
    /// This operator is useful for sorting vectors.
    public static func <= (lhs: Vector3i, rhs: Vector3i) -> Bool {
        Self._operatorLessEqual(lhs, rhs)
    }
    
    /// Compares two vectors.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is greater than the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors, and then with the Z values.
    /// This operator is useful for sorting vectors.
    public static func > (lhs: Vector3i, rhs: Vector3i) -> Bool {
        Self._operatorGreater(lhs, rhs)
    }
    
    /// Compares two vectors.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is greater than or equal to the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors, and then with the Z values.
    /// This operator is useful for sorting vectors.
    public static func >= (lhs: Vector3i, rhs: Vector3i) -> Bool {
        Self._operatorGreaterEqual(lhs, rhs)
    }
    
    /// Adds each component of a `Vector3i` by the components of another `Vector3i`.
    ///
    /// ```swift
    /// print(Vector3i(x: 10, y: 20, z: 30) + Vector3i(x: 3, y: 4, z: 5))
    /// // Prints "(13, 24, 35)"
    /// ```
    public static func + (lhs: Vector3i, rhs: Vector3i) -> Vector3i {
        Self._operatorAdd(lhs, rhs)
    }
    
    /// Subtracts each component of a `Vector3i` by the components of another `Vector3i`.
    ///
    /// ```swift
    /// print(Vector3i(x: 10, y: 20, z: 30) - Vector3i(x: 3, y: 4, z: 5))
    /// // Prints "(7, 16, 25)"
    /// ```
    public static func - (lhs: Vector3i, rhs: Vector3i) -> Vector3i {
        Self._operatorSubtract(lhs, rhs)
    }
    
    /// Multiplies each component of a `Vector3i` by the components of another `Vector3i`.
    ///
    /// ```swift
    /// print(Vector3i(x: 10, y: 20, z: 30) * Vector3i(x: 3, y: 4, z: 5))
    /// // Prints "(30, 80, 150)"
    /// ```
    public static func * (lhs: Vector3i, rhs: Vector3i) -> Vector3i {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// Divides each component of a `Vector3i` by the components of another `Vector3i`.
    ///
    /// ```swift
    /// print(Vector3i(x: 10, y: 20, z: 30) / Vector3i(x: 2, y: 5, z: 3))
    /// // Prints "(5, 4, 10)"
    /// ```
    public static func / (lhs: Vector3i, rhs: Vector3i) -> Vector3i {
        Self._operatorDivide(lhs, rhs)
    }
    
    /// Gets the remainder of each component of a `Vector3i` with the
    /// components of another `Vector3i`.
    ///
    /// This operation uses truncated division, which is often not desired as
    /// it does not work well with negative numbers.
    /// Consider using``posmod`` instead if you want to handle negative numbers.
    public static func % (lhs: Vector3i, rhs: Vector3i) -> Vector3i {
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
    /// If all components are equal, this method returns ``Axis/z``.
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
    
    /// A vector with each component set to `1.0` if it's positive,
    /// `-1.0` if it's negative, and `0.0` if it's zero.
    public var sign: Vector3i {
        _sign()
    }
    
    /// A new vector with all components in absolute values (i.e. positive).
    public var abs: Vector3i {
        _abs()
    }
    
    /// Returns a new vector with all components clamped
    /// between the given values.
    public func clamped(min: Vector3i, max: Vector3i) -> Vector3i {
        _clamp(min: min, max: max)
    }
    
    /// Returns a new vector with each component snapped
    /// to the closest multiple of the corresponding component in a given vector.
    public func snapped(step: Vector3i) -> Vector3i {
        _snapped(step: step)
    }
    
    /// Accesses vector component at the given index.
    ///
    /// Indices are in the following order: `x`, `y`, `z`.
    public subscript(index: Int) -> Int {
        get {
            switch index {
            case 0: x
            case 1: y
            case 2: z
            default: fatalError("Attempting to retrieve value at index \(index) from 3D vector.")
            }
        }
        set(newValue) {
            switch index {
            case 0: x = newValue
            case 1: y = newValue
            case 2: z = newValue
            default: fatalError("Attempting to set value at index \(index) from 3D vector.")
            }
        }
    }
}

extension Vector3i: Equatable, Hashable {}

extension Vector3i: AdditiveArithmetic, Comparable {}

extension Vector3i: Codable {
    public func encode(to encoder: Encoder) throws {
        var unkeyedContainer = encoder.unkeyedContainer()
        try unkeyedContainer.encode(x)
        try unkeyedContainer.encode(y)
        try unkeyedContainer.encode(z)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        let x = try container.decode(Int.self)
        let y = try container.decode(Int.self)
        let z = try container.decode(Int.self)
        self.init(x: x, y: y, z: z)
    }
}

extension Vector3i: CustomStringConvertible {
    public var description: String {
        "(\(x), \(y), \(z))"
    }
}

extension Vector3i: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Vector3i(x: \(x), y: \(y), z: \(z))"
    }
}

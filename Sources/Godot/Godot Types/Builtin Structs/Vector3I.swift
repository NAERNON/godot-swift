
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
/// In a boolean context, a `Vector3I` evaluates to `false` if
/// it's equal to `(0, 0, 0)`.
/// Otherwise, it always evaluates to `true`.
///
/// ## Topics
///
/// ### Creating Vector3I
///
/// - ``init(x:y:z:)-1hlq5``
/// - ``init(x:y:z:)-47vxz``
/// - ``init(x:y:z:)-806pt``
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
public struct Vector3I {
    /// The vector's X component.
    public var x: Int32
    
    /// The vector's Y component.
    public var y: Int32
    
    /// The vector's Z component.
    public var z: Int32
    
    /// Creates a new `Vector3I` from the given `x`,`y` and `z`.
    public init(x: Int32, y: Int32, z: Int32) {
        self.x = x
        self.y = y
        self.z = z
    }
}

extension Vector3I {
    // MARK: Constructors
    
    /// Creates a new `Vector3I` from the given `x`,`y` and `z`.
    public init<T>(x: T, y: T, z: T) where T : BinaryFloatingPoint {
        self.init(x: Int32(x), y: Int32(y), z: Int32(z))
    }
    
    /// Creates a new `Vector3I` from the given `x`,`y` and `z`.
    public init<T>(x: T, y: T, z: T) where T : BinaryInteger {
        self.init(x: Int32(x), y: Int32(y), z: Int32(z))
    }
    
    /// Creates a new `Vector3I` from the given `Vector3`
    /// by truncating components' fractional parts (rounding towards zero).
    ///
    /// For a different behavior consider passing the result of
    /// `Vector3`'s ``Vector3/ceil``, ``Vector3/floor``
    /// or ``Vector3/rounded`` to this constructor instead.
    public init(_ vector3: Vector3) {
        self.init(x: vector3.x, y: vector3.y, z: vector3.z)
    }
    
    /// Creates a default-initialized `Vector3I` with all components set to `0`.
    public init() {
        self.init(x: 0, y: 0, z: 0)
    }
    
    // MARK: Constants
    
    /// A vector with all components set to `0`.
    public static var zero: Vector3I {
        Vector3I(x: 0, y: 0, z: 0)
    }
    
    /// A vector with all components set to `1`.
    public static var one: Vector3I {
        Vector3I(x: 1, y: 1, z: 1)
    }
    
    /// A vector with all components equal to `Int32.min`.
    ///
    /// Can be used as a negative integer equivalent
    /// of `Vector3`'s ``Vector3/infinity``.
    public static var min: Vector3I {
        Vector3I(x: .min, y: .min, z: .min)
    }
    
    /// A vector with all components equal to `Int32.max`.
    ///
    /// Can be used as an integer equivalent
    /// of `Vector3`'s ``Vector3/infinity``.
    public static var max: Vector3I {
        Vector3I(x: .max, y: .max, z: .max)
    }
    
    /// The left unit vector.
    ///
    /// Represents the local direction of left, and the global direction of west.
    public static var left: Vector3I {
        Vector3I(x: -1, y: 0, z: 0)
    }
    
    /// The right unit vector.
    ///
    /// Represents the local direction of right, and the global direction of east.
    public static var right: Vector3I {
        Vector3I(x: 1, y: 0, z: 0)
    }
    
    /// The up unit vector.
    public static var up: Vector3I {
        Vector3I(x: 0, y: 1, z: 0)
    }
    
    /// The down unit vector.
    public static var down: Vector3I {
        Vector3I(x: 0, y: -1, z: 0)
    }
    
    /// The forward unit vector.
    ///
    /// Represents the local direction of forward, and the global direction of north.
    public static var forward: Vector3I {
        Vector3I(x: 0, y: 0, z: -1)
    }
    
    /// The back unit vector.
    ///
    /// Represents the local direction of back, and the global direction of south.
    public static var back: Vector3I {
        Vector3I(x: 0, y: 0, z: 1)
    }
    
    // MARK: Operators
    
    /// Returns the negative value of the `Vector3I`.
    ///
    /// This is the same as writing `Vector3I(x: -v.x, y: -v.y, z: -v.z)`.
    /// This operation flips the direction of the vector while keeping the same magnitude.
    public static prefix func - (vector3I: Vector3I) -> Vector3I {
        Self._operatorNegate(vector3I)
    }
    
    /// Returns the same value as if the `+` was not there.
    public static prefix func + (vector3I: Vector3I) -> Vector3I {
        Self._operatorPositive(vector3I)
    }
    
    /// Multiplies each component of a `Vector3I` by a value.
    public static func * (lhs: Vector3I, rhs: Int) -> Vector3I {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// Multiplies each component of a `Vector3I` by a value.
    public static func * (lhs: Int, rhs: Vector3I) -> Vector3I {
        rhs * lhs
    }
    
    /// Multiplies each component of a `Vector3I` by a value.
    public static func * (lhs: Vector3I, rhs: FloatingPointType) -> Vector3 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// Multiplies each component of a `Vector3I` by a value.
    public static func * (lhs: FloatingPointType, rhs: Vector3I) -> Vector3 {
        rhs * lhs
    }
    
    /// Divides each component of a `Vector3I` by a value.
    public static func / (lhs: Vector3I, rhs: Int) -> Vector3I {
        Self._operatorDivide(lhs, rhs)
    }
    
    /// Divides each component of a `Vector3I` by a value.
    public static func / (lhs: Vector3I, rhs: FloatingPointType) -> Vector3 {
        Self._operatorDivide(lhs, rhs)
    }
    
    /// Gets the remainder of each component a `Vector3I` with a given `Int`.
    ///
    /// This operation uses truncated division, which is often not desired as it
    /// does not work well with negative numbers.
    /// Consider using ``posmod`` instead if you want to handle negative numbers.
    public static func % (lhs: Vector3I, rhs: Int) -> Vector3I {
        Self._operatorModule(lhs, rhs)
    }
    
    /// Compares two vectors.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is less than the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors, and then with the Z values.
    /// This operator is useful for sorting vectors.
    public static func < (lhs: Vector3I, rhs: Vector3I) -> Bool {
        Self._operatorLess(lhs, rhs)
    }
    
    /// Compares two vectors.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is less than or equal the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors, and then with the Z values.
    /// This operator is useful for sorting vectors.
    public static func <= (lhs: Vector3I, rhs: Vector3I) -> Bool {
        Self._operatorLessEqual(lhs, rhs)
    }
    
    /// Compares two vectors.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is greater than the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors, and then with the Z values.
    /// This operator is useful for sorting vectors.
    public static func > (lhs: Vector3I, rhs: Vector3I) -> Bool {
        Self._operatorGreater(lhs, rhs)
    }
    
    /// Compares two vectors.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is greater than or equal to the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors, and then with the Z values.
    /// This operator is useful for sorting vectors.
    public static func >= (lhs: Vector3I, rhs: Vector3I) -> Bool {
        Self._operatorGreaterEqual(lhs, rhs)
    }
    
    /// Adds each component of a `Vector3I` by the components of another `Vector3I`.
    ///
    /// ```swift
    /// print(Vector3I(x: 10, y: 20, z: 30) + Vector3I(x: 3, y: 4, z: 5))
    /// // Prints "(13, 24, 35)"
    /// ```
    public static func + (lhs: Vector3I, rhs: Vector3I) -> Vector3I {
        Self._operatorAdd(lhs, rhs)
    }
    
    /// Subtracts each component of a `Vector3I` by the components of another `Vector3I`.
    ///
    /// ```swift
    /// print(Vector3I(x: 10, y: 20, z: 30) - Vector3I(x: 3, y: 4, z: 5))
    /// // Prints "(7, 16, 25)"
    /// ```
    public static func - (lhs: Vector3I, rhs: Vector3I) -> Vector3I {
        Self._operatorSubtract(lhs, rhs)
    }
    
    /// Multiplies each component of a `Vector3I` by the components of another `Vector3I`.
    ///
    /// ```swift
    /// print(Vector3I(x: 10, y: 20, z: 30) * Vector3I(x: 3, y: 4, z: 5))
    /// // Prints "(30, 80, 150)"
    /// ```
    public static func * (lhs: Vector3I, rhs: Vector3I) -> Vector3I {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// Divides each component of a `Vector3I` by the components of another `Vector3I`.
    ///
    /// ```swift
    /// print(Vector3I(x: 10, y: 20, z: 30) / Vector3I(x: 2, y: 5, z: 3))
    /// // Prints "(5, 4, 10)"
    /// ```
    public static func / (lhs: Vector3I, rhs: Vector3I) -> Vector3I {
        Self._operatorDivide(lhs, rhs)
    }
    
    /// Gets the remainder of each component of a `Vector3I` with the
    /// components of another `Vector3I`.
    ///
    /// This operation uses truncated division, which is often not desired as
    /// it does not work well with negative numbers.
    /// Consider using``posmod`` instead if you want to handle negative numbers.
    public static func % (lhs: Vector3I, rhs: Vector3I) -> Vector3I {
        Self._operatorModule(lhs, rhs)
    }
    
    // MARK: Methods & variables
    
    /// The axis of the vector's highest value.
    ///
    /// If all components are equal, this method returns ``Axis3D/x``.
    public var maxAxis: Axis3D {
        .init(rawValue: UInt32(_maxAxisIndex()))!
    }
    
    /// The axis of the vector's lowest value.
    ///
    /// If all components are equal, this method returns ``Axis3D/z``.
    public var minAxis: Axis3D {
        .init(rawValue: UInt32(_minAxisIndex()))!
    }
    
    /// The length (magnitude) of the vector.
    public var length: FloatingPointType {
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
    public var sign: Vector3I {
        _sign()
    }
    
    /// A new vector with all components in absolute values (i.e. positive).
    public var abs: Vector3I {
        _abs()
    }
    
    /// Returns a new vector with all components clamped
    /// between the given values.
    public func clamped(min: Vector3I, max: Vector3I) -> Vector3I {
        _clamp(min: min, max: max)
    }
    
    /// Returns a new vector with each component snapped
    /// to the closest multiple of the corresponding component in a given vector.
    public func snapped(step: Vector3I) -> Vector3I {
        _snapped(step: step)
    }
    
    /// Accesses the vector component on the given axis.
    public subscript(axis: Axis3D) -> Int32 {
        get {
            switch axis {
            case .x: x
            case .y: y
            case .z: z
            }
        }
        set(newValue) {
            switch axis {
            case .x: x = newValue
            case .y: y = newValue
            case .z: z = newValue
            }
        }
    }
}

extension Vector3I: Equatable, Hashable {}

extension Vector3I: AdditiveArithmetic, Comparable {}

extension Vector3I: Codable {
    public func encode(to encoder: Encoder) throws {
        var unkeyedContainer = encoder.unkeyedContainer()
        try unkeyedContainer.encode(x)
        try unkeyedContainer.encode(y)
        try unkeyedContainer.encode(z)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        x = try container.decode(Int32.self)
        y = try container.decode(Int32.self)
        z = try container.decode(Int32.self)
    }
}

extension Vector3I: CustomStringConvertible {
    public var description: String {
        "(\(x), \(y), \(z))"
    }
}

extension Vector3I: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Vector3I(x: \(x), y: \(y), z: \(z))"
    }
}


/// A 4D vector using floating point coordinates.
///
/// This type that can be used to represent 4D coordinates or any other quadruplet of numeric values.
///
/// It uses floating-point coordinates.
///
/// See ``Vector4i`` for its integer counterpart.
///
/// >note: If double precision is needed, compile the engine and generate
/// the Godot Swift APIs with the `double` option.
///
/// ### Use as Boolean
///
/// In a boolean context, a `Vector3` evaluates to `false` if
/// it's equal to `(0, 0, 0, 0)`.
/// Otherwise, it always evaluates to `true`.
///
/// ## Topics
///
/// ### Creating Vector3
///
/// - ``init(x:y:z:w:)-6ccge``
/// - ``init(x:y:z:w:)-3y1un``
/// - ``init(x:y:z:w:)-7smxq``
/// - ``init(_:)``
///
/// ### Special Values
///
/// - ``zero``
/// - ``init()``
/// - ``one``
/// - ``infinity``
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
/// - ``distance(to:)``
/// - ``distanceSquared(to:)``
/// - ``direction(to:)``
/// - ``maxAxis``
/// - ``minAxis``
/// - ``isFinite``
/// - ``isApproximatelyZero``
/// - ``isNormalized``
///
/// ### Transformation
///
/// - ``abs``
/// - ``rounded``
/// - ``ceil``
/// - ``floor``
/// - ``normalized``
/// - ``inverted``
/// - ``dot(_:)``
/// - ``sign``
/// - ``clamped(min:max:)``
/// - ``snapped(step:)``
/// - ``posmod(_:)``
/// - ``posmodv(_:)``
/// - ``lerp(to:weight:)``
///
/// ### Interpolation
///
/// - ``cubicInterpolation(b:preA:postB:weight:)``
/// - ``cubicInterpolationInTime(b:preA:postB:weight:bT:preAT:postBT:)``
///
/// ### Comparison
///
/// - ``<(_:_:)``
/// - ``<=(_:_:)``
/// - ``>(_:_:)``
/// - ``>=(_:_:)``
public struct Vector4 {
    /// The vector's X component.
    ///
    /// Also accessible by using ``subscript(_:)`` with index `0`.
    public var x: Scalar
    
    /// The vector's Y component.
    ///
    /// Also accessible by using ``subscript(_:)`` with index `1`.
    public var y: Scalar
    
    /// The vector's Z component.
    ///
    /// Also accessible by using ``subscript(_:)`` with index `2`.
    public var z: Scalar
    
    /// The vector's W component.
    ///
    /// Also accessible by using ``subscript(_:)`` with index `3`.
    public var w: Scalar
    
    /// Creates a new `Vector4` from the given `x`,`y`,`z`, `w`.
    public init(x: Scalar, y: Scalar, z: Scalar, w: Scalar) {
        self.x = x
        self.y = y
        self.z = z
        self.w = w
    }
}

extension Vector4 {
    // MARK: Constructors
    
    /// Creates a new `Vector4` from the given `x`,`y`,`z`, `w`.
    public init<T>(x: T, y: T, z: T, w: T) where T : BinaryFloatingPoint {
        self.init(x: Scalar(x), y: Scalar(y), z: Scalar(z), w: Scalar(w))
    }
    
    /// Creates a new `Vector4` from the given `x`,`y`,`z`, `w`.
    public init<T>(x: T, y: T, z: T, w: T) where T : BinaryInteger {
        self.init(x: Scalar(x), y: Scalar(y), z: Scalar(z), w: Scalar(w))
    }
    
    /// Creates a new `Vector4` from `Vector4i`.
    public init(_ vector4i: Vector4i) {
        self.init(x: vector4i.x, y: vector4i.y, z: vector4i.z, w: vector4i.w)
    }
    
    /// Creates a default-initialized `Vector4` with all components set to `0`.
    public init() {
        self.init(x: 0, y: 0, z: 0, w: 0)
    }
    
    // MARK: Constants
    
    /// A vector with all components set to `0`.
    public static let zero: Vector4 = Vector4(x: 0, y: 0, z: 0, w: 0)
    
    /// A vector with all components set to `1`.
    public static let one: Vector4 = Vector4(x: 1, y: 1, z: 1, w: 1)
    
    /// A vector with all components set to positive infinity.
    public static let infinity: Vector4 = Vector4(x: .infinity, y: .infinity, z: .infinity, w: .infinity)
    
    // MARK: Operators
    
    /// Returns the negative value of the `Vector4`.
    ///
    /// This is the same as writing `Vector4(x: -v.x, y: -v.y, z: -v.z, w: -v.w)`.
    /// This operation flips the direction of the vector while keeping the same magnitude.
    /// With floats, the number zero can be either positive or negative.
    public static prefix func - (vector4: Vector4) -> Vector4 {
        Self._operatorNegate(vector4)
    }
    
    /// Returns the same value as if the `+` was not there.
    public static prefix func + (vector4: Vector4) -> Vector4 {
        Self._operatorPositive(vector4)
    }
    
    /// Multiplies each component of a `Vector4` by a value.
    public static func * (lhs: Vector4, rhs: Int) -> Vector4 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// Multiplies each component of a `Vector4` by a value.
    public static func * (lhs: Int, rhs: Vector4) -> Vector4 {
        rhs * lhs
    }
    
    /// Multiplies each component of a `Vector4` by a value.
    public static func * (lhs: Vector4, rhs: Scalar) -> Vector4 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// Multiplies each component of a `Vector4` by a value.
    public static func * (lhs: Scalar, rhs: Vector4) -> Vector4 {
        rhs * lhs
    }
    
    /// Divides each component of a `Vector4` by a value.
    public static func / (lhs: Vector4, rhs: Int) -> Vector4 {
        Self._operatorDivide(lhs, rhs)
    }
    
    /// Divides each component of a `Vector4` by a value.
    public static func / (lhs: Vector4, rhs: Scalar) -> Vector4 {
        Self._operatorDivide(lhs, rhs)
    }
    
    /// Compares two vectors.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is less than the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors, Z values of the two vectors, and then with the W values.
    /// This operator is useful for sorting vectors.
    ///
    /// >note: Vectors with `NaN` elements don't behave the same as other vectors.
    /// Therefore, the results from this operator may not be accurate if `NaN`s are included.
    public static func < (lhs: Vector4, rhs: Vector4) -> Bool {
        Self._operatorLess(lhs, rhs)
    }
    
    /// Compares two vectors.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is less than or equal to the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors, Z values of the two vectors, and then with the W values.
    /// This operator is useful for sorting vectors.
    ///
    /// >note: Vectors with `NaN` elements don't behave the same as other vectors.
    /// Therefore, the results from this operator may not be accurate if `NaN`s are included.
    public static func <= (lhs: Vector4, rhs: Vector4) -> Bool {
        Self._operatorLessEqual(lhs, rhs)
    }
    
    /// Compares two vectors.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is greater than the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors, Z values of the two vectors, and then with the W values.
    /// This operator is useful for sorting vectors.
    ///
    /// >note: Vectors with `NaN` elements don't behave the same as other vectors.
    /// Therefore, the results from this operator may not be accurate if `NaN`s are included.
    public static func > (lhs: Vector4, rhs: Vector4) -> Bool {
        Self._operatorGreater(lhs, rhs)
    }
    
    /// Compares two vectors.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is greater than or equal to the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors, Z values of the two vectors, and then with the W values.
    /// This operator is useful for sorting vectors.
    ///
    /// >note: Vectors with `NaN` elements don't behave the same as other vectors.
    /// Therefore, the results from this operator may not be accurate if `NaN`s are included.
    public static func >= (lhs: Vector4, rhs: Vector4) -> Bool {
        Self._operatorGreaterEqual(lhs, rhs)
    }
    
    /// Adds each component of a `Vector4` by the components of another `Vector4`.
    ///
    /// ```swift
    /// print(Vector4(x: 10, y: 20, z: 30, w: 40) + Vector4(x: 3, y: 4, z: 5, w: 6))
    /// // Prints "(13, 24, 35, 46)"
    /// ```
    public static func + (lhs: Vector4, rhs: Vector4) -> Vector4 {
        Self._operatorAdd(lhs, rhs)
    }
    
    /// Subtracts each component of a `Vector4` by the components of another `Vector4`.
    ///
    /// ```swift
    /// print(Vector4(x: 10, y: 20, z: 30, w: 40) - Vector4(x: 3, y: 4, z: 5, w: 6))
    /// // Prints "(7, 16, 25, 34)"
    /// ```
    public static func - (lhs: Vector4, rhs: Vector4) -> Vector4 {
        Self._operatorSubtract(lhs, rhs)
    }
    
    /// Multiplies each component of a `Vector4` by the components of another `Vector4`.
    ///
    /// ```swift
    /// print(Vector4(x: 10, y: 20, z: 30, w: 40) * Vector4(x: 3, y: 4, z: 5, w: 6))
    /// // Prints "(30, 80, 150, 240)"
    /// ```
    public static func * (lhs: Vector4, rhs: Vector4) -> Vector4 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// Divides each component of a `Vector4` by the components of another `Vector4`.
    ///
    /// ```swift
    /// print(Vector4(x: 10, y: 20, z: 30, w: 40) / Vector4(x: 2, y: 5, z: 3, w: 4))
    /// // Prints "(5, 4, 10, 10)"
    /// ```
    public static func / (lhs: Vector4, rhs: Vector4) -> Vector4 {
        Self._operatorDivide(lhs, rhs)
    }
    
    /// Transforms (multiplies) a `Vector4` by a transpose of the given
    /// `Projection` matrix.
    ///
    /// For transforming by inverse of an affine transformation (e.g. with scaling)
    /// `transform.inverted * vector` can be used instead.
    /// See `Projection`'s ``Projection/inverted``.
    public static func * (lhs: Vector4, rhs: Projection) -> Vector4 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    // MARK: Methods & variables
    
    /// The axis of the vector's lowest value.
    ///
    /// If all components are equal, this method returns ``Axis/w``.
    public var minAxis: Axis {
        .init(rawValue: UInt32(_minAxisIndex()))!
    }
    
    /// The axis of the vector's highest value.
    ///
    /// If all components are equal, this method returns ``Axis/x``.
    public var maxAxis: Axis {
        .init(rawValue: UInt32(_maxAxisIndex()))!
    }
    
    /// The length (magnitude) of the vector.
    public var length: Scalar {
        _length()
    }
    
    /// The squared length (squared magnitude) of this vector.
    ///
    /// This property runs faster than ``length``, so prefer it if you need
    /// to compare vectors or need the squared distance for some formula.
    public var lengthSquared: Scalar {
        _lengthSquared()
    }
    
    /// A new vector with all components in absolute values (i.e. positive).
    public var abs: Vector4 {
        _abs()
    }
    
    /// A vector with each component set to `1.0` if it's positive,
    /// `-1.0` if it's negative, and `0.0` if it's zero.
    public var sign: Vector4 {
        _sign()
    }
    
    /// A vector with all components rounded down (towards negative infinity).
    public var floor: Vector4 {
        _floor()
    }
    
    /// A vector with all components rounded up (towards positive infinity).
    public var ceil: Vector4 {
        _ceil()
    }
    
    /// A vector with all components rounded to the nearest integer,
    /// with halfway cases rounded away from zero.
    public var rounded: Vector4 {
        _round()
    }
    
    /// Returns the result of the linear interpolation between the vector
    /// and another one by a given amount.
    ///
    /// - Parameters:
    ///   - other: The interpolation destination.
    ///   - weight: The interpolation amount. Must be between `0` and `1`.
    public func lerp(to other: Vector4, weight: Scalar) -> Vector4 {
        _lerp(to: other, weight: weight)
    }
    
    /// Performs a cubic interpolation between the vector and another one.
    ///
    /// - Parameters:
    ///   - b: The interpolation destination.
    ///   - preA: The first handle.
    ///   - postB: The second handle.
    ///   - weight: The interpolation amount. Must be between `0` and `1`.
    public func cubicInterpolation(
        b: Vector4,
        preA: Vector4,
        postB: Vector4,
        weight: Scalar
    ) -> Vector4 {
        _cubicInterpolate(b: b, preA: preA, postB: postB, weight: weight)
    }
    
    /// Performs a cubic interpolation between the vector and another one.
    ///
    /// - Parameters:
    ///   - b: The interpolation destination.
    ///   - preA: The first handle.
    ///   - postB: The second handle.
    ///   - weight: The interpolation amount. Must be between `0` and `1`.
    ///
    /// It can perform smoother interpolation than ``cubicInterpolation(b:preA:postB:weight:)`` by the time values.
    public func cubicInterpolationInTime(
        b: Vector4,
        preA: Vector4,
        postB: Vector4,
        weight: Scalar,
        bT: Scalar,
        preAT: Scalar,
        postBT: Scalar
    ) -> Vector4 {
        _cubicInterpolateInTime(b: b, preA: preA, postB: postB, weight: weight, bT: bT, preAT: preAT, postBT: postBT)
    }
    
    /// Returns a vector composed of the ``fposmod(x:y:)``
    /// of the vector's components and `mod`.
    public func posmod(_ mod: Scalar) -> Vector4 {
        _posmod(mod: mod)
    }
    
    /// Returns a vector composed of the ``fposmod(x:y:)``
    /// of the vector's components and `modv`'s components.
    public func posmodv(_ modv: Vector4) -> Vector4 {
        _posmodv(modv: modv)
    }
    
    /// Returns a new vector with each component snapped to
    /// the nearest multiple of the corresponding component in a given vector.
    ///
    /// This can also be used to round the components
    /// to an arbitrary number of decimals.
    public func snapped(step: Vector4) -> Vector4 {
        _snapped(step: step)
    }
    
    /// Returns a new vector with all components clamped
    /// between the given values.
    public func clamped(min: Vector4, max: Vector4) -> Vector4 {
        _clamp(min: min, max: max)
    }
    
    /// Returns the result of scaling the vector to unit length.
    ///
    /// Equivalent to `v / v.length`.
    ///
    /// >important: This function may return incorrect values
    /// if the input vector length is near zero.
    ///
    /// ## See Also
    ///
    /// - ``isNormalized``
    public var normalized: Vector4 {
        _normalized()
    }
    
    /// A Boolean value indicating whether the vector is normalized,
    /// i.e. its length is approximately equal to `1`.
    public var isNormalized: Bool {
        _isNormalized()
    }
    
    /// Returns the normalized vector pointing from the vector to another one.
    ///
    /// This is equivalent to using `(b - a).normalized`.
    public func direction(to other: Vector4) -> Vector4 {
        _direction(to: other)
    }
    
    /// Returns the distance between the vector and another one.
    public func distance(to other: Vector4) -> Scalar {
        _distance(to: other)
    }
    
    /// Returns the squared distance between the vector and another one.
    ///
    /// This method runs faster than ``distance(to:)``, so prefer it if you
    /// need to compare vectors or need the squared distance for some formula.
    public func distanceSquared(to other: Vector4) -> Scalar {
        _distanceSquared(to: other)
    }
    
    /// Returns the dot product of the vector and another one.
    public func dot(_ other: Vector4) -> Scalar {
        _dot(with: other)
    }
    
    /// The inverse of the vector.
    ///
    /// This is the same as `Vector3(x: 1.0 / v.x, y: 1.0 / v.y, z: 1.0 / v.z, w: 1.0 / v/z)`.
    public var inverted: Vector4 {
        _inverse()
    }
    
    /// Returns `true` if the vector is approximately equal to another one.
    public func isApproximatelyEqual(to other: Vector4) -> Bool {
        _isEqualApprox(to: other)
    }
    
    /// A Boolean value indicating whether the vector's values are approximately zero.
    ///
    /// This method is faster than using ``isApproximatelyEqual(to:)``
    /// with value zero.
    public var isApproximatelyZero: Bool {
        _isZeroApprox()
    }
    
    /// A Boolean value indicating whether the vector is finite.
    public var isFinite: Bool {
        _isFinite()
    }
    
    /// Accesses vector component at the given index.
    ///
    /// Indices are in the following order: `x`, `y`, `z`, `w`.
    public subscript(index: Int) -> Scalar {
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

extension Vector4: Equatable, Hashable {}

extension Vector4: AdditiveArithmetic, Comparable {}

extension Vector4: Codable {
    public func encode(to encoder: Encoder) throws {
        var unkeyedContainer = encoder.unkeyedContainer()
        try unkeyedContainer.encode(x)
        try unkeyedContainer.encode(y)
        try unkeyedContainer.encode(z)
        try unkeyedContainer.encode(w)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        let x = try container.decode(Scalar.self)
        let y = try container.decode(Scalar.self)
        let z = try container.decode(Scalar.self)
        let w = try container.decode(Scalar.self)
        self.init(x: x, y: y, z: z, w: w)
    }
}

extension Vector4: CustomStringConvertible {
    public var description: String {
        "(\(x), \(y), \(z), \(w))"
    }
}

extension Vector4: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Vector4(x: \(x), y: \(y), z: \(z), w: \(w))"
    }
}


/// A 2D vector using floating point coordinates.
///
/// This type that can be used to represent 2D coordinates or any other pair of numeric values.
///
/// It uses floating-point coordinates.
///
/// See ``Vector2I`` for its integer counterpart.
///
/// >note: If double precision is needed, compile the engine and generate
/// the Godot Swift APIs with the `double` option.
///
/// ### Use as Boolean
///
/// In a boolean context, a `Vector2` evaluates to `false` if
/// it's equal to `(0, 0)`.
/// Otherwise, it always evaluates to `true`.
///
/// ## Topics
///
/// ### Creating Vector2
///
/// - ``init(x:y:)-3i03d``
/// - ``init(x:y:)-9agc0``
/// - ``init(x:y:)-2xcr``
/// - ``init(_:)``
/// - ``fromAngle(_:)``
///
/// ### Special Values
///
/// - ``zero``
/// - ``init()``
/// - ``one``
/// - ``infinity``
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
/// - ``distance(to:)``
/// - ``distanceSquared(to:)``
/// - ``angle``
/// - ``angle(to:)``
/// - ``angle(toPoint:)``
/// - ``aspect``
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
/// - ``orthogonal``
/// - ``limitLength(_:)``
/// - ``cross(_:)``
/// - ``dot(_:)``
/// - ``rotated(by:)``
/// - ``direction(to:)``
/// - ``moved(toward:delta:)``
/// - ``sign``
/// - ``bounce(_:)``
/// - ``project(_:)``
/// - ``reflect(_:)``
/// - ``clamped(min:max:)``
/// - ``slide(_:)``
/// - ``snapped(step:)``
/// - ``posmod(_:)``
/// - ``posmodv(_:)``
/// - ``lerp(to:weight:)``
/// - ``lerp(_:_:weight:)``
/// - ``lerpAngle(_:_:weight:)``
/// - ``inverseLerp(_:_:weight:)``
/// - ``slerp(to:weight:)``
///
/// ### Interpolation
///
/// - ``bezierInterpolation(control1:control2:end:t:)``
/// - ``bezierDerivative(control1:control2:end:t:)``
/// - ``cubicInterpolation(b:preA:postB:weight:)``
/// - ``cubicInterpolationInTime(b:preA:postB:weight:bT:preAT:postBT:)``
///
/// ### Comparison
///
/// - ``<(_:_:)``
/// - ``<=(_:_:)``
/// - ``>(_:_:)``
/// - ``>=(_:_:)``
public struct Vector2 {
    /// The vector's X component.
    public var x: Scalar
    
    /// The vector's Y component.
    public var y: Scalar
    
    /// Creates a new `Vector2` from the given `x` and `y`.
    public init(x: Scalar, y: Scalar) {
        self.x = x
        self.y = y
    }
}

extension Vector2 {
    // MARK: Constructors
    
    /// Constructs a new `Vector2` from the given `x` and `y`.
    public init<T>(x: T, y: T) where T : BinaryFloatingPoint {
        self.init(x: Scalar(x), y: Scalar(y))
    }
    
    /// Constructs a new `Vector2` from the given `x` and `y`.
    public init<T>(x: T, y: T) where T : BinaryInteger {
        self.init(x: Scalar(x), y: Scalar(y))
    }
    
    /// Creates a new `Vector2` from `Vector2I`.
    public init(_ vector2I: Vector2I) {
        self.init(x: vector2I.x, y: vector2I.y)
    }
    
    /// Creates a default-initialized `Vector2` with all components set to `0`.
    public init() {
        self.init(x: 0, y: 0)
    }
    
    // MARK: Constants
    
    /// A vector with all components set to `0`.
    public static let zero: Vector2 = Vector2(x: 0, y: 0)
    
    /// A vector with all components set to `1`.
    public static let one: Vector2 = Vector2(x: 1, y: 1)
    
    /// A vector with all components set to positive infinity.
    public static let infinity: Vector2 = Vector2(x: .infinity, y: .infinity)
    
    /// The left unit vector.
    ///
    /// Represents the direction of left.
    public static let left: Vector2 = Vector2(x: -1, y: 0)
    
    /// The right unit vector.
    ///
    /// Represents the direction of right.
    public static let right: Vector2 = Vector2(x: 1, y: 0)
    
    /// The up unit vector.
    ///
    /// Y is down in 2D, so this vector points -Y.
    public static let up: Vector2 = Vector2(x: 0, y: -1)
    
    /// The down unit vector.
    ///
    /// Y is down in 2D, so this vector points +Y.
    public static let down: Vector2 = Vector2(x: 0, y: 1)
    
    // MARK: Operators
    
    /// Returns the negative value of the `Vector2`.
    ///
    /// This is the same as writing `Vector2(x: -v.x, y: -v.y)`.
    /// This operation flips the direction of the vector while keeping the same magnitude.
    /// With floats, the number zero can be either positive or negative.
    public static prefix func - (vector2: Vector2) -> Vector2 {
        Self._operatorNegate(vector2)
    }
    
    /// Returns the same value as if the `+` was not there.
    public static prefix func + (vector2: Vector2) -> Vector2 {
        Self._operatorPositive(vector2)
    }
    
    /// Multiplies each component of a `Vector2` by a value.
    public static func * (lhs: Vector2, rhs: Int) -> Vector2 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// Multiplies each component of a `Vector2` by a value.
    public static func * (lhs: Int, rhs: Vector2) -> Vector2 {
        rhs * lhs
    }
    
    /// Multiplies each component of a `Vector2` by a value.
    public static func * (lhs: Vector2, rhs: Scalar) -> Vector2 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// Multiplies each component of a `Vector2` by a value.
    public static func * (lhs: Scalar, rhs: Vector2) -> Vector2 {
        rhs * lhs
    }
    
    /// Divides each component of a `Vector2` by a value.
    public static func / (lhs: Vector2, rhs: Int) -> Vector2 {
        Self._operatorDivide(lhs, rhs)
    }
    
    /// Divides each component of a `Vector2` by a value.
    public static func / (lhs: Vector2, rhs: Scalar) -> Vector2 {
        Self._operatorDivide(lhs, rhs)
    }
    
    /// Compares two vectors.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is less than the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors. This operator is useful for sorting vectors.
    ///
    /// >note: Vectors with `NaN` elements don't behave the same as other vectors.
    /// Therefore, the results from this operator may not be accurate if `NaN`s are included.
    public static func < (lhs: Vector2, rhs: Vector2) -> Bool {
        Self._operatorLess(lhs, rhs)
    }
    
    /// Compares two vectors.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is less than or equal to the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors. This operator is useful for sorting vectors.
    ///
    /// >note: Vectors with `NaN` elements don't behave the same as other vectors.
    /// Therefore, the results from this operator may not be accurate if `NaN`s are included.
    public static func <= (lhs: Vector2, rhs: Vector2) -> Bool {
        Self._operatorLessEqual(lhs, rhs)
    }
    
    /// Compares two vectors.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is greater than the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors. This operator is useful for sorting vectors.
    ///
    /// >note: Vectors with `NaN` elements don't behave the same as other vectors.
    /// Therefore, the results from this operator may not be accurate if `NaN`s are included.
    public static func > (lhs: Vector2, rhs: Vector2) -> Bool {
        Self._operatorGreater(lhs, rhs)
    }
    
    /// Compares two vectors.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is greater than or equal to the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors. This operator is useful for sorting vectors.
    ///
    /// >note: Vectors with `NaN` elements don't behave the same as other vectors.
    /// Therefore, the results from this operator may not be accurate if `NaN`s are included.
    public static func >= (lhs: Vector2, rhs: Vector2) -> Bool {
        Self._operatorGreaterEqual(lhs, rhs)
    }
    
    /// Adds each component of a `Vector2` by the components of another `Vector2`.
    ///
    /// ```swift
    /// print(Vector2(x: 10, y: 20) + Vector2(x: 3, y: 4))
    /// // Prints "(13, 24)"
    /// ```
    public static func + (lhs: Vector2, rhs: Vector2) -> Vector2 {
        Self._operatorAdd(lhs, rhs)
    }
    
    /// Subtracts each component of a `Vector2` by the components of another `Vector2`.
    ///
    /// ```swift
    /// print(Vector2(x: 10, y: 20) - Vector2(x: 3, y: 4))
    /// // Prints "(7, 16)"
    /// ```
    public static func - (lhs: Vector2, rhs: Vector2) -> Vector2 {
        Self._operatorSubtract(lhs, rhs)
    }
    
    /// Multiplies each component of a `Vector2` by the components of another `Vector2`.
    ///
    /// ```swift
    /// print(Vector2(x: 10, y: 20) * Vector2(x: 3, y: 4))
    /// // Prints "(30, 80)"
    /// ```
    public static func * (lhs: Vector2, rhs: Vector2) -> Vector2 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// Divides each component of a `Vector2` by the components of another `Vector2`.
    ///
    /// ```swift
    /// print(Vector2(x: 10, y: 20) / Vector2(x: 2, y: 5))
    /// // Prints "(5, 4)"
    /// ```
    public static func / (lhs: Vector2, rhs: Vector2) -> Vector2 {
        Self._operatorDivide(lhs, rhs)
    }
    
    /// Inversely transforms (multiplies) a `Vector2` by a 2D transformation matrix.
    ///
    /// This operator assumes that the transformation basis is
    /// orthonormal (i.e. rotation/reflection is fine, scaling/skew is not).
    ///
    /// `vector * transform` is equivalent to `transform.inverted * vector`.
    /// See `Transform2D`'s ``Transform2D/inverted``.
    ///
    /// For transforming by inverse of an affine transformation (e.g. with scaling)
    /// `transform.affineInverted * vector` can be used instead.
    /// See `Transform2D`'s ``Transform2D/affineInverted``.
    public static func * (lhs: Vector2, rhs: Transform2D) -> Vector2 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    // MARK: Methods & variables
    
    /// The vector's angle with respect to the positive X axis,
    /// or `(1, 0)` vector, in radians.
    ///
    /// For example, `Vector2.right.angle` will return zero,
    /// `Vector2.down.angle` will return `pi/2` (a quarter turn, or 90 degrees),
    /// and `Vector2(x: 1, y: -1).angle` will return `-pi/4`
    /// (a negative eighth turn, or -45 degrees).
    ///
    /// Equivalent to the result of ``atan2(y:x:)`` when called with
    /// the vector's ``y`` and ``x`` as parameters.
    public var angle: Scalar {
        _angle()
    }
    
    /// Returns the angle to the given vector, in radians.
    public func angle(to other: Vector2) -> Scalar {
        _angle(to: other)
    }
    
    /// Returns the angle between the line connecting the
    /// two points and the X axis, in radians.
    ///
    /// `a.angle(toPoint: b)` is equivalent of doing `(b - a).angle`.
    public func angle(toPoint point: Vector2) -> Scalar {
        _angleToPoint(to: point)
    }
    
    /// Returns the normalized vector pointing from the vector to another one.
    ///
    /// This is equivalent to using `(b - a).normalized`.
    public func direction(to other: Vector2) -> Vector2 {
        _direction(to: other)
    }
    
    /// Returns the distance between the vector and another one.
    public func distance(to other: Vector2) -> Scalar {
        _distance(to: other)
    }
    
    /// Returns the squared distance between the vector and another one.
    ///
    /// This method runs faster than ``distance(to:)``, so prefer it if you
    /// need to compare vectors or need the squared distance for some formula.
    public func distanceSquared(to other: Vector2) -> Scalar {
        _distanceSquared(to: other)
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
    
    /// Returns the vector with a maximum length by limiting its length.
    public func limitLength(_ length: Scalar = 1.0) -> Vector2 {
        _limitLength(length)
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
    public var normalized: Vector2 {
        _normalized()
    }
    
    /// A Boolean value indicating whether the vector is normalized,
    /// i.e. its length is approximately equal to `1`.
    public var isNormalized: Bool {
        _isNormalized()
    }
    
    /// Returns `true` if the vector is approximately equal to another one.
    public func isApproximatelyEqual(to other: Vector2) -> Bool {
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
    
    /// Returns a vector composed of the ``fposmod(x:y:)``
    /// of the vector's components and `mod`.
    public func posmod(_ mod: Scalar) -> Vector2 {
        _posmod(mod: mod)
    }
    
    /// Returns a vector composed of the ``fposmod(x:y:)``
    /// of the vector's components and `modv`'s components.
    public func posmodv(_ modv: Vector2) -> Vector2 {
        _posmodv(modv: modv)
    }
    
    /// Returns the result of projecting the vector onto a given vector.
    public func project(_ other: Vector2) -> Vector2 {
        _project(other)
    }
    
    /// Returns the result of the linear interpolation between the vector
    /// and another one by a given amount.
    ///
    /// - Parameters:
    ///   - other: The interpolation destination.
    ///   - weight: The interpolation amount. Must be between `0` and `1`.
    public func lerp(to other: Vector2, weight: Scalar) -> Vector2 {
        _lerp(to: other, weight: weight)
    }
    
    /// Returns the result of spherical linear interpolation between the vector
    /// and another one by a given amount.
    ///
    /// This method also handles interpolating the lengths if the input
    /// vectors have different lengths. For the special case of one
    /// or both input vectors having zero length, this method behaves like ``lerp(to:weight:)``.
    ///
    /// - Parameters:
    ///   - other: The interpolation destination.
    ///   - weight: The interpolation amount. Must be between `0` and `1`.
    public func slerp(to other: Vector2, weight: Scalar) -> Vector2 {
        _slerp(to: other, weight: weight)
    }
    
    /// Performs a cubic interpolation between the vector and another one.
    ///
    /// - Parameters:
    ///   - b: The interpolation destination.
    ///   - preA: The first handle.
    ///   - postB: The second handle.
    ///   - weight: The interpolation amount. Must be between `0` and `1`.
    public func cubicInterpolation(
        b: Vector2,
        preA: Vector2,
        postB: Vector2,
        weight: Scalar
    ) -> Vector2 {
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
        b: Vector2,
        preA: Vector2,
        postB: Vector2,
        weight: Scalar,
        bT: Scalar,
        preAT: Scalar,
        postBT: Scalar
    ) -> Vector2 {
        _cubicInterpolateInTime(b: b, preA: preA, postB: postB, weight: weight, bT: bT, preAT: preAT, postBT: postBT)
    }
    
    /// Returns the point at the given `t` on the Bézier curve
    /// defined by the vector and the given control points.
    public func bezierInterpolation(control1: Vector2, control2: Vector2, end: Vector2, t: Scalar) -> Vector2 {
        _bezierInterpolate(control1: control1, control2: control2, end: end, t: t)
    }
    
    /// Returns the derivative at the given `t` on the Bézier curve
    /// defined by the vector and the given control points.
    public func bezierDerivative(control1: Vector2, control2: Vector2, end: Vector2, t: Scalar) -> Vector2 {
        _bezierDerivative(control1: control1, control2: control2, end: end, t: t)
    }
    
    /// The axis of the vector's highest value.
    ///
    /// If all components are equal, this method returns ``Axis2D/x``.
    public var maxAxis: Axis2D {
        .init(rawValue: UInt32(_maxAxisIndex()))!
    }
    
    /// The axis of the vector's lowest value.
    ///
    /// If all components are equal, this method returns ``Axis2D/y``.
    public var minAxis: Axis2D {
        .init(rawValue: UInt32(_minAxisIndex()))!
    }
    
    /// Returns a new vector moved toward to by a fixed amount.
    ///
    /// Will not go past the final value.
    public func moved(toward other: Vector2, delta: Scalar) -> Vector2 {
        _moveToward(to: other, delta: delta)
    }
    
    /// Returns the result of rotating the vector by angle (in radians).
    public func rotated(by angle: Scalar) -> Vector2 {
        _rotated(angle: angle)
    }
    
    /// A perpendicular vector rotated 90 degrees counter-clockwise
    /// compared to the original, with the same length.
    public var orthogonal: Vector2 {
        _orthogonal()
    }
    
    /// A vector with all components rounded down (towards negative infinity).
    public var floor: Vector2 {
        _floor()
    }
    
    /// A vector with all components rounded up (towards positive infinity).
    public var ceil: Vector2 {
        _ceil()
    }
    
    /// A vector with all components rounded to the nearest integer,
    /// with halfway cases rounded away from zero.
    public var rounded: Vector2 {
        _round()
    }
    
    /// The aspect ratio of this vector, the ratio of `x` to `y`.
    public var aspect: Scalar {
        _aspect()
    }
    
    /// Returns the dot product of the vector and another one.
    ///
    /// This can be used to compare the angle between two vectors.
    /// For example, this can be used to determine whether
    /// an enemy is facing the player.
    ///
    /// The dot product will be `0` for a straight angle (90 degrees),
    /// greater than 0 for angles narrower than 90 degrees
    /// and lower than 0 for angles wider than 90 degrees.
    ///
    /// When using unit (normalized) vectors, the result will always be
    /// between `-1.0` (180 degree angle) when the vectors
    /// are facing opposite directions,
    /// and `1.0` (0 degree angle) when the vectors are aligned.
    ///
    /// >note: `a.dot(b)` is equivalent to `b.dot(a)`.
    public func dot(_ other: Vector2) -> Scalar {
        _dot(with: other)
    }
    
    /// Returns the result of sliding the vector along
    /// a plane defined by a given normal.
    public func slide(_ other: Vector2) -> Vector2 {
        _slide(other)
    }
    
    /// Returns a vector "bounced off" from a plane defined by the given normal.
    public func bounce(_ other: Vector2) -> Vector2 {
        _bounce(other)
    }
    
    /// Returns the result of reflecting the vector from a line
    /// defined by a given direction vector.
    public func reflect(_ other: Vector2) -> Vector2 {
        _reflect(other)
    }
    
    /// Returns the 2D analog of the cross product for the vector and another one.
    ///
    /// This is the signed area of the parallelogram formed by the two vectors.
    /// If the second vector is clockwise from the first vector,
    /// then the cross product is the positive area.
    /// If counter-clockwise, the cross product is the negative area.
    ///
    /// >note: Cross product is not defined in 2D mathematically.
    /// This method embeds the 2D vectors in the XY plane of 3D space
    /// and uses their cross product's Z component as the analog.
    public func cross(_ other: Vector2) -> Scalar {
        _cross(with: other)
    }
    
    /// A new vector with all components in absolute values (i.e. positive).
    public var abs: Vector2 {
        _abs()
    }
    
    /// A vector with each component set to `1.0` if it's positive,
    /// `-1.0` if it's negative, and `0.0` if it's zero.
    public var sign: Vector2 {
        _sign()
    }
    
    /// Returns a new vector with all components clamped
    /// between the given values.
    public func clamped(min: Vector2, max: Vector2) -> Vector2 {
        _clamp(min: min, max: max)
    }
    
    /// Returns a new vector with each component snapped to
    /// the nearest multiple of the corresponding component in a given vector.
    ///
    /// This can also be used to round the components
    /// to an arbitrary number of decimals.
    public func snapped(step: Vector2) -> Vector2 {
        _snapped(step: step)
    }
    
    /// Creates a unit `Vector2` rotated to the given angle in radians.
    ///
    /// This is equivalent to doing `Vector2(x: cos(angle), y: sin(angle))` or `Vector2.right.rotated(angle)`.
    ///
    /// ```swift
    /// print(Vector2.fromAngle(0))
    /// // Prints "(1, 0)"
    /// print(Vector2(x: 1, y: 0).angle)
    /// // Prints "0", which is the angle used above.
    /// print(Vector2.fromAngle(.pi / 2))
    /// // Prints "(0, 1)"
    /// ```
    public static func fromAngle(_ angle: Scalar) -> Vector2 {
        _fromAngle(angle)
    }
    
    /// Accesses the vector component on the given axis.
    public subscript(axis: Axis2D) -> Scalar {
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

extension Vector2: Equatable, Hashable {}

extension Vector2: AdditiveArithmetic, Comparable {}

extension Vector2: Codable {
    public func encode(to encoder: Encoder) throws {
        var unkeyedContainer = encoder.unkeyedContainer()
        try unkeyedContainer.encode(x)
        try unkeyedContainer.encode(y)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        x = try container.decode(Scalar.self)
        y = try container.decode(Scalar.self)
    }
}

extension Vector2: CustomStringConvertible {
    public var description: String {
        "(\(x), \(y))"
    }
}

extension Vector2: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Vector2(x: \(x), y: \(y))"
    }
}

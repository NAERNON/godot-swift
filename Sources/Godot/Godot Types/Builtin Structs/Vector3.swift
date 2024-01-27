
/// A 3D vector using floating point coordinates.
///
/// This type that can be used to represent 3D coordinates or any other triplet of numeric values.
///
/// It uses floating-point coordinates.
///
/// See ``Vector3I`` for its integer counterpart.
///
/// >note: If double precision is needed, compile the engine and generate
/// the Godot Swift APIs with the `double` option.
///
/// ### Use as Boolean
///
/// In a boolean context, a `Vector3` evaluates to `false` if
/// it's equal to `(0, 0, 0)`.
/// Otherwise, it always evaluates to `true`.
///
/// ## Topics
///
/// ### Creating Vector3
///
/// - ``init(x:y:z:)-6eyfw``
/// - ``init(x:y:z:)-3i2mp``
/// - ``init(x:y:z:)-5fqns``
/// - ``init(_:)``
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
/// - ``forward``
/// - ``back``
/// - ``modelLeft``
/// - ``modelRight``
/// - ``modelTop``
/// - ``modelBottom``
/// - ``modelFront``
/// - ``modelRear``
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
/// - ``distance(to:)``
/// - ``distanceSquared(to:)``
/// - ``angle(to:)``
/// - ``signedAngle(to:around:)``
/// - ``maxAxis``
/// - ``minAxis``
/// - ``isFinite``
/// - ``isApproximatelyZero``
/// - ``isNormalized``
/// - ``outer(_:)``
///
/// ### Transformation
///
/// - ``abs``
/// - ``rounded``
/// - ``ceil``
/// - ``floor``
/// - ``normalized``
/// - ``inverted``
/// - ``limitLength(_:)``
/// - ``cross(_:)``
/// - ``dot(_:)``
/// - ``rotated(by:around:)``
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
/// ### Octahedron encoding
///
/// - ``octahedronEncoded``
/// - ``octahedronDecoded(uv:)``
///
/// ### Comparison
///
/// - ``<(_:_:)``
/// - ``<=(_:_:)``
/// - ``>(_:_:)``
/// - ``>=(_:_:)``
public struct Vector3 {
    /// The vector's X component.
    public var x: Scalar
    
    /// The vector's Y component.
    public var y: Scalar
    
    /// The vector's Z component.
    public var z: Scalar
    
    /// Creates a new `Vector3` from the given `x`,`y` and `z`.
    public init(x: Scalar, y: Scalar, z: Scalar) {
        self.x = x
        self.y = y
        self.z = z
    }
}

extension Vector3 {
    // MARK: Constructors
    
    /// Creates a new `Vector3` from the given `x`,`y` and `z`.
    public init<T>(x: T, y: T, z: T) where T : BinaryFloatingPoint {
        self.init(x: Scalar(x), y: Scalar(y), z: Scalar(z))
    }
    
    /// Creates a new `Vector3` from the given `x`,`y` and `z`.
    public init<T>(x: T, y: T, z: T) where T : BinaryInteger {
        self.init(x: Scalar(x), y: Scalar(y), z: Scalar(z))
    }
    
    /// Creates a new `Vector3` from `Vector3I`.
    public init(_ vector3I: Vector3I) {
        self.init(x: vector3I.x, y: vector3I.y, z: vector3I.z)
    }
    
    /// Creates a default-initialized `Vector3` with all components set to `0`.
    public init() {
        self.init(x: 0, y: 0, z: 0)
    }
    
    // MARK: Constants
    
    /// A vector with all components set to `0`.
    public static var zero: Vector3 {
        Vector3(x: 0, y: 0, z: 0)
    }
    
    /// A vector with all components set to `1`.
    public static var one: Vector3 {
        Vector3(x: 1, y: 1, z: 1)
    }
    
    /// A vector with all components set to positive infinity.
    public static var infinity: Vector3 {
        Vector3(x: .infinity, y: .infinity, z: .infinity)
    }
    
    /// The left unit vector.
    ///
    /// Represents the local direction of left, and the global direction of west.
    public static var left: Vector3 {
        Vector3(x: -1, y: 0, z: 0)
    }
    
    /// The right unit vector.
    ///
    /// Represents the local direction of right, and the global direction of east.
    public static var right: Vector3 {
        Vector3(x: 1, y: 0, z: 0)
    }
    
    /// The up unit vector.
    public static var up: Vector3 {
        Vector3(x: 0, y: 1, z: 0)
    }
    
    /// The down unit vector.
    public static var down: Vector3 {
        Vector3(x: 0, y: -1, z: 0)
    }
    
    /// The forward unit vector.
    ///
    /// Represents the local direction of forward, and the global direction of north.
    ///
    /// Keep in mind that the forward direction for lights, cameras, etc is different
    /// from 3D assets like characters, which face towards the camera by convention.
    /// Use ``modelFront`` and similar constants when working in 3D asset space.
    public static var forward: Vector3 {
        Vector3(x: 0, y: 0, z: -1)
    }
    
    /// The back unit vector.
    ///
    /// Represents the local direction of back, and the global direction of south.
    public static var back: Vector3 {
        Vector3(x: 0, y: 0, z: 1)
    }
    
    /// The unit vector pointing towards the left side of imported 3D assets.
    public static var modelLeft: Vector3 {
        Vector3(x: 1, y: 0, z: 0)
    }
    
    /// The unit vector pointing towards the right side of imported 3D assets.
    public static var modelRight: Vector3 {
        Vector3(x: -1, y: 0, z: 0)
    }
    
    /// The unit vector pointing towards the top side (up) of imported 3D assets.
    public static var modelTop: Vector3 {
        Vector3(x: 0, y: 1, z: 0)
    }
    
    /// The unit vector pointing towards the bottom side (down) of imported 3D assets.
    public static var modelBottom: Vector3 {
        Vector3(x: 0, y: -1, z: 0)
    }
    
    /// The unit vector pointing towards the front side (facing forward) of imported 3D assets.
    public static var modelFront: Vector3 {
        Vector3(x: 0, y: 0, z: 1)
    }
    
    /// The unit vector pointing towards the rear side (back) of imported 3D assets.
    public static var modelRear: Vector3 {
        Vector3(x: 0, y: 0, z: -1)
    }
    
    // MARK: Operators
    
    /// Returns the negative value of the `Vector3`.
    ///
    /// This is the same as writing `Vector3(x: -v.x, y: -v.y, z: -v.z)`.
    /// This operation flips the direction of the vector while keeping the same magnitude.
    /// With floats, the number zero can be either positive or negative.
    public static prefix func - (vector3: Vector3) -> Vector3 {
        Self._operatorNegate(vector3)
    }
    
    /// Returns the same value as if the `+` was not there.
    public static prefix func + (vector3: Vector3) -> Vector3 {
        Self._operatorPositive(vector3)
    }
    
    /// Multiplies each component of a `Vector3` by a value.
    public static func * (lhs: Vector3, rhs: Int) -> Vector3 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// Multiplies each component of a `Vector3` by a value.
    public static func * (lhs: Int, rhs: Vector3) -> Vector3 {
        rhs * lhs
    }
    
    /// Multiplies each component of a `Vector3` by a value.
    public static func * (lhs: Vector3, rhs: Scalar) -> Vector3 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// Multiplies each component of a `Vector3` by a value.
    public static func * (lhs: Scalar, rhs: Vector3) -> Vector3 {
        rhs * lhs
    }
    
    /// Divides each component of a `Vector3` by a value.
    public static func / (lhs: Vector3, rhs: Int) -> Vector3 {
        Self._operatorDivide(lhs, rhs)
    }
    
    /// Divides each component of a `Vector3` by a value.
    public static func / (lhs: Vector3, rhs: Scalar) -> Vector3 {
        Self._operatorDivide(lhs, rhs)
    }
    
    /// Compares two vectors.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is less than the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors, and then with the Z values.
    /// This operator is useful for sorting vectors.
    ///
    /// >note: Vectors with `NaN` elements don't behave the same as other vectors.
    /// Therefore, the results from this operator may not be accurate if `NaN`s are included.
    public static func < (lhs: Vector3, rhs: Vector3) -> Bool {
        Self._operatorLess(lhs, rhs)
    }
    
    /// Compares two vectors.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is less than or equal to the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors, and then with the Z values.
    /// This operator is useful for sorting vectors.
    ///
    /// >note: Vectors with `NaN` elements don't behave the same as other vectors.
    /// Therefore, the results from this operator may not be accurate if `NaN`s are included.
    public static func <= (lhs: Vector3, rhs: Vector3) -> Bool {
        Self._operatorLessEqual(lhs, rhs)
    }
    
    /// Compares two vectors.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is greater than the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors, and then with the Z values.
    /// This operator is useful for sorting vectors.
    ///
    /// >note: Vectors with `NaN` elements don't behave the same as other vectors.
    /// Therefore, the results from this operator may not be accurate if `NaN`s are included.
    public static func > (lhs: Vector3, rhs: Vector3) -> Bool {
        Self._operatorGreater(lhs, rhs)
    }
    
    /// Compares two vectors.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is greater than or equal to the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors, and then with the Z values.
    /// This operator is useful for sorting vectors.
    ///
    /// >note: Vectors with `NaN` elements don't behave the same as other vectors.
    /// Therefore, the results from this operator may not be accurate if `NaN`s are included.
    public static func >= (lhs: Vector3, rhs: Vector3) -> Bool {
        Self._operatorGreaterEqual(lhs, rhs)
    }
    
    /// Adds each component of a `Vector3` by the components of another `Vector3`.
    ///
    /// ```swift
    /// print(Vector3(x: 10, y: 20, z: 30) + Vector3(x: 3, y: 4, z: 5))
    /// // Prints "(13, 24, 35)"
    /// ```
    public static func + (lhs: Vector3, rhs: Vector3) -> Vector3 {
        Self._operatorAdd(lhs, rhs)
    }
    
    /// Subtracts each component of a `Vector3` by the components of another `Vector3`.
    ///
    /// ```swift
    /// print(Vector3(x: 10, y: 20, z: 30) - Vector3(x: 3, y: 4, z: 5))
    /// // Prints "(7, 16, 25)"
    /// ```
    public static func - (lhs: Vector3, rhs: Vector3) -> Vector3 {
        Self._operatorSubtract(lhs, rhs)
    }
    
    /// Multiplies each component of a `Vector3` by the components of another `Vector3`.
    ///
    /// ```swift
    /// print(Vector3(x: 10, y: 20, z: 30) * Vector3(x: 3, y: 4, z: 5))
    /// // Prints "(30, 80, 150)"
    /// ```
    public static func * (lhs: Vector3, rhs: Vector3) -> Vector3 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// Divides each component of a `Vector3` by the components of another `Vector3`.
    ///
    /// ```swift
    /// print(Vector3(x: 10, y: 20, z: 30) / Vector3(x: 2, y: 5, z: 3))
    /// // Prints "(5, 4, 10)"
    /// ```
    public static func / (lhs: Vector3, rhs: Vector3) -> Vector3 {
        Self._operatorDivide(lhs, rhs)
    }
    
    /// Inversely transforms (multiplies) the `Vector3` by the given `Quaternion`.
    ///
    /// `vector * quaternion` is equivalent to `quaternion.inverted * vector`.
    /// See `Quaternion`'s ``Quaternion/inverted``.
    public static func * (lhs: Vector3, rhs: Quaternion) -> Vector3 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// Inversely transforms (multiplies) a `Vector3` by a given `Basis` matrix.
    ///
    /// This operator assumes that the basis is orthonormal
    /// (i.e. rotation/reflection is fine, scaling/skew is not).
    ///
    /// `vector * basis` is equivalent to `basis.transposed * vector`.
    /// See `Basis`'s ``Basis/transposed``.
    ///
    /// For transforming by inverse of a non-orthonormal basis (e.g. with scaling)
    /// `basis.inverted * vector` can be used instead.
    /// See `Basis`"s ``Basis/inverted``.
    public static func * (lhs: Vector3, rhs: Basis) -> Vector3 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// Inversely transforms (multiplies) a `Vector3` by a 3D transformation matrix.
    ///
    /// This operator assumes that the transformation basis is
    /// orthonormal (i.e. rotation/reflection is fine, scaling/skew is not).
    ///
    /// `vector * transform` is equivalent to `transform.inverted * vector`.
    /// See `Transform3D`'s ``Transform3D/inverted``.
    ///
    /// For transforming by inverse of an affine transformation (e.g. with scaling)
    /// `transform.affineInverted * vector` can be used instead.
    /// See `Transform3D`'s ``Transform3D/affineInverted``.
    public static func * (lhs: Vector3, rhs: Transform3D) -> Vector3 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    // MARK: Methods & variables
    
    /// The axis of the vector's lowest value.
    ///
    /// If all components are equal, this method returns ``Axis3D/z``.
    public var minAxis: Axis3D {
        .init(rawValue: UInt32(_minAxisIndex()))!
    }
    
    /// The axis of the vector's highest value.
    ///
    /// If all components are equal, this method returns ``Axis/x``.
    public var maxAxis: Axis3D {
        .init(rawValue: UInt32(_maxAxisIndex()))!
    }
    
    /// Returns the unsigned minimum angle to the given vector, in radians.
    public func angle(to other: Vector3) -> Scalar {
        _angle(to: other)
    }
    
    /// Returns the signed angle to the given vector, in radians.
    ///
    /// The sign of the angle is positive in a counter-clockwise direction
    /// and negative in a clockwise direction when viewed from the side specified by the axis.
    public func signedAngle(to other: Vector3, around axis: Vector3) -> Scalar {
        _signedAngle(to: other, axis: axis)
    }
    
    /// Returns the normalized vector pointing from the vector to another one.
    ///
    /// This is equivalent to using `(b - a).normalized`.
    public func direction(to other: Vector3) -> Vector3 {
        _direction(to: other)
    }
    
    /// Returns the distance between the vector and another one.
    public func distance(to other: Vector3) -> Scalar {
        _distance(to: other)
    }
    
    /// Returns the squared distance between the vector and another one.
    ///
    /// This method runs faster than ``distance(to:)``, so prefer it if you
    /// need to compare vectors or need the squared distance for some formula.
    public func distanceSquared(to other: Vector3) -> Scalar {
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
    public func limitLength(_ length: Scalar = 1.0) -> Vector3 {
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
    public var normalized: Vector3 {
        _normalized()
    }
    
    /// A Boolean value indicating whether the vector is normalized,
    /// i.e. its length is approximately equal to `1`.
    public var isNormalized: Bool {
        _isNormalized()
    }
    
    /// Returns `true` if the vector is approximately equal to another one.
    public func isApproximatelyEqual(to other: Vector3) -> Bool {
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
    
    /// The inverse of the vector.
    ///
    /// This is the same as `Vector3(x: 1.0 / v.x, y: 1.0 / v.y, z: 1.0 / v.z)`.
    public var inverted: Vector3 {
        _inverse()
    }
    
    /// Returns a new vector with all components clamped
    /// between the given values.
    public func clamped(min: Vector3, max: Vector3) -> Vector3 {
        _clamp(min: min, max: max)
    }
    
    /// Returns a new vector with each component snapped to
    /// the nearest multiple of the corresponding component in a given vector.
    ///
    /// This can also be used to round the components
    /// to an arbitrary number of decimals.
    public func snapped(step: Vector3) -> Vector3 {
        _snapped(step: step)
    }
    
    /// Returns the result of rotating the vector by angle.
    /// 
    /// - Parameters:
    ///   - angle: The rotation angle, in radians.
    ///   - axis: The vector around which the rotation is done.
    ///   Must be a normalized vector.
    public func rotated(by angle: Scalar, around axis: Vector3) -> Vector3 {
        _rotated(axis: axis, angle: angle)
    }
    
    /// Returns the result of the linear interpolation between the vector
    /// and another one by a given amount.
    ///
    /// - Parameters:
    ///   - other: The interpolation destination.
    ///   - weight: The interpolation amount. Must be between `0` and `1`.
    public func lerp(to other: Vector3, weight: Scalar) -> Vector3 {
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
    public func slerp(to other: Vector3, weight: Scalar) -> Vector3 {
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
        b: Vector3,
        preA: Vector3,
        postB: Vector3,
        weight: Scalar
    ) -> Vector3 {
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
        b: Vector3,
        preA: Vector3,
        postB: Vector3,
        weight: Scalar,
        bT: Scalar,
        preAT: Scalar,
        postBT: Scalar
    ) -> Vector3 {
        _cubicInterpolateInTime(b: b, preA: preA, postB: postB, weight: weight, bT: bT, preAT: preAT, postBT: postBT)
    }
    
    /// Returns the point at the given `t` on the Bézier curve
    /// defined by the vector and the given control points.
    public func bezierInterpolation(control1: Vector3, control2: Vector3, end: Vector3, t: Scalar) -> Vector3 {
        _bezierInterpolate(control1: control1, control2: control2, end: end, t: t)
    }
    
    /// Returns the derivative at the given `t` on the Bézier curve
    /// defined by the vector and the given control points.
    public func bezierDerivative(control1: Vector3, control2: Vector3, end: Vector3, t: Scalar) -> Vector3 {
        _bezierDerivative(control1: control1, control2: control2, end: end, t: t)
    }
    
    /// Returns a new vector moved toward to by a fixed amount.
    ///
    /// Will not go past the final value.
    public func moved(toward other: Vector3, delta: Scalar) -> Vector3 {
        _moveToward(to: other, delta: delta)
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
    public func dot(_ other: Vector3) -> Scalar {
        _dot(with: other)
    }
    
    /// Returns the cross product for the vector and another one.
    public func cross(_ other: Vector3) -> Vector3 {
        _cross(with: other)
    }
    
    /// Returns the outer product with another vector.
    public func outer(_ other: Vector3) -> Basis {
        _outer(with: other)
    }
    
    /// A new vector with all components in absolute values (i.e. positive).
    public var abs: Vector3 {
        _abs()
    }
    
    /// A vector with all components rounded down (towards negative infinity).
    public var floor: Vector3 {
        _floor()
    }
    
    /// A vector with all components rounded up (towards positive infinity).
    public var ceil: Vector3 {
        _ceil()
    }
    
    /// A vector with all components rounded to the nearest integer,
    /// with halfway cases rounded away from zero.
    public var rounded: Vector3 {
        _round()
    }
    
    /// Returns a vector composed of the ``fposmod(x:y:)``
    /// of the vector's components and `mod`.
    public func posmod(_ mod: Scalar) -> Vector3 {
        _posmod(mod: mod)
    }
    
    /// Returns a vector composed of the ``fposmod(x:y:)``
    /// of the vector's components and `modv`'s components.
    public func posmodv(_ modv: Vector3) -> Vector3 {
        _posmodv(modv: modv)
    }
    
    /// Returns the result of projecting the vector onto a given vector.
    public func project(_ other: Vector3) -> Vector3 {
        _project(other)
    }
    
    /// Returns the result of sliding the vector along
    /// a plane defined by a given normal.
    public func slide(_ other: Vector3) -> Vector3 {
        _slide(other)
    }
    
    /// Returns a vector "bounced off" from a plane defined by the given normal.
    public func bounce(_ other: Vector3) -> Vector3 {
        _bounce(other)
    }
    
    /// Returns the result of reflecting the vector from a plane
    /// defined by a given normal vector.
    public func reflect(_ other: Vector3) -> Vector3 {
        _reflect(other)
    }
    
    /// A vector with each component set to `1.0` if it's positive,
    /// `-1.0` if it's negative, and `0.0` if it's zero.
    public var sign: Vector3 {
        _sign()
    }
    
    /// Returns the octahedral-encoded (oct32) form of this `Vector3` as a `Vector2`.
    ///
    /// Since a `Vector2` occupies 1/3 less memory compared to `Vector3`,
    /// this form of compression can be used to pass greater amounts
    /// of normalized `Vector3`s without increasing storage or memory requirements.
    ///
    /// >note: `octahedronEncoded` can only be used for normalized vectors.
    /// `octahedronEncoded` does not check whether this `Vector3` is normalized,
    /// and will return a value that does not decompress to the original value
    /// if the `Vector3` is not normalized.
    ///
    /// >note: Octahedral compression is lossy, although visual differences
    /// are rarely perceptible in real world scenarios.
    public var octahedronEncoded: Vector2 {
        _octahedronEncode()
    }
    
    /// Returns the `Vector3` from an octahedral-compressed form.
    ///
    /// This method can be used to decode vectors created
    /// using `octahedronEncoded` (stored as a `Vector2`).
    public static func octahedronDecoded(uv: Vector2) -> Vector3 {
        _octahedronDecode(uv: uv)
    }
    
    /// Accesses the vector component on the given axis.
    public subscript(axis: Axis3D) -> Scalar {
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

extension Vector3: Equatable, Hashable {}

extension Vector3: AdditiveArithmetic, Comparable {}

extension Vector3: Codable {
    public func encode(to encoder: Encoder) throws {
        var unkeyedContainer = encoder.unkeyedContainer()
        try unkeyedContainer.encode(x)
        try unkeyedContainer.encode(y)
        try unkeyedContainer.encode(z)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        x = try container.decode(Scalar.self)
        y = try container.decode(Scalar.self)
        z = try container.decode(Scalar.self)
    }
}

extension Vector3: CustomStringConvertible {
    public var description: String {
        "(\(x), \(y), \(z))"
    }
}

extension Vector3: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Vector3(x: \(x), y: \(y), z: \(z))"
    }
}

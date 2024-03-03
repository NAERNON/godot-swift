import Numerics

/// A 2D vector using floating point coordinates.
///
/// This type can be used to represent 2D coordinates or any other pair of numeric values.
///
/// It uses floating-point coordinates.
/// See ``Vector2I`` for its integer counterpart.
///
/// >note: If double precision is needed, compile the engine and generate
/// the Godot Swift APIs with the `double` option.
///
/// ## Topics
///
/// ### Creating 2D Vector
///
/// - ``Vector2/init(x:y:)``
/// - ``Vector2/init(_:_:)``
/// - ``Vector2/init(_:)``
/// - ``Vector2/init(repeating:)``
///
/// ### Special Values
///
/// - ``Vector2/zero``
/// - ``Vector2/init()``
/// - ``Vector2/one``
/// - ``Vector2/left``
/// - ``Vector2/right``
/// - ``Vector2/up``
/// - ``Vector2/down``
///
/// ### Geometric Properties
///
/// - ``Vector2/x``
/// - ``Vector2/y``
/// - ``Vector2/subscript(_:)``
/// - ``Vector2/width``
/// - ``Vector2/height``
/// - ``Vector2/isFinite``
/// - ``Vector2/aspect``
/// - ``Vector2/orthogonal()``
/// - ``Vector2/abs()``
/// - ``Vector2/formAbs()``
/// - ``Vector2/squareRoot()``
/// - ``Vector2/formSquareRoot()``
/// - ``Vector2/clamped(lowerBound:upperBound:)``
/// - ``Vector2/clamp(lowerBound:upperBound:)``
/// - ``Vector2/sum()``
/// - ``Vector2/signUnitValue``
///
/// ### Magnitude and Distance
///
/// - ``Vector2/magnitude``
/// - ``Vector2/magnitudeSquared``
/// - ``Vector2/limitedMagnitude(_:)``
/// - ``Vector2/limitMagnitude(_:)``
/// - ``Vector2/distance(to:)``
/// - ``Vector2/distanceSquared(to:)``
///
/// ### Normalization
///
/// - ``Vector2/normalized()``
/// - ``Vector2/normalize()``
/// - ``Vector2/isNormalized``
///
/// ### Angle
///
/// - ``Vector2/angle``
/// - ``Vector2/angle(to:)``
/// - ``Vector2/angle(toPoint:)``
/// - ``Vector2/rotated(by:)``
/// - ``Vector2/rotate(by:)``
/// - ``Vector2/fromAngle(_:)``
///
/// ### Direction
///
/// - ``Vector2/direction(to:)``
/// - ``Vector2/formDirection(to:)``
/// - ``Vector2/moved(toward:delta:)``
/// - ``Vector2/move(toward:delta:)``
///
/// ### Products
///
/// - ``Vector2/dot(_:)``
/// - ``Vector2/cross(_:)``
///
/// ### 2D Transformations
///
/// - ``Vector2/projected(onto:)``
/// - ``Vector2/project(onto:)``
/// - ``Vector2/slided(along:)``
/// - ``Vector2/slide(along:)``
/// - ``Vector2/bounced(off:)``
/// - ``Vector2/bounce(off:)``
/// - ``Vector2/reflected(from:)``
/// - ``Vector2/reflect(from:)``
///
/// ### Interpolation
///
/// - ``Vector2/lerp(to:weight:)``
/// - ``Vector2/formLerp(to:weight:)``
/// - ``Vector2/slerp(to:weight:)``
/// - ``Vector2/formSlerp(to:weight:)``
/// - ``Vector2/cubicInterpolation(to:pre:post:weight:)``
/// - ``Vector2/formCubicInterpolation(to:pre:post:weight:)``
/// - ``Vector2/cubicInterpolationInTime(to:pre:post:weight:toT:preT:postT:)``
/// - ``Vector2/formCubicInterpolationInTime(to:pre:post:weight:toT:preT:postT:)``
/// - ``Vector2/bezierInterpolation(to:control1:control2:t:)``
/// - ``Vector2/formBezierInterpolation(to:control1:control2:t:)``
/// - ``Vector2/bezierDerivative(to:control1:control2:t:)``
/// - ``Vector2/formBezierDerivative(to:control1:control2:t:)``
///
/// ### Axis
///
/// - ``Vector2/minAxis``
/// - ``Vector2/maxAxis``
/// - ``Vector2/subscript(axis:)``
///
/// ### Rounding and Division
///
/// - ``Vector2/snapped(step:)``
/// - ``Vector2/snap(step:)``
/// - ``Vector2/rounded(_:)``
/// - ``Vector2/round(_:)``
/// - ``Vector2/positiveTruncatingRemainder(dividingBy:)-8y4jd``
/// - ``Vector2/formPositiveTruncatingRemainder(dividingBy:)-5ntvk``
/// - ``Vector2/positiveTruncatingRemainder(dividingBy:)-9fev4``
/// - ``Vector2/formPositiveTruncatingRemainder(dividingBy:)-9n37s``
///
/// ### Approximate Equality
///
/// - ``Vector2/isApproximatelyZero``
/// - ``Vector2/isApproximatelyEqual(to:)``
///
/// ### Comparison
///
/// - ``Vector2/<(_:_:)``
/// - ``Vector2/<=(_:_:)``
/// - ``Vector2/>(_:_:)``
/// - ``Vector2/>=(_:_:)``
public struct Vector2: Hashable, Equatable {
    /// The first element of the vector.
    public var x: FloatingPointType
    /// The second element of the vector.
    public var y: FloatingPointType
    
    // MARK: - Initializers
    
    /// Creates a new vector from the given elements.
    public init(
        x: FloatingPointType,
        y: FloatingPointType
    ) {
        self.x = x
        self.y = y
    }
    
    /// Creates a new vector from the given elements.
    public init(
        _ x: FloatingPointType,
        _ y: FloatingPointType
    ) {
        self.x = x
        self.y = y
    }
    
    /// Creates a new vector with all elements set to `0`.
    public init() {
        self = .zero
    }
    
    /// Creates a new vector from a given integer vector.
    public init(_ other: Vector2I) {
        self.x = FloatingPointType(other.x)
        self.y = FloatingPointType(other.y)
    }
    
    /// Creates a new vector with all elements set to the specified value.
    public init(repeating value: FloatingPointType) {
        self.x = value
        self.y = value
    }
}

// MARK: - Special Values

extension Vector2 {
    /// A vector with all elements set to `0`.
    public static var zero: Vector2 {
        Vector2(0, 0)
    }
    
    /// A vector with all elements set to `1`.
    public static var one: Vector2 {
        Vector2(1, 1)
    }
    
    /// The left unit vector.
    ///
    /// Represents the direction of left.
    public static var left: Vector2 {
        Vector2(x: -1, y: 0)
    }
    
    /// The right unit vector.
    ///
    /// Represents the direction of right.
    public static var right: Vector2 {
        Vector2(x: 1, y: 0)
    }
    
    /// The up unit vector.
    ///
    /// Y is down in 2D, so this vector points -Y.
    public static var up: Vector2 {
        Vector2(x: 0, y: -1)
    }
    
    /// The down unit vector.
    ///
    /// Y is down in 2D, so this vector points +Y.
    public static var down: Vector2 {
        Vector2(x: 0, y: 1)
    }
}

// MARK: - Properties

extension Vector2 {
    /// The vector's width. Equivalent to `x`.
    public var width: FloatingPointType {
        get {
            x
        }
        set(newValue) {
            x = newValue
        }
    }
    
    /// The vector's height. Equivalent to `y`.
    public var height: FloatingPointType {
        get {
            y
        }
        set(newValue) {
            y = newValue
        }
    }
}

// MARK: Subscripts

extension Vector2 {
    /// Accesses the vector component at the given index.
    public subscript(index: Int) -> FloatingPointType {
        get {
            switch index {
            case 0: x
            case 1: y
            default: fatalError("Attempting to retrieve element \(index) from 2D vector.")
            }
        }
        set(newValue) {
            switch index {
            case 0: x = newValue
            case 1: y = newValue
            default: fatalError("Attempting to set element \(index) from 2D vector.")
            }
        }
    }
    
    /// Accesses the vector component on the given axis.
    public subscript(axis axis: Axis2D) -> FloatingPointType {
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

extension Vector2 {
    /// Returns the normalized vector pointing from this vector to another one.
    ///
    /// This is equivalent to using `(b - a).normalized`.
    public func direction(to other: Vector2) -> Vector2 {
        (other - self).normalized()
    }
    
    /// Replaces this vector with the normalized vector pointing from this vector to another one.
    ///
    /// This is equivalent to using `(b - a).normalized`.
    public mutating func formDirection(to other: Vector2) {
        self = direction(to: other)
    }
    
    /// Returns the distance between this vector and another one.
    public func distance(to other: Vector2) -> FloatingPointType {
        ((other - self) * (other - self)).sum().squareRoot()
    }
    
    /// Returns the squared distance between this vector and another one.
    ///
    /// This method runs faster than ``distance(to:)``, so prefer it if you
    /// need to compare vectors or need the squared distance for some formula.
    public func distanceSquared(to other: Vector2) -> FloatingPointType {
        ((other - self) * (other - self)).sum()
    }
    
    /// The magnitude (length) of the vector.
    public var magnitude: FloatingPointType {
        (self * self).sum().squareRoot()
    }
    
    /// The squared magnitude of the vector.
    ///
    /// This property runs faster than ``magnitude``, so prefer it if you need
    /// to compare vectors or need the squared distance for some formula.
    public var magnitudeSquared: FloatingPointType {
        (self * self).sum()
    }
    
    /// Returns this vector with a magnitude not exceeding a given value.
    public func limitedMagnitude(_ magnitude: FloatingPointType = 1.0) -> Vector2 {
        let currentMagnitude = self.magnitude
        var copy = self
        if currentMagnitude > 0 && magnitude < currentMagnitude {
            copy /= currentMagnitude
            copy *= magnitude
        }

        return copy
    }
    
    /// Modifies the vector magnitude to not exceed a given value.
    public mutating func limitMagnitude(_ magnitude: FloatingPointType = 1.0) {
        self = limitedMagnitude(magnitude)
    }
    
    /// Returns the result of scaling this vector to unit length.
    ///
    /// Equivalent to `v / v.magnitude`.
    ///
    /// >important: This function may return incorrect values
    /// if the vector magnitude is near zero.
    public func normalized() -> Vector2 {
        let length = (self * self).sum()
        if length != 0 {
            return self / length.squareRoot()
        }
        return self
    }
    
    /// Scales this vector to have a unit length.
    ///
    /// Equivalent to `v /= v.magnitude`.
    ///
    /// >important: This function may result in incorrect values
    /// if the vector magnitude is near zero.
    public mutating func normalize() {
        self = normalized()
    }
    
    /// A Boolean value indicating whether the vector is normalized.
    ///
    /// This property checks that the magnitude is approximately equal to `1`.
    public var isNormalized: Bool {
        magnitudeSquared.isApproximatelyEqual(to: 1, tolerance: .unitEpsilon)
    }
    
    /// Returns `true` if this vector is approximately equal to another one.
    public func isApproximatelyEqual(to other: Vector2) -> Bool {
        x.isApproximatelyEqual(to: other.x) &&
        y.isApproximatelyEqual(to: other.y)
    }
    
    /// A Boolean value indicating whether this vector's values are approximately zero.
    ///
    /// This method is faster than using ``isApproximatelyEqual(to:)``
    /// with value zero.
    public var isApproximatelyZero: Bool {
        x.isApproximatelyZero &&
        y.isApproximatelyZero
    }
    
    /// A Boolean value indicating whether the vector is finite.
    public var isFinite: Bool {
        x.isFinite &&
        y.isFinite
    }
    
    /// Returns this vector with each scalar being the positive remainder
    /// of the scalar divided by the given value using truncating division.
    ///
    /// This method applies ``Swift/BinaryFloatingPoint/positiveTruncatingRemainder(dividingBy:)``
    /// on each scalar.
    public func positiveTruncatingRemainder(dividingBy value: FloatingPointType) -> Vector2 {
        Vector2(
            x: x.positiveTruncatingRemainder(dividingBy: value),
            y: y.positiveTruncatingRemainder(dividingBy: value)
        )
    }
    
    /// Replaces each scalar with the positive remainder of itself divided by the given
    /// value using truncating division.
    ///
    /// This method applies ``Swift/BinaryFloatingPoint/formPositiveTruncatingRemainder(dividingBy:)``
    /// on each scalar.
    public mutating func formPositiveTruncatingRemainder(dividingBy value: FloatingPointType) {
        x.formPositiveTruncatingRemainder(dividingBy: value)
        y.formPositiveTruncatingRemainder(dividingBy: value)
    }
    
    /// Returns the vector composed of the positive remainder of each scalar
    /// divided by the corresponding scalar of a given vector using truncating division.
    ///
    /// This method applies ``Swift/BinaryFloatingPoint/positiveTruncatingRemainder(dividingBy:)``
    /// on each scalar.
    public func positiveTruncatingRemainder(dividingBy other: Vector2) -> Vector2 {
        Vector2(
            x: x.positiveTruncatingRemainder(dividingBy: other.x),
            y: y.positiveTruncatingRemainder(dividingBy: other.y)
        )
    }
    
    /// Replaces each scalar by the positive remainder of itself divided by
    /// the corresponding scalar of a given vector using truncating division.
    ///
    /// This method applies ``Swift/BinaryFloatingPoint/formPositiveTruncatingRemainder(dividingBy:)``
    /// on each scalar.
    public mutating func formPositiveTruncatingRemainder(dividingBy other: Vector2) {
        x.formPositiveTruncatingRemainder(dividingBy: other.x)
        y.formPositiveTruncatingRemainder(dividingBy: other.y)
    }
    
    /// Returns the result of projecting this vector onto a given vector.
    public func projected(onto other: Vector2) -> Vector2 {
        return other * (self.dot(other) / other.magnitudeSquared)
    }
    
    /// Replaces this vector with the result of projecting this vector onto a given vector.
    public mutating func project(onto other: Vector2) {
        self = projected(onto: other)
    }
    
    /// Returns the result of the linear interpolation between this vector
    /// and another one by a given amount.
    ///
    /// - Parameters:
    ///   - other: The interpolation destination.
    ///   - weight: The interpolation amount. On the range of `0` to `1`.
    public func lerp(to other: Vector2, weight: FloatingPointType) -> Vector2 {
        self + weight * (other - self)
    }
    
    /// Replaces this vector with the result of the linear interpolation between this vector
    /// and another one by a given amount.
    ///
    /// - Parameters:
    ///   - other: The interpolation destination.
    ///   - weight: The interpolation amount. On the range of `0` to `1`.
    public mutating func formLerp(to other: Vector2, weight: FloatingPointType) {
        self = lerp(to: other, weight: weight)
    }
    
    /// Performs a cubic interpolation between this vector and another one.
    ///
    /// - Parameters:
    ///   - other: The interpolation destination.
    ///   - pre: The first handle.
    ///   - post: The second handle.
    ///   - weight: The interpolation amount. On the range of `0` to `1`.
    public func cubicInterpolation(
        to other: Vector2,
        pre: Vector2,
        post: Vector2,
        weight: FloatingPointType
    ) -> Vector2 {
        Vector2(
            x: x.cubicInterpolation(to: other.x, pre: pre.x, post: post.x, weight: weight),
            y: y.cubicInterpolation(to: other.y, pre: pre.y, post: post.y, weight: weight)
        )
    }
    
    /// Replaces this vector with the cubic interpolation between this vector and another one.
    ///
    /// - Parameters:
    ///   - other: The interpolation destination.
    ///   - pre: The first handle.
    ///   - post: The second handle.
    ///   - weight: The interpolation amount. On the range of `0` to `1`.
    public mutating func formCubicInterpolation(
        to other: Vector2,
        pre: Vector2,
        post: Vector2,
        weight: FloatingPointType
    ) {
        self = cubicInterpolation(to: other, pre: pre, post: post, weight: weight)
    }
    
    /// Performs a cubic interpolation between this vector and another one.
    ///
    /// - Parameters:
    ///   - other: The interpolation destination.
    ///   - pre: The first handle.
    ///   - post: The second handle.
    ///   - weight: The interpolation amount. On the range of `0` to `1`.
    ///
    /// It can perform smoother interpolation than ``cubicInterpolation(to:pre:post:weight:)`` by the time values.
    public func cubicInterpolationInTime(
        to other: Vector2,
        pre: Vector2,
        post: Vector2,
        weight: FloatingPointType,
        toT: FloatingPointType,
        preT: FloatingPointType,
        postT: FloatingPointType
    ) -> Vector2 {
        Vector2(
            x: self.x.cubicInterpolationInTime(
                to: other.x, pre: pre.x, post: post.x, weight: weight, toT: toT, preT: preT, postT: postT),
            y: self.y.cubicInterpolationInTime(
                to: other.y, pre: pre.y, post: post.y, weight: weight, toT: toT, preT: preT, postT: postT)
        )
    }
    
    /// Replaces this vector with the cubic interpolation between this vector and another one.
    ///
    /// - Parameters:
    ///   - other: The interpolation destination.
    ///   - pre: The first handle.
    ///   - post: The second handle.
    ///   - weight: The interpolation amount. On the range of `0` to `1`.
    ///
    /// It can perform smoother interpolation than ``formCubicInterpolation(to:pre:post:weight:)`` by the time values.
    public mutating func formCubicInterpolationInTime(
        to other: Vector2,
        pre: Vector2,
        post: Vector2,
        weight: FloatingPointType,
        toT: FloatingPointType,
        preT: FloatingPointType,
        postT: FloatingPointType
    ) {
        self = cubicInterpolationInTime(
            to: other,
            pre: pre,
            post: post,
            weight: weight,
            toT: toT,
            preT: preT,
            postT: postT
        )
    }
    
    /// Returns the point at the given `t` on the Bézier curve
    /// defined by this vector, the given control points and the destination.
    public func bezierInterpolation(
        to other: Vector2,
        control1: Vector2,
        control2: Vector2,
        t: FloatingPointType
    ) -> Vector2 {
        /* Formula from Wikipedia article on Bezier curves. */
        let omt = 1.0 - t
        let omt2 = omt * omt
        let omt3 = omt2 * omt
        let t2 = t * t
        let t3 = t2 * t
        let p1 = self * omt3
        let p2 = control1 * omt2 * t * 3.0
        let p3 = control2 * omt * t2 * 3.0

        return p1 + p2 + p3 + other * t3
    }
    
    /// Replaces this vector with the point at the given `t` on the Bézier curve
    /// defined by this vector, the given control points and the destination.
    public mutating func formBezierInterpolation(
        to other: Vector2,
        control1: Vector2,
        control2: Vector2,
        t: FloatingPointType
    ) {
        self = bezierInterpolation(to: other, control1: control1, control2: control2, t: t)
    }
    
    /// Returns the derivative at the given `t` on the Bézier curve
    /// defined by this vector, the given control points and the destination.
    public func bezierDerivative(
        to other: Vector2,
        control1: Vector2,
        control2: Vector2,
        t: FloatingPointType
    ) -> Vector2 {
        Vector2(
            x: x.bezierDerivative(to: other.x, control1: control1.x, control2: control2.x, t: t),
            y: y.bezierDerivative(to: other.y, control1: control1.y, control2: control2.y, t: t)
        )
    }
    
    /// Replaces this vector with the derivative at the given `t` on the Bézier curve
    /// defined by this vector, the given control points and the destination.
    public mutating func formBezierDerivative(
        to other: Vector2,
        control1: Vector2,
        control2: Vector2,
        t: FloatingPointType
    ) {
        self = bezierDerivative(to: other, control1: control1, control2: control2, t: t)
    }
    
    /// Returns this vector moved toward another vector by a fixed amount.
    ///
    /// The returned value will not go past `other`.
    public func moved(toward other: Vector2, delta: FloatingPointType) -> Vector2 {
        let vd = other - self
        let len = vd.magnitude
        return len <= delta || len < .cmpEpsilon ? other : self + vd / len * delta
    }
    
    /// Moves this vector toward another vector by a fixed amount.
    ///
    /// The returned value will not go past `other`.
    public mutating func move(toward other: Vector2, delta: FloatingPointType) {
        self = moved(toward: other, delta: delta)
    }
    
    /// Returns a perpendicular vector.
    ///
    /// The returned vector is rotated 90 degrees counter-clockwise
    /// compared to the original, with the same magnitude.
    public func orthogonal() -> Vector2 {
        Vector2(x: y, y: -x)
    }
    
    /// The aspect ratio of the vector, the ratio of `x` to `y`.
    public var aspect: FloatingPointType {
        x / y
    }
    
    /// Returns the dot product of this vector and another one.
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
    public func dot(_ other: Vector2) -> FloatingPointType {
        x * other.x + y * other.y
    }
    
    /// Returns the component of this vector along the given plane,
    /// specified by its normal vector.
    public func slided(along normal: Vector2) -> Vector2 {
#if MATH_CHECKS
        if !normal.isNormalized {
            godotPrintError("The normal vector must be normalized, returning (0, 0).")
            return Vector2()
        }
#endif
        return self - normal * self.dot(normal)
    }
    
    /// Returns the component of this vector along the given plane,
    /// specified by its normal vector.
    public mutating func slide(along normal: Vector2) {
        self = slided(along: normal)
    }
    
    /// Returns this vector bounced off a plane defined by the given normal.
    public func bounced(off normal: Vector2) -> Vector2 {
        -reflected(from: normal)
    }
    
    /// Bounces this vector off a plane defined by the given normal.
    public mutating func bounce(off normal: Vector2) {
        self = bounced(off: normal)
    }
    
    /// Returns the result of reflecting this vector from a plane
    /// defined by the given normal.
    public func reflected(from normal: Vector2) -> Vector2 {
#if MATH_CHECKS
        if !normal.isNormalized {
            godotPrintError("The normal vector must be normalized, returning (0, 0).")
            return Vector2()
        }
#endif
        return 2 * normal * self.dot(normal) - self
    }
    
    /// Reflects this vector from a plane defined by the given normal.
    public mutating func reflect(from normal: Vector2) {
        self = reflected(from: normal)
    }
    
    /// Returns the 2D analog of the cross product for this vector and another one.
    ///
    /// This is the signed area of the parallelogram formed by the two vectors.
    /// If the second vector is clockwise from the first vector,
    /// then the cross product is the positive area.
    /// If counter-clockwise, the cross product is the negative area.
    ///
    /// >note: Cross product is not defined in 2D mathematically.
    /// This method embeds the 2D vectors in the XY plane of 3D space
    /// and uses their cross product's Z component as the analog.
    public func cross(_ other: Vector2) -> FloatingPointType {
        x * other.y - y * other.x;
    }
    
    /// A vector with each component set to `1.0` if it's positive,
    /// `-1.0` if it's negative, and `0.0` if it's zero.
    public var signUnitValue: Vector2 {
        Vector2(x: x.signUnitValue, y: y.signUnitValue)
    }
    
    /// Returns a new vector with each component snapped to
    /// the nearest multiple of the corresponding component in a given vector.
    ///
    /// This can also be used to round the components
    /// to an arbitrary number of decimals.
    public func snapped(step: Vector2) -> Vector2 {
        Vector2(
            x: x.snapped(step: step.x),
            y: y.snapped(step: step.y)
        )
    }
    
    /// Replaces this vector with a vector with each component snapped to
    /// the nearest multiple of the corresponding component in a given vector.
    ///
    /// This can also be used to round the components
    /// to an arbitrary number of decimals.
    public mutating func snap(step: Vector2) {
        self = snapped(step: step)
    }
    
    /// Creates a unit vector rotated to the given angle in radians.
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
    public static func fromAngle(_ angle: FloatingPointType) -> Vector2 {
        Vector2(x: cos(angle), y: sin(angle))
    }
    
    /// The vector's angle with respect to the positive X axis,
    /// or `(1, 0)` vector, in radians.
    ///
    /// For example, `Vector2.right.angle` will return zero,
    /// `Vector2.down.angle` will return `pi/2` (a quarter turn, or `90` degrees),
    /// and `Vector2(x: 1, y: -1).angle` will return `-pi/4`
    /// (a negative eighth turn, or -45 degrees).
    ///
    /// Equivalent to the result of ``atan2(y:x:)`` when called with
    /// the vector's `y` and `x` as parameters.
    public var angle: FloatingPointType {
        atan2(y: y, x: x)
    }
    
    /// Returns the angle to the given vector, in radians.
    public func angle(to other: Vector2) -> FloatingPointType {
        atan2(y: cross(other), x: dot(other))
    }
    
    /// Returns the angle between the line connecting the
    /// two points and the X axis, in radians.
    ///
    /// `a.angle(toPoint: b)` is equivalent of doing `(b - a).angle`.
    public func angle(toPoint point: Vector2) -> FloatingPointType {
        (point - self).angle
    }
    
    /// Returns the result of rotating this vector by a given angle (in radians).
    public func rotated(by angle: FloatingPointType) -> Vector2 {
        let sine = sin(angle)
        let cosi = cos(angle)
        return Vector2(
            x: x * cosi - y * sine,
            y: x * sine + y * cosi
        )
    }
    
    /// Rotates this vector by a given angle (in radians).
    public mutating func rotate(by angle: FloatingPointType) {
        self = rotated(by: angle)
    }
    
    /// Returns the result of spherical linear interpolation between this vector
    /// and another one by a given amount.
    ///
    /// This method also handles interpolating the lengths if the input
    /// vectors have different lengths. For the special case of one
    /// or both input vectors having zero length, this method behaves like ``lerp(to:weight:)``.
    ///
    /// - Parameters:
    ///   - other: The interpolation destination.
    ///   - weight: The interpolation amount. On the range of `0` to `1`.
    public func slerp(to other: Vector2, weight: FloatingPointType) -> Vector2 {
        let startLengthSq = magnitudeSquared
        let endLengthSq = other.magnitudeSquared
        if startLengthSq == .zero || endLengthSq == .zero {
            // Zero length vectors have no angle, so the best we can do is either lerp or throw an error.
            return lerp(to: other, weight: weight)
        }
        let startLength = startLengthSq.squareRoot()
        let resultLength = startLength.lerp(to: endLengthSq.squareRoot(), weight: weight)
        let angle = angle(to: other)
        return rotated(by: angle * weight) * (resultLength / startLength)
    }
    
    /// Replaces this vector with the result of spherical linear interpolation between this vector
    /// and another one by a given amount.
    ///
    /// This method also handles interpolating the lengths if the input
    /// vectors have different lengths. For the special case of one
    /// or both input vectors having zero length, this method behaves like ``lerp(to:weight:)``.
    ///
    /// - Parameters:
    ///   - other: The interpolation destination.
    ///   - weight: The interpolation amount. On the range of `0` to `1`.
    public mutating func formSlerp(to other: Vector2, weight: FloatingPointType) {
        self = slerp(to: other, weight: weight)
    }
    
    /// Returns this vector with all components in absolute values (i.e. positive).
    public func abs() -> Vector2 {
        Vector2(x: Swift.abs(x), y: Swift.abs(y))
    }
    
    /// Replaces this vector with a vector with all
    /// components in absolute values (i.e. positive).
    public mutating func formAbs() {
        self = abs()
    }
    
    /// Returns a new vector with all components clamped between the components
    /// of the two given bounds.
    public func clamped(lowerBound: Vector2, upperBound: Vector2) -> Vector2 {
        Vector2(
            x.clamped(lowerBound: lowerBound.x, upperBound: upperBound.x),
            y.clamped(lowerBound: lowerBound.y, upperBound: upperBound.y)
        )
    }
    
    /// Clamps all components between the components
    /// of the two given bounds.
    public mutating func clamp(lowerBound: Vector2, upperBound: Vector2) {
        self = clamped(lowerBound: lowerBound, upperBound: upperBound)
    }
    
    /// Returns a new vector with all components as their square root,
    /// rounded to a representable value.
    public func squareRoot() -> Vector2 {
        Vector2(x.squareRoot(), y.squareRoot())
    }
    
    /// Updates this vector with all components as their square root,
    /// rounded to a representable value.
    public mutating func formSquareRoot() {
        self = self.squareRoot()
    }
    
    /// Returns a new vector with all components rounded to
    /// an integral value using the specified rounding rule.
    public func rounded(_ rule: FloatingPointRoundingRule) -> Vector2 {
        Vector2(
            x.rounded(rule),
            y.rounded(rule)
        )
    }
    
    /// Rounds all components to
    /// an integral value using the specified rounding rule.
    public mutating func round(_ rule: FloatingPointRoundingRule) {
        self = self.rounded(rule)
    }
    
    /// Returns the sum of the scalars in the vector.
    public func sum() -> FloatingPointType {
        x + y
    }
}

// MARK: - Operators

extension Vector2 {
    /// The multiplication of all components of a vector and a floating-point value.
    public static func * (lhs: Vector2, rhs: FloatingPointType) -> Vector2 {
        Vector2(lhs.x * rhs, lhs.y * rhs)
    }
    
    /// The multiplication of all components of a vector and a floating-point value.
    public static func * (lhs: FloatingPointType, rhs: Vector2) -> Vector2 {
        rhs * lhs
    }
    
    /// Updates the vector with the multiplication of
    /// all components of a vector and a floating-point value.
    public static func *= (lhs: inout Vector2, rhs: FloatingPointType) {
        lhs = lhs * rhs
    }
    
    /// The division of all components of a vector and a floating-point value.
    public static func / (lhs: Vector2, rhs: FloatingPointType) -> Vector2 {
        Vector2(lhs.x / rhs, lhs.y / rhs)
    }
    
    /// Updates the vector with the division of
    /// all components of a vector and a floating-point value.
    public static func /= (lhs: inout Vector2, rhs: FloatingPointType) {
        lhs = lhs / rhs
    }
    
    /// The opposite of a vector.
    ///
    /// This is the same as multiplying by `-1`.
    public static prefix func - (lhs: Vector2) -> Vector2 {
        var copy = lhs
        copy.x = -copy.x
        copy.y = -copy.y
        return copy
    }
    
    /// The multiplication of two vectors, component by component.
    public static func * (lhs: Vector2, rhs: Vector2) -> Vector2 {
        Vector2(lhs.x * rhs.x, lhs.y * rhs.y)
    }
    
    /// Updates the vector with the multiplication of two vectors,
    /// component by component.
    public static func *= (lhs: inout Vector2, rhs: Vector2) {
        lhs = lhs * rhs
    }
    
    /// The division of two vectors, component by component.
    public static func / (lhs: Vector2, rhs: Vector2) -> Vector2 {
        Vector2(lhs.x / rhs.x, lhs.y / rhs.y)
    }
    
    /// Updates the vector with the division of two vectors,
    /// component by component.
    public static func /= (lhs: inout Vector2, rhs: Vector2) {
        lhs = lhs / rhs
    }
}

// MARK: AdditiveArithmetic

extension Vector2: AdditiveArithmetic {
    public static func + (lhs: Vector2, rhs: Vector2) -> Vector2 {
        Vector2(lhs.x + rhs.x, lhs.y + rhs.y)
    }
    
    public static func - (lhs: Vector2, rhs: Vector2) -> Vector2 {
        Vector2(lhs.x - rhs.x, lhs.y - rhs.y)
    }
}

// MARK: - Comparable

extension Vector2: Comparable {
    /// Compares two vectors scalar by scalar.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is less than the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors. This operator is useful for sorting vectors.
    ///
    /// >note: Vectors with `nan` elements don't behave the same as other vectors.
    /// Therefore, the results from this operator may not be accurate if `nan`s are included.
    public static func < (lhs: Vector2, rhs: Vector2) -> Bool {
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
    public static func > (lhs: Vector2, rhs: Vector2) -> Bool {
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
    public static func <= (lhs: Vector2, rhs: Vector2) -> Bool {
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
    public static func >= (lhs: Vector2, rhs: Vector2) -> Bool {
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

extension Vector2: CustomStringConvertible, CustomDebugStringConvertible {
    public var description: String {
        "(x: \(x), y: \(y))"
    }
    
    public var debugDescription: String {
        "Vector2(x: \(x), y: \(y))"
    }
}

// MARK: - ExpressibleByArrayLiteral

extension Vector2: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: FloatingPointType...) {
        precondition(
            elements.count == 2,
            "Attempting to create a 2D vector from \(elements.count) elements."
        )
        
        self.x = elements[0]
        self.y = elements[1]
    }
}

// MARK: - Codable

extension Vector2: Codable {
    public func encode(to encoder: Encoder) throws {
        var unkeyedContainer = encoder.unkeyedContainer()
        try unkeyedContainer.encode(x)
        try unkeyedContainer.encode(y)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        x = try container.decode(FloatingPointType.self)
        y = try container.decode(FloatingPointType.self)
    }
}

// MARK: - Typealiases

/// A 2D floating-point point.
public typealias Point2 = Vector2

/// A 2D floating-point size.
public typealias Size2 = Vector2

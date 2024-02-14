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
/// ### Use as Boolean
///
/// In a boolean context, a `Vector2` evaluates to `false` if
/// it's equal to `(0, 0)`.
/// Otherwise, it always evaluates to `true`.
///
/// ### Type Alias
///
/// `Vector2` is a type alias to `SIMD2<FloatingPointType>`.
/// 
/// `SIMD2` already comes with many functions that cannot be detailed here.
/// Only added extensions are detailed in this documentation.
///
/// Check the corresponding documentation to learn more about the functions
/// the Standard Library proposes.
///
/// ## Topics
///
/// ### Special Values
///
/// - ``Swift/SIMD2/left-72tv6``
/// - ``Swift/SIMD2/right-2j88a``
/// - ``Swift/SIMD2/up-dwlf``
/// - ``Swift/SIMD2/down-9dipr``
///
/// ### Geometric Properties
///
/// - ``Swift/SIMD2/width``
/// - ``Swift/SIMD2/height``
/// - ``Swift/SIMD2/isFinite``
/// - ``Swift/SIMD2/aspect-4mg9l``
/// - ``Swift/SIMD2/orthogonal()``
/// - ``Swift/SIMD2/abs()``
/// - ``Swift/SIMD2/formAbs()``
/// - ``Swift/SIMD2/signUnitValue-20tkd``
///
/// ### Magnitude and Distance
///
/// - ``Swift/SIMD2/magnitude-8meht``
/// - ``Swift/SIMD2/magnitudeSquared-10r2h``
/// - ``Swift/SIMD2/limitedMagnitude(_:)``
/// - ``Swift/SIMD2/limitMagnitude(_:)``
/// - ``Swift/SIMD2/distance(to:)``
/// - ``Swift/SIMD2/distanceSquared(to:)``
///
/// ### Normalization
///
/// - ``Swift/SIMD2/normalized()``
/// - ``Swift/SIMD2/normalize()``
/// - ``Swift/SIMD2/isNormalized``
///
/// ### Angle
///
/// - ``Swift/SIMD2/angle``
/// - ``Swift/SIMD2/angle(to:)``
/// - ``Swift/SIMD2/angle(toPoint:)``
/// - ``Swift/SIMD2/rotated(by:)``
/// - ``Swift/SIMD2/rotate(by:)``
/// - ``Swift/SIMD2/fromAngle(_:)``
///
/// ### Direction
///
/// - ``Swift/SIMD2/direction(to:)``
/// - ``Swift/SIMD2/formDirection(to:)``
/// - ``Swift/SIMD2/moved(toward:delta:)``
/// - ``Swift/SIMD2/move(toward:delta:)``
///
/// ### Products
///
/// - ``Swift/SIMD2/dot(_:)``
/// - ``Swift/SIMD2/cross(_:)``
///
/// ### 2D Transformations
///
/// - ``Swift/SIMD2/projected(onto:)``
/// - ``Swift/SIMD2/project(onto:)``
/// - ``Swift/SIMD2/slided(along:)``
/// - ``Swift/SIMD2/slide(along:)``
/// - ``Swift/SIMD2/bounced(off:)``
/// - ``Swift/SIMD2/bounce(off:)``
/// - ``Swift/SIMD2/reflected(from:)``
/// - ``Swift/SIMD2/reflect(from:)``
///
/// ### Interpolation
///
/// - ``Swift/SIMD2/lerp(to:weight:)``
/// - ``Swift/SIMD2/formLerp(to:weight:)``
/// - ``Swift/SIMD2/slerp(to:weight:)``
/// - ``Swift/SIMD2/formSlerp(to:weight:)``
/// - ``Swift/SIMD2/cubicInterpolation(to:pre:post:weight:)``
/// - ``Swift/SIMD2/formCubicInterpolation(to:pre:post:weight:)``
/// - ``Swift/SIMD2/cubicInterpolationInTime(to:pre:post:weight:toT:preT:postT:)``
/// - ``Swift/SIMD2/formCubicInterpolationInTime(to:pre:post:weight:toT:preT:postT:)``
/// - ``Swift/SIMD2/bezierInterpolation(to:control1:control2:t:)``
/// - ``Swift/SIMD2/formBezierInterpolation(to:control1:control2:t:)``
/// - ``Swift/SIMD2/bezierDerivative(to:control1:control2:t:)``
/// - ``Swift/SIMD2/formBezierDerivative(to:control1:control2:t:)``
///
/// ### Axis
///
/// - ``Swift/SIMD2/minAxis``
/// - ``Swift/SIMD2/maxAxis``
/// - ``Swift/SIMD2/subscript(axis:)``
///
/// ### Rounding and Division
///
/// - ``Swift/SIMD2/snapped(step:)-3yle3``
/// - ``Swift/SIMD2/snap(step:)-8m6kq``
/// - ``Swift/SIMD2/positiveTruncatingRemainder(dividingBy:)-5y5sb``
/// - ``Swift/SIMD2/formPositiveTruncatingRemainder(dividingBy:)-14e22``
/// - ``Swift/SIMD2/positiveTruncatingRemainder(dividingBy:)-3z356``
/// - ``Swift/SIMD2/formPositiveTruncatingRemainder(dividingBy:)-6e5zr``
///
/// ### Approximate Equality
///
/// - ``Swift/SIMD2/isApproximatelyZero``
/// - ``Swift/SIMD2/isApproximatelyEqual(to:)``
///
/// ### Comparison
///
/// - ``Swift/SIMD2/<(_:_:)``
/// - ``Swift/SIMD2/<=(_:_:)``
/// - ``Swift/SIMD2/>(_:_:)``
/// - ``Swift/SIMD2/>=(_:_:)``
///
/// ### Extension
///
/// - ``Swift/SIMD2``
public typealias Vector2 = SIMD2<FloatingPointType>

extension SIMD2 {
    /// The vector's width. Equivalent to `x`.
    public var width: Scalar {
        get {
            x
        }
        set(newValue) {
            x = newValue
        }
    }
    
    /// The vector's height. Equivalent to `y`.
    public var height: Scalar {
        get {
            y
        }
        set(newValue) {
            y = newValue
        }
    }
}

extension SIMD2 where Scalar : BinaryFloatingPoint {
    /// The left unit vector.
    ///
    /// Represents the direction of left.
    public static var left: SIMD2 {
        SIMD2(x: -1, y: 0)
    }
    
    /// The right unit vector.
    ///
    /// Represents the direction of right.
    public static var right: SIMD2 {
        SIMD2(x: 1, y: 0)
    }
    
    /// The up unit vector.
    ///
    /// Y is down in 2D, so this vector points -Y.
    public static var up: SIMD2 {
        SIMD2(x: 0, y: -1)
    }
    
    /// The down unit vector.
    ///
    /// Y is down in 2D, so this vector points +Y.
    public static var down: SIMD2 {
        SIMD2(x: 0, y: 1)
    }
    
    /// Returns the normalized vector pointing from this vector to another one.
    ///
    /// This is equivalent to using `(b - a).normalized`.
    public func direction(to other: SIMD2) -> SIMD2 {
        (other - self).normalized()
    }
    
    /// Replaces this vector with the normalized vector pointing from this vector to another one.
    ///
    /// This is equivalent to using `(b - a).normalized`.
    public mutating func formDirection(to other: SIMD2) {
        self = direction(to: other)
    }
    
    /// Returns the distance between this vector and another one.
    public func distance(to other: SIMD2) -> Scalar {
        ((other - self) * (other - self)).sum().squareRoot()
    }
    
    /// Returns the squared distance between this vector and another one.
    ///
    /// This method runs faster than ``distance(to:)``, so prefer it if you
    /// need to compare vectors or need the squared distance for some formula.
    public func distanceSquared(to other: SIMD2) -> Scalar {
        ((other - self) * (other - self)).sum()
    }
    
    /// The magnitude (length) of the vector.
    public var magnitude: Scalar {
        (self * self).sum().squareRoot()
    }
    
    /// The squared magnitude of the vector.
    ///
    /// This property runs faster than ``magnitude-8meht``, so prefer it if you need
    /// to compare vectors or need the squared distance for some formula.
    public var magnitudeSquared: Scalar {
        (self * self).sum()
    }
    
    /// Returns this vector with a magnitude not exceeding a given value.
    public func limitedMagnitude(_ magnitude: Scalar = 1.0) -> SIMD2 {
        let currentMagnitude = self.magnitude
        var copy = self
        if currentMagnitude > 0 && magnitude < currentMagnitude {
            copy /= currentMagnitude
            copy *= magnitude
        }

        return copy
    }
    
    /// Modifies the vector magnitude to not exceed a given value.
    public mutating func limitMagnitude(_ magnitude: Scalar = 1.0) {
        self = limitedMagnitude(magnitude)
    }
    
    /// Returns the result of scaling this vector to unit length.
    ///
    /// Equivalent to `v / v.magnitude`.
    ///
    /// >important: This function may return incorrect values
    /// if the vector magnitude is near zero.
    public func normalized() -> SIMD2 {
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
    public func isApproximatelyEqual(to other: SIMD2) -> Bool {
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
    public func positiveTruncatingRemainder(dividingBy value: Scalar) -> SIMD2 {
        SIMD2(
            x: x.positiveTruncatingRemainder(dividingBy: value),
            y: y.positiveTruncatingRemainder(dividingBy: value)
        )
    }
    
    /// Replaces each scalar with the positive remainder of itself divided by the given
    /// value using truncating division.
    ///
    /// This method applies ``Swift/BinaryFloatingPoint/formPositiveTruncatingRemainder(dividingBy:)``
    /// on each scalar.
    public mutating func formPositiveTruncatingRemainder(dividingBy value: Scalar) {
        x.formPositiveTruncatingRemainder(dividingBy: value)
        y.formPositiveTruncatingRemainder(dividingBy: value)
    }
    
    /// Returns the vector composed of the positive remainder of each scalar
    /// divided by the corresponding scalar of a given vector using truncating division.
    ///
    /// This method applies ``Swift/BinaryFloatingPoint/positiveTruncatingRemainder(dividingBy:)``
    /// on each scalar.
    public func positiveTruncatingRemainder(dividingBy other: SIMD2) -> SIMD2 {
        SIMD2(
            x: x.positiveTruncatingRemainder(dividingBy: other.x),
            y: y.positiveTruncatingRemainder(dividingBy: other.y)
        )
    }
    
    /// Replaces each scalar by the positive remainder of itself divided by
    /// the corresponding scalar of a given vector using truncating division.
    ///
    /// This method applies ``Swift/BinaryFloatingPoint/formPositiveTruncatingRemainder(dividingBy:)``
    /// on each scalar.
    public mutating func formPositiveTruncatingRemainder(dividingBy other: SIMD2) {
        x.formPositiveTruncatingRemainder(dividingBy: other.x)
        y.formPositiveTruncatingRemainder(dividingBy: other.y)
    }
    
    /// Returns the result of projecting this vector onto a given vector.
    public func projected(onto other: SIMD2) -> SIMD2 {
        return other * (self.dot(other) / other.magnitudeSquared)
    }
    
    /// Replaces this vector with the result of projecting this vector onto a given vector.
    public mutating func project(onto other: SIMD2) {
        self = projected(onto: other)
    }
    
    /// Returns the result of the linear interpolation between this vector
    /// and another one by a given amount.
    ///
    /// - Parameters:
    ///   - other: The interpolation destination.
    ///   - weight: The interpolation amount. On the range of `0` to `1`.
    public func lerp(to other: SIMD2, weight: Scalar) -> SIMD2 {
        self + weight * (other - self)
    }
    
    /// Replaces this vector with the result of the linear interpolation between this vector
    /// and another one by a given amount.
    ///
    /// - Parameters:
    ///   - other: The interpolation destination.
    ///   - weight: The interpolation amount. On the range of `0` to `1`.
    public mutating func formLerp(to other: SIMD2, weight: Scalar) {
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
        to other: SIMD2,
        pre: SIMD2,
        post: SIMD2,
        weight: Scalar
    ) -> SIMD2 {
        SIMD2(
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
        to other: SIMD2,
        pre: SIMD2,
        post: SIMD2,
        weight: Scalar
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
        to other: SIMD2,
        pre: SIMD2,
        post: SIMD2,
        weight: Scalar,
        toT: Scalar,
        preT: Scalar,
        postT: Scalar
    ) -> SIMD2 {
        SIMD2(
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
        to other: SIMD2,
        pre: SIMD2,
        post: SIMD2,
        weight: Scalar,
        toT: Scalar,
        preT: Scalar,
        postT: Scalar
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
        to other: SIMD2,
        control1: SIMD2,
        control2: SIMD2,
        t: Scalar
    ) -> SIMD2 {
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
        to other: SIMD2,
        control1: SIMD2,
        control2: SIMD2,
        t: Scalar
    ) {
        self = bezierInterpolation(to: other, control1: control1, control2: control2, t: t)
    }
    
    /// Returns the derivative at the given `t` on the Bézier curve
    /// defined by this vector, the given control points and the destination.
    public func bezierDerivative(
        to other: SIMD2,
        control1: SIMD2,
        control2: SIMD2,
        t: Scalar
    ) -> SIMD2 {
        SIMD2(
            x: x.bezierDerivative(to: other.x, control1: control1.x, control2: control2.x, t: t),
            y: y.bezierDerivative(to: other.y, control1: control1.y, control2: control2.y, t: t)
        )
    }
    
    /// Replaces this vector with the derivative at the given `t` on the Bézier curve
    /// defined by this vector, the given control points and the destination.
    public mutating func formBezierDerivative(
        to other: SIMD2,
        control1: SIMD2,
        control2: SIMD2,
        t: Scalar
    ) {
        self = bezierDerivative(to: other, control1: control1, control2: control2, t: t)
    }
    
    /// Returns this vector moved toward another vector by a fixed amount.
    ///
    /// The returned value will not go past `other`.
    public func moved(toward other: SIMD2, delta: Scalar) -> SIMD2 {
        let vd = other - self
        let len = vd.magnitude
        return len <= delta || len < .cmpEpsilon ? other : self + vd / len * delta
    }
    
    /// Moves this vector toward another vector by a fixed amount.
    ///
    /// The returned value will not go past `other`.
    public mutating func move(toward other: SIMD2, delta: Scalar) {
        self = moved(toward: other, delta: delta)
    }
    
    /// Returns a perpendicular vector.
    ///
    /// The returned vector is rotated 90 degrees counter-clockwise
    /// compared to the original, with the same magnitude.
    public func orthogonal() -> SIMD2 {
        SIMD2(x: y, y: -x)
    }
    
    /// The aspect ratio of the vector, the ratio of `x` to `y`.
    public var aspect: Scalar {
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
    public func dot(_ other: SIMD2) -> Scalar {
        x * other.x + y * other.y
    }
    
    /// Returns the component of this vector along the given plane,
    /// specified by its normal vector.
    public func slided(along normal: SIMD2) -> SIMD2 {
#if MATH_CHECKS
        if !normal.isNormalized {
            godotPrintError("The normal vector must be normalized, returning (0, 0).")
            return SIMD2()
        }
#endif
        return self - normal * self.dot(normal)
    }
    
    /// Returns the component of this vector along the given plane,
    /// specified by its normal vector.
    public mutating func slide(along normal: SIMD2) {
        self = slided(along: normal)
    }
    
    /// Returns this vector bounced off a plane defined by the given normal.
    public func bounced(off normal: SIMD2) -> SIMD2 {
        -reflected(from: normal)
    }
    
    /// Bounces this vector off a plane defined by the given normal.
    public mutating func bounce(off normal: SIMD2) {
        self = bounced(off: normal)
    }
    
    /// Returns the result of reflecting this vector from a plane
    /// defined by the given normal.
    public func reflected(from normal: SIMD2) -> SIMD2 {
#if MATH_CHECKS
        if !normal.isNormalized {
            godotPrintError("The normal vector must be normalized, returning (0, 0).")
            return SIMD2()
        }
#endif
        return 2 * normal * self.dot(normal) - self
    }
    
    /// Reflects this vector from a plane defined by the given normal.
    public mutating func reflect(from normal: SIMD2) {
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
    public func cross(_ other: SIMD2) -> Scalar {
        x * other.y - y * other.x;
    }
    
    /// A vector with each component set to `1.0` if it's positive,
    /// `-1.0` if it's negative, and `0.0` if it's zero.
    public var signUnitValue: SIMD2 {
        SIMD2(x: x.signUnitValue, y: y.signUnitValue)
    }
    
    /// Returns a new vector with each component snapped to
    /// the nearest multiple of the corresponding component in a given vector.
    ///
    /// This can also be used to round the components
    /// to an arbitrary number of decimals.
    public func snapped(step: SIMD2) -> SIMD2 {
        SIMD2(
            x: x.snapped(step: step.x),
            y: y.snapped(step: step.y)
        )
    }
    
    /// Replaces this vector with a vector with each component snapped to
    /// the nearest multiple of the corresponding component in a given vector.
    ///
    /// This can also be used to round the components
    /// to an arbitrary number of decimals.
    public mutating func snap(step: SIMD2) {
        self = snapped(step: step)
    }
}

extension SIMD2: Comparable where Scalar : Comparable {
    /// Compares two vectors scalar by scalar.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is less than the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors. This operator is useful for sorting vectors.
    ///
    /// >note: Vectors with `nan` elements don't behave the same as other vectors.
    /// Therefore, the results from this operator may not be accurate if `nan`s are included.
    public static func < (lhs: SIMD2<Scalar>, rhs: SIMD2<Scalar>) -> Bool {
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
    public static func > (lhs: SIMD2<Scalar>, rhs: SIMD2<Scalar>) -> Bool {
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
    public static func <= (lhs: SIMD2<Scalar>, rhs: SIMD2<Scalar>) -> Bool {
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
    public static func >= (lhs: SIMD2<Scalar>, rhs: SIMD2<Scalar>) -> Bool {
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

extension SIMD2 where Scalar : Real & BinaryFloatingPoint {
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
    public static func fromAngle(_ angle: Scalar) -> SIMD2 {
        SIMD2(x: cos(angle), y: sin(angle))
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
    public var angle: Scalar {
        atan2(y: y, x: x)
    }
    
    /// Returns the angle to the given vector, in radians.
    public func angle(to other: SIMD2) -> Scalar {
        atan2(y: cross(other), x: dot(other))
    }
    
    /// Returns the angle between the line connecting the
    /// two points and the X axis, in radians.
    ///
    /// `a.angle(toPoint: b)` is equivalent of doing `(b - a).angle`.
    public func angle(toPoint point: SIMD2) -> Scalar {
        (point - self).angle
    }
    
    /// Returns the result of rotating this vector by a given angle (in radians).
    public func rotated(by angle: Scalar) -> SIMD2 {
        let sine = sin(angle)
        let cosi = cos(angle)
        return SIMD2(
            x: x * cosi - y * sine,
            y: x * sine + y * cosi
        )
    }
    
    /// Rotates this vector by a given angle (in radians).
    public mutating func rotate(by angle: Scalar) {
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
    public func slerp(to other: SIMD2, weight: Scalar) -> SIMD2 {
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
    public mutating func formSlerp(to other: SIMD2, weight: Scalar) {
        self = slerp(to: other, weight: weight)
    }
}

extension SIMD2 where Scalar : Comparable & SignedNumeric {
    /// Returns this vector with all components in absolute values (i.e. positive).
    public func abs() -> SIMD2 {
        SIMD2(x: Swift.abs(x), y: Swift.abs(y))
    }
    
    /// Replaces this vector with a vector with all
    /// components in absolute values (i.e. positive).
    public mutating func formAbs() {
        self = abs()
    }
}

extension SIMD2 {
    /// Accesses the vector component on the given axis.
    public subscript(axis axis: Axis2D) -> Scalar {
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

/// A 2D floating-point point.
public typealias Point2 = Vector2

/// A 2D floating-point size.
public typealias Size2 = Vector2

import Numerics

/// A 3D vector using floating point coordinates.
///
/// This type can be used to represent 3D coordinates or any other triplet of numeric values.
///
/// It uses floating-point coordinates.
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
/// ### Type Alias
///
/// `Vector3` is a type alias to `SIMD3<FloatingPointType>`.
///
/// `SIMD3` already comes with many functions that cannot be detailed here.
/// Only added extensions are detailed in this documentation.
///
/// Check the corresponding documentation to learn more about the functions
/// the Standard Library proposes.
///
/// ## Topics
///
/// ### Special Values
///
/// - ``Swift/SIMD3/left-wnv6``
/// - ``Swift/SIMD3/right-a4c6``
/// - ``Swift/SIMD3/up-3yzzm``
/// - ``Swift/SIMD3/down-qdag``
/// - ``Swift/SIMD3/forward-2rpd3``
/// - ``Swift/SIMD3/back-1j2b7``
/// - ``Swift/SIMD3/modelLeft``
/// - ``Swift/SIMD3/modelRight``
/// - ``Swift/SIMD3/modelTop``
/// - ``Swift/SIMD3/modelBottom``
/// - ``Swift/SIMD3/modelFront``
/// - ``Swift/SIMD3/modelRear``
///
/// ### Geometric Properties
///
/// - ``Swift/SIMD3/isFinite``
/// - ``Swift/SIMD3/abs()``
/// - ``Swift/SIMD3/formAbs()``
/// - ``Swift/SIMD3/inverse()``
/// - ``Swift/SIMD3/formInverse()``
/// - ``Swift/SIMD3/signUnitValue-2wuxt``
///
/// ### Magnitude and Distance
///
/// - ``Swift/SIMD3/magnitude-1hrar``
/// - ``Swift/SIMD3/magnitudeSquared-4gxb0``
/// - ``Swift/SIMD3/limitedMagnitude(_:)``
/// - ``Swift/SIMD3/limitMagnitude(_:)``
/// - ``Swift/SIMD3/distance(to:)``
/// - ``Swift/SIMD3/distanceSquared(to:)``
///
/// ### Normalization
///
/// - ``Swift/SIMD3/normalized()``
/// - ``Swift/SIMD3/normalize()``
/// - ``Swift/SIMD3/isNormalized``
///
/// ### Angle
///
/// - ``Swift/SIMD3/angle(to:)``
/// - ``Swift/SIMD3/signedAngle(to:around:)``
/// - ``Swift/SIMD3/rotated(by:around:)``
/// - ``Swift/SIMD3/rotate(by:around:)``
///
/// ### Direction
///
/// - ``Swift/SIMD3/direction(to:)``
/// - ``Swift/SIMD3/formDirection(to:)``
/// - ``Swift/SIMD3/moved(toward:delta:)``
/// - ``Swift/SIMD3/move(toward:delta:)``
///
/// ### Products
///
/// - ``Swift/SIMD3/dot(_:)``
/// - ``Swift/SIMD3/cross(_:)``
/// - ``Swift/SIMD3/formCross(_:)``
/// - ``Swift/SIMD3/outer(_:)``
///
/// ### 3D Transformations
///
/// - ``Swift/SIMD3/projected(onto:)``
/// - ``Swift/SIMD3/project(onto:)``
/// - ``Swift/SIMD3/slided(along:)``
/// - ``Swift/SIMD3/slide(along:)``
/// - ``Swift/SIMD3/bounced(off:)``
/// - ``Swift/SIMD3/bounce(off:)``
/// - ``Swift/SIMD3/reflected(from:)``
/// - ``Swift/SIMD3/reflect(from:)``
///
/// ### Interpolation
///
/// - ``Swift/SIMD3/lerp(to:weight:)``
/// - ``Swift/SIMD3/formLerp(to:weight:)``
/// - ``Swift/SIMD3/slerp(to:weight:)``
/// - ``Swift/SIMD3/formSlerp(to:weight:)``
/// - ``Swift/SIMD3/cubicInterpolation(to:pre:post:weight:)``
/// - ``Swift/SIMD3/formCubicInterpolation(to:pre:post:weight:)``
/// - ``Swift/SIMD3/cubicInterpolationInTime(to:pre:post:weight:toT:preT:postT:)``
/// - ``Swift/SIMD3/formCubicInterpolationInTime(to:pre:post:weight:toT:preT:postT:)``
/// - ``Swift/SIMD3/bezierInterpolation(to:control1:control2:t:)``
/// - ``Swift/SIMD3/formBezierInterpolation(to:control1:control2:t:)``
/// - ``Swift/SIMD3/bezierDerivative(to:control1:control2:t:)``
/// - ``Swift/SIMD3/formBezierDerivative(to:control1:control2:t:)``
///
/// ### Axis
///
/// - ``Swift/SIMD3/minAxis``
/// - ``Swift/SIMD3/maxAxis``
/// - ``Swift/SIMD3/subscript(axis:)``
///
/// ### Rounding and Division
///
/// - ``Swift/SIMD3/snapped(step:)-9ahda``
/// - ``Swift/SIMD3/snap(step:)-1bw57``
/// - ``Swift/SIMD3/positiveTruncatingRemainder(dividingBy:)-8g7s``
/// - ``Swift/SIMD3/formPositiveTruncatingRemainder(dividingBy:)-8nr5n``
/// - ``Swift/SIMD3/positiveTruncatingRemainder(dividingBy:)-salr``
/// - ``Swift/SIMD3/formPositiveTruncatingRemainder(dividingBy:)-6l8v1``
///
/// ### Approximate Equality
///
/// - ``Swift/SIMD3/isApproximatelyZero``
/// - ``Swift/SIMD3/isApproximatelyEqual(to:)``
///
/// ### Comparison
///
/// - ``Swift/SIMD3/<(_:_:)``
/// - ``Swift/SIMD3/<=(_:_:)``
/// - ``Swift/SIMD3/>(_:_:)``
/// - ``Swift/SIMD3/>=(_:_:)``
///
/// ### Octahedron Encoding
///
/// - ``Swift/SIMD3/decodeOctahedron(_:)``
/// - ``Swift/SIMD3/encodeOctahedron(_:)``
///
/// ### Extension
///
/// - ``Swift/SIMD3``
public typealias Vector3 = SIMD3<FloatingPointType>

extension SIMD3 where Scalar : BinaryFloatingPoint {
    /// The left unit vector.
    ///
    /// Represents the local direction of left, and the global direction of west.
    public static var left: SIMD3 {
        SIMD3(x: -1, y: 0, z: 0)
    }
    
    /// The right unit vector.
    ///
    /// Represents the local direction of right, and the global direction of east.
    public static var right: SIMD3 {
        SIMD3(x: 1, y: 0, z: 0)
    }
    
    /// The up unit vector.
    public static var up: SIMD3 {
        SIMD3(x: 0, y: 1, z: 0)
    }
    
    /// The down unit vector.
    public static var down: SIMD3 {
        SIMD3(x: 0, y: -1, z: 0)
    }
    
    /// The forward unit vector.
    ///
    /// Represents the local direction of forward, and the global direction of north.
    ///
    /// Keep in mind that the forward direction for lights, cameras, etc is different
    /// from 3D assets like characters, which face towards the camera by convention.
    /// Use ``modelFront`` and similar constants when working in 3D asset space.
    public static var forward: SIMD3 {
        SIMD3(x: 0, y: 0, z: -1)
    }
    
    /// The back unit vector.
    ///
    /// Represents the local direction of back, and the global direction of south.
    public static var back: SIMD3 {
        SIMD3(x: 0, y: 0, z: 1)
    }
    
    /// The unit vector pointing towards the left side of imported 3D assets.
    public static var modelLeft: SIMD3 {
        SIMD3(x: 1, y: 0, z: 0)
    }
    
    /// The unit vector pointing towards the right side of imported 3D assets.
    public static var modelRight: SIMD3 {
        SIMD3(x: -1, y: 0, z: 0)
    }
    
    /// The unit vector pointing towards the top side (up) of imported 3D assets.
    public static var modelTop: SIMD3 {
        SIMD3(x: 0, y: 1, z: 0)
    }
    
    /// The unit vector pointing towards the bottom side (down) of imported 3D assets.
    public static var modelBottom: SIMD3 {
        SIMD3(x: 0, y: -1, z: 0)
    }
    
    /// The unit vector pointing towards the front side (facing forward) of imported 3D assets.
    public static var modelFront: SIMD3 {
        SIMD3(x: 0, y: 0, z: 1)
    }
    
    /// The unit vector pointing towards the rear side (back) of imported 3D assets.
    public static var modelRear: SIMD3 {
        SIMD3(x: 0, y: 0, z: -1)
    }
    
    /// Returns the normalized vector pointing from this vector to another one.
    ///
    /// This is equivalent to using `(b - a).normalized`.
    public func direction(to other: SIMD3) -> SIMD3 {
        (other - self).normalized()
    }
    
    /// Replaces this vector with the normalized vector pointing from this vector to another one.
    ///
    /// This is equivalent to using `(b - a).normalized`.
    public mutating func formDirection(to other: SIMD3) {
        self = direction(to: other)
    }
    
    /// Returns the distance between this vector and another one.
    public func distance(to other: SIMD3) -> Scalar {
        (other - self).magnitude
    }
    
    /// Returns the squared distance between this vector and another one.
    ///
    /// This method runs faster than ``distance(to:)``, so prefer it if you
    /// need to compare vectors or need the squared distance for some formula.
    public func distanceSquared(to other: SIMD3) -> Scalar {
        (other - self).magnitudeSquared
    }
    
    /// The magnitude (length) of the vector.
    public var magnitude: Scalar {
        (self * self).sum().squareRoot()
    }
    
    /// The squared magnitude of the vector.
    ///
    /// This property runs faster than ``magnitude-1hrar``, so prefer it if you need
    /// to compare vectors or need the squared distance for some formula.
    public var magnitudeSquared: Scalar {
        (self * self).sum()
    }
    
    /// Returns this vector with a magnitude not exceeding a given value.
    public func limitedMagnitude(_ magnitude: Scalar = 1.0) -> SIMD3 {
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
    public func normalized() -> SIMD3 {
        var copy = self
        copy.normalize()
        return copy
    }
    
    /// Scales this vector to have a unit length.
    ///
    /// Equivalent to `v /= v.magnitude`.
    ///
    /// >important: This function may result in incorrect values
    /// if the vector magnitude is near zero.
    public mutating func normalize() {
        let mag = magnitudeSquared
        if mag == 0 {
            x = 0
            y = 0
            z = 0
        } else {
            let length = mag.squareRoot()
            x /= length
            y /= length
            z /= length
        }
    }
    
    /// A Boolean value indicating whether the vector is normalized.
    ///
    /// This property checks that the magnitude is approximately equal to `1`.
    public var isNormalized: Bool {
        magnitudeSquared.isApproximatelyEqual(to: 1, tolerance: .unitEpsilon)
    }
    
    /// Returns `true` if this vector is approximately equal to another one.
    public func isApproximatelyEqual(to other: SIMD3) -> Bool {
        x.isApproximatelyEqual(to: other.x) &&
        y.isApproximatelyEqual(to: other.y) &&
        z.isApproximatelyEqual(to: other.z)
    }
    
    /// A Boolean value indicating whether the vector's values are approximately zero.
    ///
    /// This method is faster than using ``isApproximatelyEqual(to:)``
    /// with value zero.
    public var isApproximatelyZero: Bool {
        x.isApproximatelyZero &&
        y.isApproximatelyZero &&
        z.isApproximatelyZero
    }
    
    /// A Boolean value indicating whether the vector is finite.
    public var isFinite: Bool {
        x.isFinite &&
        y.isFinite &&
        z.isFinite
    }
    
    /// Returns the inverse of this vector.
    ///
    /// This is the same as `Vector3(x: 1.0 / v.x, y: 1.0 / v.y, z: 1.0 / v.z)`.
    public func inverse() -> SIMD3 {
        SIMD3(1 / x, 1 / y, 1 / z)
    }
    
    /// Replaces this vector with its inverse.
    ///
    /// This is the same as `Vector3(x: 1.0 / v.x, y: 1.0 / v.y, z: 1.0 / v.z)`.
    public mutating func formInverse() {
        self = inverse()
    }
    
    /// Returns a new vector with each component snapped to
    /// the nearest multiple of the corresponding component in a given vector.
    ///
    /// This can also be used to round the components
    /// to an arbitrary number of decimals.
    public func snapped(step: SIMD3) -> SIMD3 {
        SIMD3(
            x: x.snapped(step: step.x),
            y: y.snapped(step: step.y),
            z: z.snapped(step: step.z)
        )
    }
    
    /// Replaces this vector with a vector with each component snapped to
    /// the nearest multiple of the corresponding component in a given vector.
    ///
    /// This can also be used to round the components
    /// to an arbitrary number of decimals.
    public mutating func snap(step: SIMD3) {
        self = snapped(step: step)
    }
    
    /// Returns the result of the linear interpolation between this vector
    /// and another one by a given amount.
    ///
    /// - Parameters:
    ///   - other: The interpolation destination.
    ///   - weight: The interpolation amount. On the range of `0` to `1`.
    public func lerp(to other: SIMD3, weight: Scalar) -> SIMD3 {
        self + weight * (other - self)
    }
    
    /// Replaces this vector with the result of the linear interpolation between this vector
    /// and another one by a given amount.
    ///
    /// - Parameters:
    ///   - other: The interpolation destination.
    ///   - weight: The interpolation amount. On the range of `0` to `1`.
    public mutating func formLerp(to other: SIMD3, weight: Scalar) {
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
        to other: SIMD3,
        pre: SIMD3,
        post: SIMD3,
        weight: Scalar
    ) -> SIMD3 {
        SIMD3(
            x: self.x.cubicInterpolation(
                to: other.x, pre: pre.x, post: post.x, weight: weight),
            y: self.y.cubicInterpolation(
                to: other.y, pre: pre.y, post: post.y, weight: weight),
            z: self.z.cubicInterpolation(
                to: other.z, pre: pre.z, post: post.z, weight: weight)
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
        to other: SIMD3,
        pre: SIMD3,
        post: SIMD3,
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
        to other: SIMD3,
        pre: SIMD3,
        post: SIMD3,
        weight: Scalar,
        toT: Scalar,
        preT: Scalar,
        postT: Scalar
    ) -> SIMD3 {
        SIMD3(
            x: self.x.cubicInterpolationInTime(
                to: other.x, pre: pre.x, post: post.x, weight: weight, toT: toT, preT: preT, postT: postT),
            y: self.y.cubicInterpolationInTime(
                to: other.y, pre: pre.y, post: post.y, weight: weight, toT: toT, preT: preT, postT: postT),
            z: self.z.cubicInterpolationInTime(
                to: other.z, pre: pre.z, post: post.z, weight: weight, toT: toT, preT: preT, postT: postT)
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
        to other: SIMD3,
        pre: SIMD3,
        post: SIMD3,
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
        to other: SIMD3,
        control1: SIMD3,
        control2: SIMD3,
        t: Scalar
    ) -> SIMD3 {
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
        to other: SIMD3,
        control1: SIMD3,
        control2: SIMD3,
        t: Scalar
    ) {
        self = bezierInterpolation(to: other, control1: control1, control2: control2, t: t)
    }
    
    /// Returns the derivative at the given `t` on the Bézier curve
    /// defined by this vector, the given control points and the destination.
    public func bezierDerivative(
        to other: SIMD3,
        control1: SIMD3,
        control2: SIMD3,
        t: Scalar
    ) -> SIMD3 {
        SIMD3(
            x: x.bezierDerivative(to: other.x, control1: control1.x, control2: control2.x, t: t),
            y: y.bezierDerivative(to: other.y, control1: control1.y, control2: control2.y, t: t),
            z: z.bezierDerivative(to: other.z, control1: control1.z, control2: control2.z, t: t)
        )
    }
    
    /// Replaces this vector with the derivative at the given `t` on the Bézier curve
    /// defined by this vector, the given control points and the destination.
    public mutating func formBezierDerivative(
        to other: SIMD3,
        control1: SIMD3,
        control2: SIMD3,
        t: Scalar
    ) {
        self = bezierDerivative(to: other, control1: control1, control2: control2, t: t)
    }
    
    /// Returns this vector moved toward another vector by a fixed amount.
    ///
    /// The returned value will not go past `other`.
    public func moved(toward other: SIMD3, delta: Scalar) -> SIMD3 {
        let vd = other - self
        let len = vd.magnitude
        return len <= delta || len < .cmpEpsilon ? other : self + vd / len * delta
    }
    
    /// Moves this vector toward another vector by a fixed amount.
    ///
    /// The returned value will not go past `other`.
    public mutating func move(toward other: SIMD3, delta: Scalar) {
        self = moved(toward: other, delta: delta)
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
    public func dot(_ other: SIMD3) -> Scalar {
        x * other.x + y * other.y + z * other.z
    }
    
    /// Returns the cross product for this vector and another one.
    public func cross(_ other: SIMD3) -> SIMD3 {
        SIMD3(
            x: (y * other.z) - (z * other.y),
            y: (z * other.x) - (x * other.z),
            z: (x * other.y) - (y * other.x)
        )
    }
    
    /// Replaces this vector with the cross product for this vector and another one.
    public mutating func formCross(_ other: SIMD3) {
        self = cross(other)
    }
    
    /// Returns this vector with each scalar being the positive remainder
    /// of the scalar divided by the given value using truncating division.
    ///
    /// This method applies ``Swift/BinaryFloatingPoint/positiveTruncatingRemainder(dividingBy:)``
    /// on each scalar.
    public func positiveTruncatingRemainder(dividingBy value: Scalar) -> SIMD3 {
        SIMD3(
            x: x.positiveTruncatingRemainder(dividingBy: value),
            y: y.positiveTruncatingRemainder(dividingBy: value),
            z: z.positiveTruncatingRemainder(dividingBy: value)
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
        z.formPositiveTruncatingRemainder(dividingBy: value)
    }
    
    /// Returns the vector composed of the positive remainder of each scalar
    /// divided by the corresponding scalar of a given vector using truncating division.
    ///
    /// This method applies ``Swift/BinaryFloatingPoint/positiveTruncatingRemainder(dividingBy:)``
    /// on each scalar.
    public func positiveTruncatingRemainder(dividingBy other: SIMD3) -> SIMD3 {
        SIMD3(
            x: x.positiveTruncatingRemainder(dividingBy: other.x),
            y: y.positiveTruncatingRemainder(dividingBy: other.y),
            z: z.positiveTruncatingRemainder(dividingBy: other.z)
        )
    }
    
    /// Replaces each scalar by the positive remainder of itself divided by
    /// the corresponding scalar of a given vector using truncating division.
    ///
    /// This method applies ``Swift/BinaryFloatingPoint/formPositiveTruncatingRemainder(dividingBy:)``
    /// on each scalar.
    public mutating func formPositiveTruncatingRemainder(dividingBy other: SIMD3) {
        x.formPositiveTruncatingRemainder(dividingBy: other.x)
        y.formPositiveTruncatingRemainder(dividingBy: other.y)
        z.formPositiveTruncatingRemainder(dividingBy: other.z)
    }
    
    /// Returns the result of projecting this vector onto a given vector.
    public func projected(onto other: SIMD3) -> SIMD3 {
        return other * (self.dot(other) / other.magnitudeSquared)
    }
    
    /// Replaces this vector with the result of projecting this vector onto a given vector.
    public mutating func project(onto other: SIMD3) {
        self = projected(onto: other)
    }
    
    /// Returns the component of this vector along the given plane,
    /// specified by its normal vector.
    public func slided(along normal: SIMD3) -> SIMD3 {
        #if MATH_CHECKS
        if !normal.isNormalized {
            godotPrintError("The normal vector must be normalized, returning (0, 0, 0).")
            return SIMD3()
        }
        #endif
        return self - normal * self.dot(normal)
    }
    
    /// Returns the component of this vector along the given plane,
    /// specified by its normal vector.
    public mutating func slide(along normal: SIMD3) {
        self = slided(along: normal)
    }
    
    /// Returns this vector bounced off a plane defined by the given normal.
    public func bounced(off normal: SIMD3) -> SIMD3 {
        -reflected(from: normal)
    }
    
    /// Bounces this vector off a plane defined by the given normal.
    public mutating func bounce(off normal: SIMD3) {
        self = bounced(off: normal)
    }
    
    /// Returns the result of reflecting this vector from a plane
    /// defined by the given normal.
    public func reflected(from normal: SIMD3) -> SIMD3 {
        #if MATH_CHECKS
        if !normal.isNormalized {
            godotPrintError("The normal vector must be normalized, returning (0, 0, 0).")
            return SIMD3()
        }
        #endif
        return 2 * normal * self.dot(normal) - self
    }
    
    /// Reflects this vector from a plane defined by the given normal.
    public mutating func reflect(from normal: SIMD3) {
        self = reflected(from: normal)
    }
    
    /// A vector with each component set to `1.0` if it's positive,
    /// `-1.0` if it's negative, and `0.0` if it's zero.
    public var signUnitValue: SIMD3 {
        SIMD3(x: x.signUnitValue, y: y.signUnitValue, z: z.signUnitValue)
    }
    
    /// Returns the octahedral-encoded (oct32) form of a given 3D vector as a 2D vector.
    ///
    /// Since a `Vector2` occupies 1/3 less memory compared to `Vector3`,
    /// this form of compression can be used to pass greater amounts
    /// of normalized `Vector3`s without increasing storage or memory requirements.
    ///
    /// >note: `octahedronEncoded(_:)` can only be used for normalized vectors.
    /// `octahedronEncoded(_:)` does not check whether the given 2D vector is normalized,
    /// and will return a value that does not decompress to the original value
    /// if the vector is not normalized.
    ///
    /// >note: Octahedral compression is lossy, although visual differences
    /// are rarely perceptible in real world scenarios.
    public static func encodeOctahedron(_ simd: SIMD3) -> SIMD2<Scalar> {
        var n = simd
        n /= Swift.abs(n.x) + Swift.abs(n.y) + Swift.abs(n.z)
        var o = SIMD2<Scalar>()
        if n.z >= 0 {
            o.x = n.x
            o.y = n.y
        } else {
            o.x = (1 - Swift.abs(n.y)) * (n.x >= 0 ? 1 : -1)
            o.y = (1 - Swift.abs(n.x)) * (n.y >= 0 ? 1 : -1)
        }
        o.x = o.x * 0.5 + 0.5
        o.y = o.y * 0.5 + 0.5
        return o
    }
    
    /// Returns the 3D vector from an octahedral-compressed form.
    ///
    /// This method can be used to decode vectors created
    /// using `encodeOctahedron(_:)` (stored as a 2D vector).
    public static func decodeOctahedron(_ simd: SIMD2<Scalar>) -> SIMD3 {
        let f = SIMD2<Scalar>(simd.x * 2 - 1, simd.y * 2 - 1)
        var n = SIMD3<Scalar>(f.x, f.y, 1 - Swift.abs(f.x) - Swift.abs(f.y))
        let t = (-n.z).clamped(lowerBound: 0, upperBound: 1)
        n.x += n.x >= 0 ? -t : t
        n.y += n.y >= 0 ? -t : t
        return n.normalized()
    }
}

extension SIMD3: Comparable where Scalar : Comparable {
    /// Compares two vectors scalar by scalar.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is less than the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors, and then with the Z values.
    /// This operator is useful for sorting vectors.
    ///
    /// >note: Vectors with `nan` elements don't behave the same as other vectors.
    /// Therefore, the results from this operator may not be accurate if `nan`s are included.
    public static func < (lhs: SIMD3<Scalar>, rhs: SIMD3<Scalar>) -> Bool {
        if lhs.x == rhs.x {
            if lhs.y == rhs.y {
                return lhs.z < rhs.z
            }
            return lhs.y < rhs.y
        }
        return lhs.x < rhs.x
    }
    
    /// Compares two vectors scalar by scalar.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is less than or equal to the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors, and then with the Z values.
    /// This operator is useful for sorting vectors.
    ///
    /// >note: Vectors with `nan` elements don't behave the same as other vectors.
    /// Therefore, the results from this operator may not be accurate if `nan`s are included.
    public static func <= (lhs: SIMD3<Scalar>, rhs: SIMD3<Scalar>) -> Bool {
        if lhs.x == rhs.x {
            if lhs.y == rhs.y {
                return lhs.z <= rhs.z
            }
            return lhs.y < rhs.y
        }
        return lhs.x < rhs.x
    }
    
    /// Compares two vectors scalar by scalar.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is greater than the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors, and then with the Z values.
    /// This operator is useful for sorting vectors.
    ///
    /// >note: Vectors with `nan` elements don't behave the same as other vectors.
    /// Therefore, the results from this operator may not be accurate if `nan`s are included.
    public static func > (lhs: SIMD3<Scalar>, rhs: SIMD3<Scalar>) -> Bool {
        if lhs.x == rhs.x {
            if lhs.y == rhs.y {
                return lhs.z > rhs.z
            }
            return lhs.y > rhs.y
        }
        return lhs.x > rhs.x
    }
    
    /// Compares two vectors scalar by scalar.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is greater than or equal to the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors, and then with the Z values.
    /// This operator is useful for sorting vectors.
    ///
    /// >note: Vectors with `nan` elements don't behave the same as other vectors.
    /// Therefore, the results from this operator may not be accurate if `nan`s are included.
    public static func >= (lhs: SIMD3<Scalar>, rhs: SIMD3<Scalar>) -> Bool {
        if lhs.x == rhs.x {
            if lhs.y == rhs.y {
                return lhs.z >= rhs.z
            }
            return lhs.y > rhs.y
        }
        return lhs.x > rhs.x
    }
    
    /// The axis of the vector's highest value.
    ///
    /// If all components are equal, this method returns ``Axis3D/x``.
    public var maxAxis: Axis3D {
        x < y ? (y < z ? .z : .y) : (x < z ? .z : .x)
    }
    
    /// The axis of the vector's lowest value.
    ///
    /// If all components are equal, this method returns ``Axis3D/z``.
    public var minAxis: Axis3D {
        x < y ? (x < z ? .x : .z) : (y < z ? .y : .z)
    }
}

extension SIMD3 where Scalar : Comparable & SignedNumeric {
    /// Returns this vector with all components in absolute values (i.e. positive).
    public func abs() -> SIMD3 {
        SIMD3(x: Swift.abs(x), y: Swift.abs(y), z: Swift.abs(z))
    }
    
    /// Replaces this vector with a vector with all
    /// components in absolute values (i.e. positive).
    public mutating func formAbs() {
        self = abs()
    }
}

extension SIMD3 where Scalar == FloatingPointType {
    /// Returns the result of rotating this vector by a given angle.
    ///
    /// - Parameters:
    ///   - angle: The rotation angle, in radians.
    ///   - axis: The vector around which the rotation is done.
    ///   Must be a normalized vector.
    public func rotated(
        by angle: Scalar,
        around axis: SIMD3
    ) -> SIMD3 {
        Basis(axis: axis, angle: angle) * self
    }
    
    /// Rotates this vector by a given angle (in radians).
    public mutating func rotate(
        by angle: Scalar,
        around axis: SIMD3
    ) {
        self = rotated(by: angle, around: axis)
    }
    
    /// Returns the outer product with another vector.
    public func outer(_ other: SIMD3) -> Basis {
        Basis(
            x: Vector3(x * other.x, x * other.y, x * other.z),
            y: Vector3(y * other.x, y * other.y, y * other.z),
            z: Vector3(z * other.x, z * other.y, z * other.z)
        )
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
    public func slerp(to other: SIMD3, weight: Scalar) -> SIMD3 {
        // This method seems more complicated than it really is, since we write out
        // the internals of some methods for efficiency (mainly, checking length).
        let start_length_sq = magnitudeSquared
        let end_length_sq = other.magnitudeSquared
        if start_length_sq == 0 || end_length_sq == 0 {
            // Zero length vectors have no angle, so the best we can do is either lerp or throw an error.
            return self.lerp(to: other, weight: weight)
        }
        var axis = self.cross(other)
        let axis_length_sq = axis.magnitudeSquared
        if axis_length_sq == 0 {
            // Colinear vectors have no rotation axis or angle between them, so the best we can do is lerp.
            return self.lerp(to: other, weight: weight)
        }
        axis /= axis_length_sq.squareRoot()
        let start_length = start_length_sq.squareRoot()
        let result_length = start_length.lerp(to: end_length_sq.squareRoot(), weight: weight)
        let angle = angle(to: other)
        return rotated(by: angle * weight, around: axis) * (result_length / start_length)
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
    public mutating func formSlerp(to other: SIMD3, weight: Scalar) {
        self = slerp(to: other, weight: weight)
    }
}

extension SIMD3 where Scalar : Real & BinaryFloatingPoint {
    /// Returns the unsigned minimum angle to the given vector, in radians.
    public func angle(to other: SIMD3) -> Scalar {
        Scalar.atan2(y: self.cross(other).magnitude, x: self.dot(other))
    }
    
    /// Returns the signed angle to the given vector, in radians.
    ///
    /// The sign of the angle is positive in a counter-clockwise direction
    /// and negative in a clockwise direction when viewed from the side specified by the axis.
    public func signedAngle(to other: SIMD3, around axis: SIMD3) -> Scalar {
        let crossTo = cross(other)
        let unsignedAngle = Scalar.atan2(y: crossTo.magnitude, x: dot(other))
        let sign = other.dot(axis)
        return (sign < 0) ? -unsignedAngle : unsignedAngle
    }
}

extension SIMD3 {
    /// Accesses the vector component on the given axis.
    public subscript(axis axis: Axis3D) -> Scalar {
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


/// A 4D vector using floating point coordinates.
///
/// This type can be used to represent 4D coordinates or any other quadruplet of numeric values.
///
/// It uses floating-point coordinates.
/// See ``Vector4I`` for its integer counterpart.
///
/// >note: If double precision is needed, compile the engine and generate
/// the Godot Swift APIs with the `double` option.
///
/// ### Use as Boolean
///
/// In a boolean context, a `Vector4` evaluates to `false` if
/// it's equal to `(0, 0, 0, 0)`.
/// Otherwise, it always evaluates to `true`.
///
/// ### Type Alias
///
/// `Vector4` is a type alias to `SIMD4<FloatingPointType>`.
///
/// `SIMD4` already comes with many functions that cannot be detailed here.
/// Only added extensions are detailed in this documentation.
///
/// Check the corresponding documentation to learn more about the functions
/// the Standard Library proposes.
///
/// ## Topics
///
/// ### Geometric Properties
///
/// - ``Swift/SIMD4/isFinite``
/// - ``Swift/SIMD4/abs()``
/// - ``Swift/SIMD4/formAbs()``
/// - ``Swift/SIMD4/inverse()``
/// - ``Swift/SIMD4/formInverse()``
/// - ``Swift/SIMD4/signUnitValue-2l62b``
///
/// ### Magnitude and Distance
///
/// - ``Swift/SIMD4/magnitude-6a5o2``
/// - ``Swift/SIMD4/magnitudeSquared-6n0q8``
/// - ``Swift/SIMD4/distance(to:)``
/// - ``Swift/SIMD4/distanceSquared(to:)``
///
/// ### Products
///
/// - ``Swift/SIMD4/dot(_:)``
///
/// ### Normalization
///
/// - ``Swift/SIMD4/normalized()``
/// - ``Swift/SIMD4/normalize()``
/// - ``Swift/SIMD4/isNormalized``
///
/// ### Direction
///
/// - ``Swift/SIMD4/direction(to:)``
/// - ``Swift/SIMD4/formDirection(to:)``
///
/// ### Interpolation
///
/// - ``Swift/SIMD4/lerp(to:weight:)``
/// - ``Swift/SIMD4/formLerp(to:weight:)``
/// - ``Swift/SIMD4/cubicInterpolation(to:pre:post:weight:)``
/// - ``Swift/SIMD4/formCubicInterpolation(to:pre:post:weight:)``
/// - ``Swift/SIMD4/cubicInterpolationInTime(to:pre:post:weight:toT:preT:postT:)``
/// - ``Swift/SIMD4/formCubicInterpolationInTime(to:pre:post:weight:toT:preT:postT:)``
///
/// ### Axis
///
/// - ``Swift/SIMD4/minAxis``
/// - ``Swift/SIMD4/maxAxis``
/// - ``Swift/SIMD4/subscript(axis:)``
///
/// ### Rounding and Division
///
/// - ``Swift/SIMD4/snapped(step:)-6vdf8``
/// - ``Swift/SIMD4/snap(step:)-1sj48``
/// - ``Swift/SIMD4/positiveTruncatingRemainder(dividingBy:)-70en``
/// - ``Swift/SIMD4/formPositiveTruncatingRemainder(dividingBy:)-20cim``
/// - ``Swift/SIMD4/positiveTruncatingRemainder(dividingBy:)-3dazq``
/// - ``Swift/SIMD4/formPositiveTruncatingRemainder(dividingBy:)-92wkr``
///
/// ### Approximate Equality
///
/// - ``Swift/SIMD4/isApproximatelyZero``
/// - ``Swift/SIMD4/isApproximatelyEqual(to:)``
///
/// ### Comparison
///
/// - ``Swift/SIMD4/<(_:_:)``
/// - ``Swift/SIMD4/<=(_:_:)``
/// - ``Swift/SIMD4/>(_:_:)``
/// - ``Swift/SIMD4/>=(_:_:)``
///
/// ### Extension
///
/// - ``Swift/SIMD4``
public typealias Vector4 = SIMD4<FloatingPointType>

extension SIMD4 where Scalar : BinaryFloatingPoint {
    /// The magnitude (length) of the vector.
    public var magnitude: Scalar {
        (self * self).sum().squareRoot()
    }
    
    /// The squared magnitude of the vector.
    ///
    /// This property runs faster than ``magnitude-6a5o2``, so prefer it if you need
    /// to compare vectors or need the squared distance for some formula.
    public var magnitudeSquared: Scalar {
        (self * self).sum()
    }
    
    /// A vector with each component set to `1.0` if it's positive,
    /// `-1.0` if it's negative, and `0.0` if it's zero.
    public var signUnitValue: SIMD4 {
        SIMD4(
            x: x.signUnitValue,
            y: y.signUnitValue,
            z: z.signUnitValue,
            w: w.signUnitValue
        )
    }
    
    /// Returns the result of the linear interpolation between this vector
    /// and another one by a given amount.
    ///
    /// - Parameters:
    ///   - other: The interpolation destination.
    ///   - weight: The interpolation amount. On the range of `0` to `1`.
    public func lerp(to other: SIMD4, weight: Scalar) -> SIMD4 {
        self + weight * (other - self)
    }
    
    /// Replaces this vector with the result of the linear interpolation between this vector
    /// and another one by a given amount.
    ///
    /// - Parameters:
    ///   - other: The interpolation destination.
    ///   - weight: The interpolation amount. On the range of `0` to `1`.
    public mutating func formLerp(to other: SIMD4, weight: Scalar) {
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
        to other: SIMD4,
        pre: SIMD4,
        post: SIMD4,
        weight: Scalar
    ) -> SIMD4 {
        SIMD4(
            x: self.x.cubicInterpolation(
                to: other.x, pre: pre.x, post: post.x, weight: weight),
            y: self.y.cubicInterpolation(
                to: other.y, pre: pre.y, post: post.y, weight: weight),
            z: self.z.cubicInterpolation(
                to: other.z, pre: pre.z, post: post.z, weight: weight),
            w: self.w.cubicInterpolation(
                to: other.w, pre: pre.w, post: post.w, weight: weight)
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
        to other: SIMD4,
        pre: SIMD4,
        post: SIMD4,
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
        to other: SIMD4,
        pre: SIMD4,
        post: SIMD4,
        weight: Scalar,
        toT: Scalar,
        preT: Scalar,
        postT: Scalar
    ) -> SIMD4 {
        SIMD4(
            x: self.x.cubicInterpolationInTime(
                to: other.x, pre: pre.x, post: post.x, weight: weight, toT: toT, preT: preT, postT: postT),
            y: self.y.cubicInterpolationInTime(
                to: other.y, pre: pre.y, post: post.y, weight: weight, toT: toT, preT: preT, postT: postT),
            z: self.z.cubicInterpolationInTime(
                to: other.z, pre: pre.z, post: post.z, weight: weight, toT: toT, preT: preT, postT: postT),
            w: self.w.cubicInterpolationInTime(
                to: other.w, pre: pre.w, post: post.w, weight: weight, toT: toT, preT: preT, postT: postT)
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
        to other: SIMD4,
        pre: SIMD4,
        post: SIMD4,
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
    
    /// Returns this vector with each scalar being the positive remainder
    /// of the scalar divided by the given value using truncating division.
    ///
    /// This method applies ``Swift/BinaryFloatingPoint/positiveTruncatingRemainder(dividingBy:)``
    /// on each scalar.
    public func positiveTruncatingRemainder(dividingBy value: Scalar) -> SIMD4 {
        SIMD4(
            x: x.positiveTruncatingRemainder(dividingBy: value),
            y: y.positiveTruncatingRemainder(dividingBy: value),
            z: z.positiveTruncatingRemainder(dividingBy: value),
            w: w.positiveTruncatingRemainder(dividingBy: value)
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
        w.formPositiveTruncatingRemainder(dividingBy: value)
    }
    
    /// Returns the vector composed of the positive remainder of each scalar
    /// divided by the corresponding scalar of a given vector using truncating division.
    ///
    /// This method applies ``Swift/BinaryFloatingPoint/positiveTruncatingRemainder(dividingBy:)``
    /// on each scalar.
    public func positiveTruncatingRemainder(dividingBy other: SIMD4) -> SIMD4 {
        SIMD4(
            x: x.positiveTruncatingRemainder(dividingBy: other.x),
            y: y.positiveTruncatingRemainder(dividingBy: other.y),
            z: z.positiveTruncatingRemainder(dividingBy: other.z),
            w: w.positiveTruncatingRemainder(dividingBy: other.w)
        )
    }
    
    /// Replaces each scalar by the positive remainder of itself divided by
    /// the corresponding scalar of a given vector using truncating division.
    ///
    /// This method applies ``Swift/BinaryFloatingPoint/formPositiveTruncatingRemainder(dividingBy:)``
    /// on each scalar.
    public mutating func formPositiveTruncatingRemainder(dividingBy other: SIMD4) {
        x.formPositiveTruncatingRemainder(dividingBy: other.x)
        y.formPositiveTruncatingRemainder(dividingBy: other.y)
        z.formPositiveTruncatingRemainder(dividingBy: other.z)
        w.formPositiveTruncatingRemainder(dividingBy: other.w)
    }
    
    /// Returns a new vector with each component snapped to
    /// the nearest multiple of the corresponding component in a given vector.
    ///
    /// This can also be used to round the components
    /// to an arbitrary number of decimals.
    public func snapped(step: SIMD4) -> SIMD4 {
        SIMD4(
            x: x.snapped(step: step.x),
            y: y.snapped(step: step.y),
            z: z.snapped(step: step.z),
            w: w.snapped(step: step.w)
        )
    }
    
    /// Replaces this vector with a vector with each component snapped to
    /// the nearest multiple of the corresponding component in a given vector.
    ///
    /// This can also be used to round the components
    /// to an arbitrary number of decimals.
    public mutating func snap(step: SIMD4) {
        self = snapped(step: step)
    }
    
    /// Returns the result of scaling this vector to unit length.
    ///
    /// Equivalent to `v / v.magnitude`.
    ///
    /// >important: This function may return incorrect values
    /// if the vector magnitude is near zero.
    public func normalized() -> SIMD4 {
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
    
    /// Returns the normalized vector pointing from this vector to another one.
    ///
    /// This is equivalent to using `(b - a).normalized`.
    public func direction(to other: SIMD4) -> SIMD4 {
        (other - self).normalized()
    }
    
    /// Replaces this vector with the normalized vector pointing from this vector to another one.
    ///
    /// This is equivalent to using `(b - a).normalized`.
    public mutating func formDirection(to other: SIMD4) {
        self = direction(to: other)
    }
    
    /// Returns the distance between this vector and another one.
    public func distance(to other: SIMD4) -> Scalar {
        ((other - self) * (other - self)).sum().squareRoot()
    }
    
    /// Returns the squared distance between this vector and another one.
    ///
    /// This method runs faster than ``distance(to:)``, so prefer it if you
    /// need to compare vectors or need the squared distance for some formula.
    public func distanceSquared(to other: SIMD4) -> Scalar {
        ((other - self) * (other - self)).sum()
    }
    
    /// Returns the dot product of this vector and another one.
    public func dot(_ other: SIMD4) -> Scalar {
        x * other.x + y * other.y + z * other.z + w * other.w
    }
    
    /// Returns the inverse of this vector.
    ///
    /// This is the same as `Vector4(x: 1.0 / v.x, y: 1.0 / v.y, z: 1.0 / v.z, w: 1.0 / v.w)`.
    public func inverse() -> SIMD4 {
        SIMD4(1 / x, 1 / y, 1 / z, 1 / w)
    }
    
    /// Replaces this vector with its inverse.
    ///
    /// This is the same as `Vector4(x: 1.0 / v.x, y: 1.0 / v.y, z: 1.0 / v.z, w: 1.0 / v.w)`.
    public mutating func formInverse() {
        self = inverse()
    }
    
    /// Returns `true` if this vector is approximately equal to another one.
    public func isApproximatelyEqual(to other: SIMD4) -> Bool {
        x.isApproximatelyEqual(to: other.x) &&
        y.isApproximatelyEqual(to: other.y) &&
        z.isApproximatelyEqual(to: other.z) &&
        w.isApproximatelyEqual(to: other.w)
    }
    
    /// A Boolean value indicating whether the vector's values are approximately zero.
    ///
    /// This method is faster than using ``isApproximatelyEqual(to:)``
    /// with value zero.
    public var isApproximatelyZero: Bool {
        x.isApproximatelyZero &&
        y.isApproximatelyZero &&
        z.isApproximatelyZero &&
        w.isApproximatelyZero
    }
    
    /// A Boolean value indicating whether the vector is finite.
    public var isFinite: Bool {
        x.isFinite &&
        y.isFinite &&
        z.isFinite &&
        w.isFinite
    }
}

extension SIMD4: Comparable where Scalar : Comparable {
    /// Compares two vectors scalar by scalar.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is less than the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors, Z values of the two vectors and then with the Z values.
    /// This operator is useful for sorting vectors.
    ///
    /// >note: Vectors with `nan` elements don't behave the same as other vectors.
    /// Therefore, the results from this operator may not be accurate if `nan`s are included.
    public static func < (lhs: SIMD4<Scalar>, rhs: SIMD4<Scalar>) -> Bool {
        if lhs.x == rhs.x {
            if lhs.y == rhs.y {
                if lhs.z == rhs.z {
                    return lhs.w < rhs.w
                }
                return lhs.z < rhs.z
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
    /// values of the two vectors, Z values of the two vectors and then with the Z values.
    /// This operator is useful for sorting vectors.
    ///
    /// >note: Vectors with `nan` elements don't behave the same as other vectors.
    /// Therefore, the results from this operator may not be accurate if `nan`s are included.
    public static func > (lhs: SIMD4<Scalar>, rhs: SIMD4<Scalar>) -> Bool {
        if lhs.x == rhs.x {
            if lhs.y == rhs.y {
                if lhs.z == rhs.z {
                    return lhs.w > rhs.w
                }
                return lhs.z > rhs.z
            }
            return lhs.y > rhs.y
        }
        return lhs.x > rhs.x
    }
    
    /// Compares two vectors scalar by scalar.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is less than or equal to the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors, Z values of the two vectors and then with the Z values.
    /// This operator is useful for sorting vectors.
    ///
    /// >note: Vectors with `nan` elements don't behave the same as other vectors.
    /// Therefore, the results from this operator may not be accurate if `nan`s are included.
    public static func <= (lhs: SIMD4<Scalar>, rhs: SIMD4<Scalar>) -> Bool {
        if lhs.x == rhs.x {
            if lhs.y == rhs.y {
                if lhs.z == rhs.z {
                    return lhs.w <= rhs.w
                }
                return lhs.z < rhs.z
            }
            return lhs.y < rhs.y
        }
        return lhs.x < rhs.x
    }
    
    /// Compares two vectors scalar by scalar.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is greater than or equal to the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors, Z values of the two vectors and then with the Z values.
    /// This operator is useful for sorting vectors.
    ///
    /// >note: Vectors with `nan` elements don't behave the same as other vectors.
    /// Therefore, the results from this operator may not be accurate if `nan`s are included.
    public static func >= (lhs: SIMD4<Scalar>, rhs: SIMD4<Scalar>) -> Bool {
        if lhs.x == rhs.x {
            if lhs.y == rhs.y {
                if lhs.z == rhs.z {
                    return lhs.w >= rhs.w
                }
                return lhs.z > rhs.z
            }
            return lhs.y > rhs.y
        }
        return lhs.x > rhs.x
    }
    
    /// The axis of the vector's highest value.
    ///
    /// If all components are equal, this method returns ``Axis4D/x``.
    public var maxAxis: Axis4D {
        var maxIndex = 0
        var maxValue = x
        var index = 1
        while index < 4 {
            if self[index] > maxValue {
                maxIndex = index
                maxValue = self[index]
            }
            index += 1
        }
        return Axis4D(rawValue: maxIndex).unsafelyUnwrapped
    }
    
    /// The axis of the vector's lowest value.
    ///
    /// If all components are equal, this method returns ``Axis4D/w``.
    public var minAxis: Axis4D {
        var minIndex = 0
        var minValue = x
        var index = 1
        while index < 4 {
            if self[index] <= minValue {
                minIndex = index
                minValue = self[index]
            }
            index += 1
        }
        return Axis4D(rawValue: minIndex).unsafelyUnwrapped
    }
}

extension SIMD4 where Scalar : Comparable & SignedNumeric {
    /// Returns this vector with all components in absolute values (i.e. positive).
    public func abs() -> SIMD4 {
        SIMD4(
            x: Swift.abs(x),
            y: Swift.abs(y),
            z: Swift.abs(z),
            w: Swift.abs(w)
        )
    }
    
    /// Replaces this vector with a vector with all
    /// components in absolute values (i.e. positive).
    public mutating func formAbs() {
        self = abs()
    }
}

extension SIMD4 {
    /// Accesses the vector component on the given axis.
    public subscript(axis axis: Axis4D) -> Scalar {
        get {
            switch axis {
            case .x: x
            case .y: y
            case .z: z
            case .w: w
            }
        }
        set(newValue) {
            switch axis {
            case .x: x = newValue
            case .y: y = newValue
            case .z: z = newValue
            case .w: w = newValue
            }
        }
    }
}

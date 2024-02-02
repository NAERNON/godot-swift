import Numerics

extension BinaryFloatingPoint where Self : Real {
    /// Returns an "eased" value based on an easing function defined with a curve.
    ///
    /// This easing function is based on an exponent.
    /// The curve can be any floating-point number, with specific values leading to the following behaviors:
    ///
    /// - `curve < -1.0`: ease in-out
    /// - `curve == -1.0`: linear
    /// - `-1.0 < curve < 0.0`: ease out-in
    /// - `curve == 0.0`: constant
    /// - `0.0 < curve < 1.0`: ease out
    /// - `curve == 1.0`: linear
    /// - `curve > 1.0`: ease in
    public func eased(curve: Self) -> Self {
        var x = self
        if x < 0 {
            x = 0
        } else if x > 1.0 {
            x = 1.0
        }
        if curve > 0 {
            if curve < 1.0 {
                return 1.0 - Self.pow(1.0 - x, 1.0 / curve)
            } else {
                return Self.pow(x, curve)
            }
        } else if curve < 0 {
            //inout ease

            if x < 0.5 {
                return Self.pow(x * 2.0, -curve) * 0.5
            } else {
                return (1.0 - Self.pow(1.0 - (x - 0.5) * 2.0, -curve)) * 0.5 + 0.5
            }
        } else {
            return 0 // no ease (raw)
        }
    }

    /// Replaces this value with an "eased" value based on an easing function defined with a curve.
    ///
    /// This easing function is based on an exponent.
    /// The curve can be any floating-point number, with specific values leading to the following behaviors:
    ///
    /// - `curve < -1.0`: ease in-out
    /// - `curve == -1.0`: linear
    /// - `-1.0 < curve < 0.0`: ease out-in
    /// - `curve == 0.0`: constant
    /// - `0.0 < curve < 1.0`: ease out
    /// - `curve == 1.0`: linear
    /// - `curve > 1.0`: ease in
    public mutating func ease(curve: Self) {
        self = eased(curve: curve)
    }
}

extension BinaryFloatingPoint {
    /// Returns the positive remainder of this value divided by the given value using
    /// truncating division.
    ///
    /// Performing truncating division with floating-point values results in a
    /// truncated integer quotient and a remainder. For values `x` and `y` and
    /// their truncated integer quotient `q`, the remainder `r` satisfies
    /// `x == y * q + r`, where `r >= 0`.
    ///
    /// The following example calculates the truncating remainder of dividing
    /// 8.625 by 0.75:
    ///
    ///     let x = 8.625
    ///     print(x / 0.75)
    ///     // Prints "11.5"
    ///
    ///     let q = (x / 0.75).rounded(.towardZero)
    ///     // q == 11.0
    ///     let r = x.positiveTruncatingRemainder(dividingBy: 0.75)
    ///     // r == 0.375
    ///
    ///     let x1 = 0.75 * q + r
    ///     // x1 == 8.625
    ///
    /// If this value and `other` are both finite numbers, the truncating
    /// remainder is positive and is strictly smaller in
    /// magnitude than `other`.
    ///
    /// - Parameter other: The value to use when dividing this value.
    /// - Returns: The remainder of this value divided by `other` using
    ///   truncating division.
    public func positiveTruncatingRemainder(dividingBy other: Self) -> Self {
        var value = self.truncatingRemainder(dividingBy: other)
        if (value < 0 && other > 0) || (value > 0 && other < 0) {
            value += other
        }
        value += 0.0
        return value
    }
    
    /// Replaces this value with the positive remainder of itself divided by the given
    /// value using truncating division.
    ///
    /// Performing truncating division with floating-point values results in a
    /// truncated integer quotient and a remainder. For values `x` and `y` and
    /// their truncated integer quotient `q`, the remainder `r` satisfies
    /// `x == y * q + r`.
    ///
    /// The following example calculates the truncating remainder of dividing
    /// 8.625 by 0.75:
    ///
    ///     var x = 8.625
    ///     print(x / 0.75)
    ///     // Prints "11.5"
    ///
    ///     let q = (x / 0.75).rounded(.towardZero)
    ///     // q == 11.0
    ///     x.formPositiveTruncatingRemainder(dividingBy: 0.75)
    ///     // x == 0.375
    ///
    ///     let x1 = 0.75 * q + x
    ///     // x1 == 8.625
    ///
    /// If this value and `other` are both finite numbers, the truncating
    /// remainder is positive and is strictly smaller in
    /// magnitude than `other`.
    ///
    /// - Parameter other: The value to use when dividing this value.
    public mutating func formPositiveTruncatingRemainder(dividingBy other: Self) {
        self = positiveTruncatingRemainder(dividingBy: other)
    }
    
    /// Linearly interpolates between this value and another one.
    ///
    /// To perform interpolation, `weight` should be between `0.0` and `1.0` (inclusive).
    /// However, values outside this range are allowed and can be used to perform extrapolation.
    /// If this is not desired, use ``clamped(lowerBound:upperBound:)`` on the result of this function.
    ///
    /// ```swift
    /// print(0.0.lerp(to: 4, weight: 0.75))
    /// // Prints "3.0"
    /// ```
    ///
    /// See also ``inverseLerp(to:weight:)`` which performs the reverse of this operation.
    /// To perform eased interpolation with `lerp`,
    /// combine it with ``eased(curve:)`` or ``smoothstep(to:weight:)``.
    /// See also ``remapped(iStart:iStop:oStart:oStop:)`` to map a continuous series of values to another.
    public func lerp(to other: Self, weight: Self) -> Self {
        self + weight * (other - self)
    }
    
    /// Replaces this value with a linear interpolation between this value and another one.
    ///
    /// This functions applies the ``lerp(to:weight:)`` function to this value.
    public mutating func formLerp(to other: Self, weight: Self) {
        self = lerp(to: other, weight: weight)
    }
    
    /// Linearly interpolates between this angle and another one.
    ///
    /// Similar to ``lerp(to:weight:)``, but interpolates correctly when the angles wrap around `.tau`.
    /// To perform eased interpolation with `lerpAngle`, combine it
    /// with ``eased(curve:)`` or ``smoothstep(to:weight:)``.
    ///
    /// This function lerps through the shortest path between the two angles.
    /// However, when these two angles are approximately `.pi+k*(.tau)` apart for any integer *k*,
    /// it's not obvious which way they lerp due to floating-point precision errors. For example:
    /// - `0.0.lerpAngle(to: .pi, weight: w)` lerps counter-clockwise
    /// - `0.0.lerpAngle(to: .pi + 5 * .tau, weight: w)` lerps clockwise
    ///
    /// - Parameters:
    ///   - to: The end interpolation angle, in radians.
    ///   - weight: The interpolation weight, between `0.0` and `1.0`.
    public func lerpAngle(to other: Self, weight: Self) -> Self {
        let difference = (other - self).truncatingRemainder(dividingBy: .tau)
        let distance = (2.0 * difference).truncatingRemainder(dividingBy: .tau) - difference
        return self + distance * weight
    }
    
    /// Replaces this value with a linear interpolation between this angle and another one.
    ///
    /// This functions applies the ``lerpAngle(to:weight:)`` function to this value.
    public mutating func formLerpAngle(to other: Self, weight: Self) {
        self = lerpAngle(to: other, weight: weight)
    }
    
    /// Returns an interpolation or extrapolation factor.
    ///
    /// The returned value will be between `0.0` and `1.0` if `weight` is between
    /// this value and `other` (inclusive).
    /// If `weight` is located outside this range, then an extrapolation factor will be returned
    /// (return value lower than `0.0` or greater than `1.0`).
    /// Use ``clamped(lowerBound:upperBound:)`` on the result of `inverseLerp` if this is not desired.
    ///
    /// ```swift
    /// // The interpolation ratio in the `lerp()` call below is 0.75.
    /// let middle = 20.0.lerp(to: 30, weight: 0.75)
    /// // middle is now 27.5.
    ///
    /// // Now, we pretend to have forgotten the original ratio and want to get it back.
    /// let ratio = 20.0.inverseLerp(to: 30, weight: 27.5)
    /// // ratio is now 0.75.
    /// ```
    ///
    /// See also ``lerp(to:weight:)``, which performs the reverse of this operation,
    /// and ``remapped(iStart:iStop:oStart:oStop:)`` to map a continuous series of values to another.
    public func inverseLerp(to other: Self, weight: Self) -> Self {
        (weight - self) / (other - self)
    }
    
    /// Returns the cubic interpolation between two values
    /// with a given weight and `pre` and `post` values.
    public func cubicInterpolation(
        to other: Self,
        pre: Self,
        post: Self,
        weight: Self
    ) -> Self {
        let weight2 = weight * weight
        let weight3 = weight2 * weight
        let a: Self = 2.0 * pre - 5.0 * self + 4.0 * other - post
        let b: Self = -pre + 3.0 * self - 3.0 * other + post
        let c: Self = (-pre + other) * weight + a * weight2 + b * weight3
        return 0.5 * ((self * 2.0) + c)
    }
    
    /// Replaces this value with the cubic interpolation between two values
    /// with a given weight and `pre` and `post` values.
    public mutating func formCubicInterpolation(
        to other: Self,
        pre: Self,
        post: Self,
        weight: Self
    ) {
        self = cubicInterpolation(to: other, pre: pre, post: post, weight: weight)
    }
    
    /// Returns the cubic interpolation between two rotation values with shortest
    /// path with a given weight and `pre` and `post` values.
    ///
    /// See also ``lerpAngle(to:weight:)``.
    public func cubicInterpolationAngle(
        to other: Self,
        pre: Self,
        post: Self,
        weight: Self
    ) -> Self {
        let tau = Self.tau
        let fromRot = self.truncatingRemainder(dividingBy: tau)

        let preDiff = (pre - fromRot).truncatingRemainder(dividingBy: tau)
        let preRot = fromRot + (2.0 * preDiff).truncatingRemainder(dividingBy: tau) - preDiff

        let toDiff = (other - fromRot).truncatingRemainder(dividingBy: tau)
        let toRot = fromRot + (2.0 * toDiff).truncatingRemainder(dividingBy: tau) - toDiff

        let postDiff = (self - toRot).truncatingRemainder(dividingBy: tau)
        let postRot = toRot + (2.0 * postDiff).truncatingRemainder(dividingBy: tau) - postDiff

        return fromRot.cubicInterpolation(
            to: toRot,
            pre: preRot,
            post: postRot,
            weight: weight
        )
    }
    
    /// Replaces this value with the cubic interpolation between two rotation values with shortest
    /// path with a given weight and `pre` and `post` values.
    ///
    /// See also ``formLerpAngle(to:weight:)``.
    public mutating func formCubicInterpolationAngle(
        to other: Self,
        pre: Self,
        post: Self,
        weight: Self
    ) {
        self = cubicInterpolationAngle(to: other, pre: pre, post: post, weight: weight)
    }
    
    /// Returns the cubic interpolation between two values
    /// with a given weight and `pre` and `post` values.
    ///
    /// It can perform smoother interpolation than
    /// ``cubicInterpolation(to:pre:post:weight:)`` by the time values.
    public func cubicInterpolationInTime(
        to other: Self,
        pre: Self,
        post: Self,
        weight: Self,
        toT: Self,
        preT: Self,
        postT: Self
    ) -> Self {
        /* Barry-Goldman method */
        let t = Self.zero.lerp(to: toT, weight: weight)
        let a1 = pre.lerp(
            to: self,
            weight: preT == 0 ? 0.0 : (t - preT) / -preT
        )
        let a2 = self.lerp(
            to: other,
            weight: toT == 0 ? 0.5 : t / toT
        )
        let a3 = other.lerp(
            to: post,
            weight: postT - toT == 0 ? 1.0 : (t - toT) / (postT - toT)
        )
        let b1 = a1.lerp(
            to: a2,
            weight: toT - preT == 0 ? 0.0 : (t - preT) / (toT - preT)
        )
        let b2 = a2.lerp(
            to: a3,
            weight: postT == 0 ? 1.0 : t / postT
        )
        return b1.lerp(
            to: b2,
            weight: toT == 0 ? 0.5 : t / toT
        )
    }
    
    /// Returns the cubic interpolation between two values
    /// with a given weight and `pre` and `post` values.
    ///
    /// It can perform smoother interpolation than
    /// ``cubicInterpolation(to:pre:post:weight:)`` by the time values.
    public mutating func formCubicInterpolationInTime(
        to other: Self,
        pre: Self,
        post: Self,
        weight: Self,
        toT: Self,
        preT: Self,
        postT: Self
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
    
    /// Returns the cubic interpolation between two rotation values with shortest path
    /// with a given weight and `pre` and `post` values.
    ///
    /// See also ``lerpAngle(to:weight:)``.
    ///
    /// It can perform smoother interpolation than
    /// ``cubicInterpolationAngle(to:pre:post:weight:)`` by the time values.
    public func cubicInterpolationAngleInTime(
        to other: Self,
        pre: Self,
        post: Self,
        weight: Self,
        toT: Self,
        preT: Self,
        postT: Self
    ) -> Self {
        let tau = Self.pi * 2
        let fromRot = self.truncatingRemainder(dividingBy: tau)

        let preDiff = (pre - fromRot).truncatingRemainder(dividingBy: tau)
        let preRot = fromRot + (2.0 * preDiff).truncatingRemainder(dividingBy: tau) - preDiff

        let toDiff = (other - fromRot).truncatingRemainder(dividingBy: tau)
        let toRot = fromRot + (2.0 * toDiff).truncatingRemainder(dividingBy: tau) - toDiff

        let postDiff = (post - toRot).truncatingRemainder(dividingBy: tau)
        let postRot = toRot + (2.0 * postDiff).truncatingRemainder(dividingBy: tau) - postDiff

        return fromRot.cubicInterpolationInTime(
            to: toRot,
            pre: preRot,
            post: postRot,
            weight: weight,
            toT: toT,
            preT: preT,
            postT: postT
        )
    }
    
    /// Replaces this value with the cubic interpolation between two rotation values with shortest path
    /// with a given weight and `pre` and `post` values.
    ///
    /// See also ``formLerpAngle(to:weight:)``.
    ///
    /// It can perform smoother interpolation than
    /// ``formCubicInterpolationAngle(to:pre:post:weight:)`` by the time values.
    public mutating func formCubicInterpolationAngleInTime(
        to other: Self,
        pre: Self,
        post: Self,
        weight: Self,
        toT: Self,
        preT: Self,
        postT: Self
    ) {
        self = cubicInterpolationAngleInTime(
            to: other,
            pre: pre,
            post: post,
            weight: weight,
            toT: toT,
            preT: preT,
            postT: postT
        )
    }
    
    /// Returns the point at the given `t` on a one-dimensional
    /// [Bézier curve][wiki] defined by the given control points.
    ///
    /// [wiki]: https://en.wikipedia.org/wiki/Bézier_curve
    public func bezierInterpolation(
        to other: Self,
        control1: Self,
        control2: Self,
        t: Self
    ) -> Self {
        /* Formula from Wikipedia article on Bezier curves. */
        let omt: Self = 1.0 - t
        let omt2 = omt * omt
        let omt3 = omt2 * omt
        let t2 = t * t
        let t3 = t2 * t
        
        let a = self * omt3 + control1 * omt2 * t * 3.0
        let b = control2 * omt * t2 * 3.0

        return a + b + other * t3
    }
    
    /// Returns the point at the given `t` on a one-dimensional
    /// [Bézier curve][wiki] defined by the given control points.
    ///
    /// [wiki]: https://en.wikipedia.org/wiki/Bézier_curve
    public mutating func formBezierInterpolation(
        to other: Self,
        control1: Self,
        control2: Self,
        t: Self
    ) {
        self = bezierInterpolation(
            to: other,
            control1: control1,
            control2: control2,
            t: t
        )
    }
    
    /// Returns the derivative at the given `t` on a one-dimensional
    /// [Bézier curve][wiki] defined by the given control points.
    ///
    /// [wiki]: https://en.wikipedia.org/wiki/Bézier_curve
    public func bezierDerivative(
        to other: Self,
        control1: Self,
        control2: Self,
        t: Self
    ) -> Self {
        /* Formula from Wikipedia article on Bezier curves. */
        let omt = 1.0 - t
        let omt2 = omt * omt
        let t2 = t * t
        let p1 = (control1 - self) * 3 * omt2
        let p2 = 6.0 * omt * t
        let p3 = (other - control2) * 3.0 * t2
        
        return p1 + (control2 - control1) * p2 + p3
    }
    
    /// Replaces this value with the derivative at the given `t` on a one-dimensional
    /// [Bézier curve][wiki] defined by the given control points.
    ///
    /// [wiki]: https://en.wikipedia.org/wiki/Bézier_curve
    public mutating func formBezierDerivative(
        to other: Self,
        control1: Self,
        control2: Self,
        t: Self
    ) {
        self = bezierDerivative(
            to: other,
            control1: control1,
            control2: control2,
            t: t
        )
    }
    
    /// Returns a wrapped floating-point value between two given values.
    ///
    /// Can be used for creating loop-alike behavior or infinite surfaces.
    ///
    /// ```swift
    /// // Infinite loop between 5.0 and 9.9
    /// value = (value + 0.1).wrapped(lowerBound: 5.0, upperBound: 10.0)
    ///
    /// // Infinite rotation (in radians)
    /// angle = (angle + 0.1).wrapped(lowerBound: 0.0, upperBound: .tau)
    ///
    /// // Infinite rotation (in radians)
    /// angle = (angle + 0.1).wrapped(lowerBound: -.pi, upperBound: .pi)
    /// ```
    public func wrapped(lowerBound: Self, upperBound: Self) -> Self {
        let range = upperBound - lowerBound
        return range.isApproximatelyZero ?
        lowerBound : self - (range * ((self - lowerBound) / range).rounded(.down))
    }
    
    /// Wraps the floating-point value between two given values.
    ///
    /// Can be used for creating loop-alike behavior or infinite surfaces.
    ///
    /// ```swift
    /// // Infinite loop between 5.0 and 9.9
    /// value += 0.1
    /// value.wrap(lowerBound: 5.0, upperBound: 10.0)
    ///
    /// // Infinite rotation (in radians)
    /// angle += 0.1
    /// angle.wrap(lowerBound: 0.0, upperBound: .tau)
    ///
    /// // Infinite rotation (in radians)
    /// angle += 0.1
    /// angle.wrap(lowerBound: -.pi, upperBound: .pi)
    /// ```
    public mutating func wrap(lowerBound: Self, upperBound: Self) {
        self = wrapped(lowerBound: lowerBound, upperBound: upperBound)
    }
    
    /// Returns the floating-point value not less than `min` and not more than `max`.
    ///
    /// ```swift
    /// var speed = 42.1
    /// print(speed.clamped(lowerBound: 1.0, upperBound: 20.5))
    /// // Prints "20.5"
    ///
    /// speed = -10.0
    /// print(speed.clamped(lowerBound: -1.0, upperBound: 1.0))
    /// // Prints "-1.0"
    /// ```
    public func clamped(lowerBound: Self, upperBound: Self) -> Self {
        if self < lowerBound {
            return lowerBound
        }
        if self > upperBound {
            return upperBound
        }
        return self
    }
    
    /// Replaces this floating-point value with a value not less than `min` and not more than `max`.
    ///
    /// ```swift
    /// var speed = 42.1
    /// speed.clamp(lowerBound: 1.0, upperBound: 20.5)
    /// // speed is 20.5
    ///
    /// speed = -10.0
    /// speed.clamp(lowerBound: -1.0, upperBound: 1.0)
    /// // speed is -1.0
    /// ```
    public mutating func clamp(lowerBound: Self, upperBound: Self) {
        self = clamped(lowerBound: lowerBound, upperBound: upperBound)
    }
    
    private var fract: Self {
        self - self.rounded(.down)
    }
    
    /// Returns a wrapped value between `0` and a given length.
    ///
    /// If the limit is reached, the next value the function returns is decreased
    /// to the `0` side or increased to the `length` side (like a triangle wave).
    /// If` length` is less than zero, it becomes positive.
    ///
    /// ```swift
    /// (-3.0).pingpong(length: 3.0) // Returns 3.0
    /// (-2.0).pingpong(length: 3.0) // Returns 2.0
    /// (-1.0).pingpong(length: 3.0) // Returns 1.0
    /// (0.0).pingpong(length: 3.0)  // Returns 0.0
    /// (1.0).pingpong(length: 3.0)  // Returns 1.0
    /// (2.0).pingpong(length: 3.0)  // Returns 2.0
    /// (3.0).pingpong(length: 3.0)  // Returns 3.0
    /// (4.0).pingpong(length: 3.0)  // Returns 2.0
    /// (5.0).pingpong(length: 3.0)  // Returns 1.0
    /// (6.0).pingpong(length: 3.0)  // Returns 0.0
    /// ```
    public func pingpong(length: Self) -> Self {
        length != 0 ? abs(((self - length) / (length * 2)).fract * length * 2 - length) : 0
    }
    
    /// Replaces this value with a wrapped value between `0` and a given length.
    ///
    /// This function applies the ``pingpong(length:)`` function to this value.
    public mutating func formPingpong(length: Self) {
        self = pingpong(length: length)
    }
    
    /// Maps a value from range `[iStart, iStop]` to `[oStart, oStop]`.
    ///
    /// See also ``lerp(to:weight:)`` and ``inverseLerp(to:weight:)``.
    ///
    /// If value is outside `[iStart, iStop]`, then the resulting value will also be outside `[ostart, ostop]`.
    /// If this is not desired, use ``clamped(lowerBound:upperBound:)`` on the result of this function.
    ///
    /// ```swift
    /// 75.0.remapped(iStart: 0, iStop: 100, oStart: -1, oStop: 1) // Returns 0.5
    /// ```
    ///
    /// For complex use cases where multiple ranges are needed,
    /// consider using ``Curve`` or ``Gradient`` instead.
    public func remapped(iStart: Self, iStop: Self, oStart: Self, oStop: Self) -> Self {
        oStart.lerp(to: oStop, weight: iStart.inverseLerp(to: iStop, weight: self))
    }
    
    /// Replaces this value with a value from range `[iStart, iStop]` to `[oStart, oStop]`.
    ///
    /// See also ``lerp(to:weight:)`` and ``inverseLerp(to:weight:)``.
    ///
    /// If value is outside `[iStart, iStop]`, then the resulting value will also be outside `[ostart, ostop]`.
    /// If this is not desired, use ``clamped(lowerBound:upperBound:)`` on the result of this function.
    ///
    /// ```swift
    /// var value = 75.0
    /// value.remap(iStart: 0, iStop: 100, oStart: -1, oStop: 1)
    /// // value is 0.5
    /// ```
    ///
    /// For complex use cases where multiple ranges are needed,
    /// consider using ``Curve`` or ``Gradient`` instead.
    public mutating func remap(iStart: Self, iStop: Self, oStart: Self, oStop: Self) {
        self = remapped(iStart: iStart, iStop: iStop, oStart: oStart, oStop: oStop)
    }
    
    /// Returns the multiple of `step` that is the closest to the value.
    ///
    /// This can also be used to round a floating point number to an arbitrary number of decimals.
    ///
    /// ```swift
    /// 32.0.snapped(step: 2.5)  // Returns 32.5
    /// 3.14159.snapped(step: 0.01)  // Returns 3.14
    /// ```
    public func snapped(step: Self) -> Self {
        if step != 0 {
            return (self / step + 0.5).rounded(.down) * step
        }
        return self
    }
    
    /// Replaces this value with the multiple of `step` that is the closest to the value.
    ///
    /// This can also be used to round a floating point number to an arbitrary number of decimals.
    ///
    /// ```swift
    /// var x = 32.0
    /// x.snap(step: 2.5)
    /// // x == 32.5
    /// var y = 3.14159
    /// y.snap(step: 0.01)
    /// // y == 3.14
    /// ```
    public mutating func snap(step: Self) {
        self = snapped(step: step)
    }
    
    /// Returns the result of smoothly interpolating the value between `0` and `1`,
    /// based on where `weight` lies with respect to the edges.
    ///
    /// The return value is `0` if `weight <= value`,
    /// and `1` if `weight >= to`.
    /// If `weight` lies between the value and `to`,
    /// the returned value follows an S-shaped curve that maps `weight` between `0` and `1`.
    ///
    /// This S-shaped curve is the cubic Hermite interpolator, given by
    /// `f(y) = 3*y^2 - 2*y^3` where `y = (weight-value) / (to-value)`.
    ///
    /// ```swift
    /// 0.0.smoothstep(to: 2, weight: -5.0) // Returns 0.0
    /// 0.0.smoothstep(to: 2, weight: 0.5) // Returns 0.15625
    /// 0.0.smoothstep(to: 2, weight: 1.0) // Returns 0.5
    /// 0.0.smoothstep(to: 2, weight: 2.0) // Returns 1.0
    /// ```
    ///
    /// Compared to ``eased(curve:)`` with a curve value of `-1.6521`,
    /// `smoothstep` returns the smoothest possible curve with no sudden changes in the derivative.
    /// If you need to perform more advanced transitions, use ``Tween`` or ``AnimationPlayer``.
    ///
    /// [Comparison between `smoothstep()` and `ease(x, -1.6521)` return values][image]
    ///
    /// [image]: https://raw.githubusercontent.com/godotengine/godot-docs/master/img/smoothstep_ease_comparison.png
    public func smoothstep(to other: Self, weight: Self) -> Self {
        if self.isApproximatelyEqual(to: other) {
            return self
        }
        let x = ((weight - self) / (other - self)).clamped(lowerBound: 0, upperBound: 1)
        return x * x * (3 - 2 * x)
    }
    
    /// Replaces this value with the result of smoothly interpolating the value between `0` and `1`,
    /// based on where `weight` lies with respect to the edges.
    ///
    /// This functions applies the ``smoothstep(to:weight:)`` function to this value.
    public mutating func formSmoothstep(to other: Self, weight: Self) {
        self = smoothstep(to: other, weight: weight)
    }
    
    /// Returns `-1.0` if the value is negative,
    /// `1.0` if the value is positive, and `0.0` if the value is zero.
    ///
    /// This property returns `0.0` for `.nan` values.
    public var signUnitValue: Self {
        if self == .zero {
            return .zero
        }
        if !self.isFinite || self.isNaN {
            return .zero
        }
        return self < 0 ? -1 : 1
    }
    
    /// Returns the value moved toward a given value by a given delta amount.
    ///
    /// The returned value will not go past `other`.
    ///
    /// Use a negative delta value to move away.
    ///
    /// ```swift
    /// 5.0.moved(toward: 10, delta: 4)    // Returns 9
    /// 10.0.moved(toward: 5, delta: 4)    // Returns 6
    /// 5.0.moved(toward: 10, delta: 9)    // Returns 10
    /// 10.0.moved(toward: 5, delta: -1.5) // Returns 11.5
    /// ```
    public func moved(
        toward other: Self,
        delta: Self
    ) -> Self {
        let vector = other - self
        var sign: Self = 1
        if vector == .zero {
            sign = 0
        } else if vector < .zero {
            sign = -1
        }
        
        return abs(other - self) <= delta ? other : self + sign * delta
    }
    
    /// Moves this value toward a given value by a given delta amount.
    ///
    /// The new value will not go past `other`.
    ///
    /// Use a negative delta value to move away.
    ///
    /// ```swift
    /// var value = 5.0
    /// value.move(toward: 10, delta: 4)
    /// // value is 9
    ///
    /// value = 10.0
    /// value.move(toward: 5, delta: 4)
    /// // value is 6
    ///
    /// value = 5.0
    /// value.move(toward: 10, delta: 9)
    /// // value is 10
    ///
    /// value = 10.0
    /// value.move(toward: 5, delta: -1.5)
    /// // value is 11.5
    /// ```
    public mutating func move(
        toward other: Self,
        delta: Self
    ) {
        self = moved(toward: other, delta: delta)
    }
}

extension BinaryInteger {
    /// Returns `-1` if the value is negative,
    /// `1` if the value is positive, and `0` if the value is zero.
    public var signUnitValue: Self {
        self == 0 ? 0 : (self < 0 ? -1 : 1)
    }
    
    /// Returns a wrapped integer value between two given values.
    ///
    /// Can be used for creating loop-alike behavior or infinite surfaces.
    ///
    /// ```swift
    /// // Infinite loop between 5 and 9
    /// frame = (frame + 1).wrapped(lowerBound: 5, 1upperBound: 0)
    ///
    /// // result is -2
    /// let result = (-6).wrapped(lowerBound: -5, upperBound: -1)
    /// ```
    public func wrapped(lowerBound: Self, upperBound: Self) -> Self {
        let range = upperBound - lowerBound
        return range == 0 ?
        lowerBound : lowerBound + ((((self - lowerBound) % range) + range) % range)
    }
    /// Wraps the integer value between two given values.
    ///
    /// Can be used for creating loop-alike behavior or infinite surfaces.
    ///
    /// ```swift
    /// // Infinite loop between 5 and 9
    /// frame += 1
    /// frame.wrap(lowerBound: 5, upperBound: 10)
    /// ```
    public mutating func wrap(lowerBound: Self, upperBound: Self) {
        self = wrapped(lowerBound: lowerBound, upperBound: upperBound)
    }
    
    /// Returns the integer value not less than `min` and not more than `max`.
    ///
    /// ```swift
    /// var speed = 42
    /// print(speed.clamped(lowerBound: 1, upperBound: 0))
    /// // Prints "20"
    ///
    /// speed = -10
    /// print(speed.clamped(lowerBound: -1, upperBound: 1))
    /// // Prints "-1"
    /// ```
    public func clamped(lowerBound: Self, upperBound: Self) -> Self {
        if self < lowerBound {
            return lowerBound
        }
        if self > upperBound {
            return upperBound
        }
        return self
    }
    
    /// Replaces this integer value with a value not less than `min` and not more than `max`.
    ///
    /// ```swift
    /// var speed = 42
    /// speed.clamp(lowerBound: 1, upperBound: 20)
    /// // speed is 20
    ///
    /// speed = -10
    /// speed.clamp(lowerBound: -1, upperBound: 1)
    /// // speed is -1
    /// ```
    public mutating func clamp(lowerBound: Self, upperBound: Self) {
        self = clamped(lowerBound: lowerBound, upperBound: upperBound)
    }
    
    /// Returns the multiple of `step` that is the closest to the value.
    ///
    /// ```swift
    /// 53.snapped(step: 16)  // Returns 48
    /// 4096.snapped(step: 100)  // Returns 4100
    /// ```
    public func snapped(step: Self) -> Self {
        if step != 0 {
            return Self(Double(self) / Double(step) + 0.5) * step
        }
        return self
    }
    
    /// Replaces this value with the multiple of `step` that is the closest to the value.
    ///
    /// ```swift
    /// var x = 53
    /// x.snap(step: 16)
    /// // x == 48
    /// var y = 4096
    /// y.snap(step: 100)
    /// // y == 4100
    /// ```
    public mutating func snap(step: Self) {
        self = snapped(step: step)
    }
    
    /// Returns the positive remainder of this value divided by the given value.
    ///
    /// The result has the same sign as `other` and has a magnitude less than `other.magnitude`.
    ///
    /// ```swift
    /// let x = (22).positiveRemainder(dividingBy: 5)
    /// // x == 2
    /// let y = (-22).positiveRemainder(dividingBy: 5)
    /// // y == 3
    /// ```
    ///
    /// For any two integers `a` and `b`, their quotient `q`, and their remainder `r`, `a == b * q + r`.
    public func positiveRemainder(dividingBy other: Self) -> Self {
        var value = self % other
        if (value < 0 && other > 0) || (value > 0 && other < 0) {
            value += other
        }
        return value
    }
    
    /// Replaces this value with the positive remainder of this value divided by the given value.
    ///
    /// The result has the same sign as `other` and has a magnitude less than `other.magnitude`.
    ///
    /// ```swift
    /// var x = 22
    /// x.formPositiveRemainder(dividingBy: 5)
    /// // x == 2
    ///
    /// var y = -22
    /// y.formPositiveRemainder(dividingBy: 5)
    /// // y == 3
    /// ```
    ///
    /// For any two integers `a` and `b`, their quotient `q`, and their remainder `r`, `a == b * q + r`.
    public mutating func formPositiveRemainder(dividingBy other: Self) {
        self = positiveRemainder(dividingBy: other)
    }
}

/// Returns the [natural logarithm][wiki] of a given value.
///
/// The base is [*e*][wiki_e], with *e* being approximately `2.71828`.
/// This is the amount of time needed to reach a certain level of continuous growth.
///
/// This is not the same as the "log" function on most calculators,
/// which uses a base `10` logarithm. To use base `10` logarithm, use `log(x)/log(10)`.
///
/// >note: The logarithm of `0` returns `-.inf`, while negative values return `-.nan`.
///
/// [wiki]: https://en.wikipedia.org/wiki/Natural_logarithm
/// [wiki_e]: https://en.wikipedia.org/wiki/E_(mathematical_constant)
public func log<T: Real>(_ x: T) -> T {
    T.log(x)
}

/// The natural exponential function.
///
/// It raises the mathematical constant *e* to the power of `x` and returns it.
///
/// *e* has an approximate value of `2.71828`, and can be obtained with `exp(1)`.
///
/// For exponents to other bases use the method `pow`.
///
public func exp<T: Real>(_ x: T) -> T {
    T.exp(x)
}

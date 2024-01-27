
/// Returns the sine of a given angle in radians.
@_documentation(visibility: internal)
public func sin(_ x: Double) -> Double {
    _sin(angleRad: x)
}
/// Returns the sine of a given angle in radians.
///
/// >note: This function is designed to work with `Double`.
/// Using this function with another floating-point type
/// might lose precision.
public func sin<T: BinaryFloatingPoint>(_ x: T) -> T {
    T(_sin(angleRad: Double(x)))
}

/// Returns the cosine of a given angle in radians.
@_documentation(visibility: internal)
public func cos(_ x: Double) -> Double {
    _cos(angleRad: x)
}
/// Returns the cosine of a given angle in radians.
///
/// >note: This function is designed to work with `Double`.
/// Using this function with another floating-point type
/// might lose precision.
public func cos<T: BinaryFloatingPoint>(_ x: T) -> T {
    T(_cos(angleRad: Double(x)))
}

/// Returns the tangent of a given angle in radians.
@_documentation(visibility: internal)
public func tan(_ x: Double) -> Double {
    _tan(angleRad: x)
}
/// Returns the tangent of a given angle in radians.
///
/// >note: This function is designed to work with `Double`.
/// Using this function with another floating-point type
/// might lose precision.
public func tan<T: BinaryFloatingPoint>(_ x: T) -> T {
    T(_tan(angleRad: Double(x)))
}

/// Returns the hyperbolic sine of given value.
@_documentation(visibility: internal)
public func sinh(_ x: Double) -> Double {
    _sinh(x)
}
/// Returns the hyperbolic sine of given value.
///
/// >note: This function is designed to work with `Double`.
/// Using this function with another floating-point type
/// might lose precision.
public func sinh<T: BinaryFloatingPoint>(_ x: T) -> T {
    T(_sinh(Double(x)))
}

/// Returns the hyperbolic cosine of a given value in radians.
@_documentation(visibility: internal)
public func cosh(_ x: Double) -> Double {
    _cosh(x)
}
/// Returns the hyperbolic cosine of a given value in radians.
///
/// >note: This function is designed to work with `Double`.
/// Using this function with another floating-point type
/// might lose precision.
public func cosh<T: BinaryFloatingPoint>(_ x: T) -> T {
    T(_cosh(Double(x)))
}

/// Returns the hyperbolic tangent of a given value.
@_documentation(visibility: internal)
public func tanh(_ x: Double) -> Double {
    _tanh(x)
}
/// Returns the hyperbolic tangent of a given value.
///
/// >note: This function is designed to work with `Double`.
/// Using this function with another floating-point type
/// might lose precision.
public func tanh<T: BinaryFloatingPoint>(_ x: T) -> T {
    T(_tanh(Double(x)))
}

/// Returns the arc sine of a given value in radians.
///
/// Use to get the angle of sine `x`.
/// `x` will be clamped between `-1.0` and `1.0` (inclusive),
/// in order to prevent `asin` from returning `.nan`.
@_documentation(visibility: internal)
public func asin(_ x: Double) -> Double {
    _asin(x)
}
/// Returns the arc sine of a given value in radians.
///
/// Use to get the angle of sine `x`.
/// `x` will be clamped between `-1.0` and `1.0` (inclusive),
/// in order to prevent `asin` from returning `.nan`.
///
/// >note: This function is designed to work with `Double`.
/// Using this function with another floating-point type
/// might lose precision.
public func asin<T: BinaryFloatingPoint>(_ x: T) -> T {
    T(_asin(Double(x)))
}

/// Returns the arc cosine of a given value in radians.
///
/// Use to get the angle of cosine `x`.
/// `x` will be clamped between `-1.0` and `1.0` (inclusive),
/// in order to prevent `acos` from returning `.nan`.
@_documentation(visibility: internal)
public func acos(_ x: Double) -> Double {
    _acos(x)
}
/// Returns the arc cosine of a given value in radians.
///
/// Use to get the angle of cosine `x`.
/// `x` will be clamped between `-1.0` and `1.0` (inclusive),
/// in order to prevent `acos` from returning `.nan`.
///
/// >note: This function is designed to work with `Double`.
/// Using this function with another floating-point type
/// might lose precision.
public func acos<T: BinaryFloatingPoint>(_ x: T) -> T {
    T(_acos(Double(x)))
}

/// Returns the arc tangent of a given value in radians.
///
/// Use it to get the angle from an angle's tangent in trigonometry.
///
/// The method cannot know in which quadrant the angle should fall.
/// See ``atan2(y:x:)`` if you have both `y` and `x`.
///
/// If `x` is between `-pi/2` and `pi/2` (inclusive), `atan(tan(x))` is equal to `x`.
@_documentation(visibility: internal)
public func atan(_ x: Double) -> Double {
    _atan(x)
}
/// Returns the arc tangent of a given value in radians.
///
/// Use it to get the angle from an angle's tangent in trigonometry.
///
/// The method cannot know in which quadrant the angle should fall.
/// See ``atan2(y:x:)`` if you have both `y` and `x`.
///
/// If `x` is between `-.pi/2` and `.pi/2` (inclusive), `atan(tan(x))` is equal to `x`.
///
/// >note: This function is designed to work with `Double`.
/// Using this function with another floating-point type
/// might lose precision.
public func atan<T: BinaryFloatingPoint>(_ x: T) -> T {
    T(_atan(Double(x)))
}

/// Returns the arc tangent of `y/x` in radians.
///
/// Use to get the angle of tangent `y/x`. To compute the value,
/// the method takes into account the sign of both arguments in order to determine the quadrant.
///
/// >important: The Y coordinate comes first, by convention.
@_documentation(visibility: internal)
public func atan2(y: Double, x: Double) -> Double {
    _atan2(y: y, x: x)
}
/// Returns the arc tangent of `y/x` in radians.
///
/// Use to get the angle of tangent `y/x`. To compute the value,
/// the method takes into account the sign of both arguments in order to determine the quadrant.
///
/// >important: The Y coordinate comes first, by convention.
///
/// >note: This function is designed to work with `Double`.
/// Using this function with another floating-point type
/// might lose precision.
public func atan2<T: BinaryFloatingPoint>(y: T, x: T) -> T {
    T(_atan2(y: Double(y), x: Double(x)))
}

/// Returns the hyperbolic arc (also called inverse) sine of a given value.
///
/// Use it to get the angle from an angle's sine in hyperbolic space.
///
/// - Returns: The hyperbolic arc sine in radians.
@_documentation(visibility: internal)
public func asinh(_ x: Double) -> Double {
    _asinh(x)
}
/// Returns the hyperbolic arc (also called inverse) sine of a given value.
///
/// Use it to get the angle from an angle's sine in hyperbolic space.
///
/// >note: This function is designed to work with `Double`.
/// Using this function with another floating-point type
/// might lose precision.
///
/// - Returns: The hyperbolic arc sine in radians.
public func asinh<T: BinaryFloatingPoint>(_ x: T) -> T {
    T(_asinh(Double(x)))
}

/// Returns the hyperbolic arc (also called inverse) cosine of a given value.
///
/// Use it to get the angle from an angle's cosine in hyperbolic space if `x` is larger or equal to `1`.
/// For values of `x` lower than `1`, it will return `0`,
/// in order to prevent `acosh` from returning `.nan`.
///
/// - Returns: The hyperbolic arc cosine in radians.
@_documentation(visibility: internal)
public func acosh(_ x: Double) -> Double {
    _acosh(x)
}
/// Returns the hyperbolic arc (also called inverse) cosine of a given value.
///
/// Use it to get the angle from an angle's cosine in hyperbolic space if `x` is larger or equal to `1`.
/// For values of `x` lower than `1`, it will return `0`,
/// in order to prevent `acosh` from returning `.nan`.
///
/// >note: This function is designed to work with `Double`.
/// Using this function with another floating-point type
/// might lose precision.
///
/// - Returns: The hyperbolic arc cosine in radians.
public func acosh<T: BinaryFloatingPoint>(_ x: T) -> T {
    T(_acosh(Double(x)))
}

/// Returns the hyperbolic arc (also called inverse) tangent of a given value.
///
/// Use it to get the angle from an angle's tangent in hyperbolic
/// space if `x` is between `-1` and `1` (non-inclusive).
///
/// In mathematics, the inverse hyperbolic tangent is only defined for
/// `-1 < x < 1` in the real set, so values equal or lower to `-1` for `x`
/// return negative `.infinity` and values equal or higher than `1`
/// return positive `.infinity` in order to prevent `atanh` from returning `.nan`.
///
/// - Returns: The hyperbolic arc tangent in radians.
@_documentation(visibility: internal)
public func atanh(_ x: Double) -> Double {
    _atanh(x)
}
/// Returns the hyperbolic arc (also called inverse) tangent of a given value.
///
/// Use it to get the angle from an angle's tangent in hyperbolic
/// space if `x` is between `-1` and `1` (non-inclusive).
///
/// In mathematics, the inverse hyperbolic tangent is only defined for
/// `-1 < x < 1` in the real set, so values equal or lower to `-1` for `x`
/// return negative `.infinity` and values equal or higher than `1`
/// return positive `.infinity` in order to prevent `atanh` from returning `.nan`.
///
/// >note: This function is designed to work with `Double`.
/// Using this function with another floating-point type
/// might lose precision.
///
/// - Returns: The hyperbolic arc tangent in radians.
public func atanh<T: BinaryFloatingPoint>(_ x: T) -> T {
    T(_atanh(Double(x)))
}

extension Double {
    /// Returns the difference between the two angles, in the range of `[-.pi, +.pi]`.
    ///
    /// When the two angles are opposite,
    /// returns `-.pi` if `from` is smaller than `to`, or `.pi` otherwise.
    @_documentation(visibility: internal)
    public func angleDifference(to value: Double) -> Double {
        _angleDifference(from: self, to: value)
    }
}

extension BinaryFloatingPoint {
    /// Returns the difference between the two angles, in the range of `[-.pi, +.pi]`.
    ///
    /// When the two angles are opposite,
    /// returns `-.pi` if `from` is smaller than `to`, or `.pi` otherwise.
    ///
    /// >note: This function is designed to work with `Double`.
    /// Using this function with another floating-point type
    /// might lose precision.
    public func angleDifference(to value: Self) -> Self {
        Self(_angleDifference(from: Double(self), to: Double(value)))
    }
}

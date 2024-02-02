// TODO: Remove trigonometry functions once SE-0246 is implemented (https://github.com/apple/swift-evolution/blob/main/proposals/0246-mathable.md)
import Numerics

/// Returns the sine of a given angle in radians.
public func sin<T: Real>(_ x: T) -> T {
    T.sin(x)
}

/// Returns the cosine of a given angle in radians.
public func cos<T: Real>(_ x: T) -> T {
    T.cos(x)
}

/// Returns the tangent of a given angle in radians.
public func tan<T: Real>(_ x: T) -> T {
    T.tan(x)
}

/// Returns the hyperbolic sine of given value.
public func sinh<T: Real>(_ x: T) -> T {
    T.sinh(x)
}

/// Returns the hyperbolic cosine of a given value in radians.
public func cosh<T: Real>(_ x: T) -> T {
    T.cosh(x)
}

/// Returns the hyperbolic tangent of a given value.
public func tanh<T: Real>(_ x: T) -> T {
    T.tanh(x)
}

/// Returns the arc sine of a given value in radians.
///
/// Use to get the angle of sine `x`.
/// `x` will be clamped between `-1.0` and `1.0` (inclusive),
/// in order to prevent `asin` from returning `.nan`.
public func asin<T: Real>(_ x: T) -> T {
    T.asin(x)
}

/// Returns the arc cosine of a given value in radians.
///
/// Use to get the angle of cosine `x`.
/// `x` will be clamped between `-1.0` and `1.0` (inclusive),
/// in order to prevent `acos` from returning `.nan`.
public func acos<T: Real>(_ x: T) -> T {
    T.acos(x)
}

/// Returns the arc tangent of a given value in radians.
///
/// Use it to get the angle from an angle's tangent in trigonometry.
///
/// The method cannot know in which quadrant the angle should fall.
/// See ``atan2(y:x:)`` if you have both `y` and `x`.
///
/// If `x` is between `-.pi/2` and `.pi/2` (inclusive), `atan(tan(x))` is equal to `x`.
public func atan<T: Real>(_ x: T) -> T {
    T.atan(x)
}

/// Returns the arc tangent of `y/x` in radians.
///
/// Use to get the angle of tangent `y/x`. To compute the value,
/// the method takes into account the sign of both arguments in order to determine the quadrant.
///
/// >important: The Y coordinate comes first, by convention.
public func atan2<T: Real>(y: T, x: T) -> T {
    T.atan2(y: y, x: x)
}

/// Returns the hyperbolic arc (also called inverse) sine of a given value.
///
/// Use it to get the angle from an angle's sine in hyperbolic space.
///
/// - Returns: The hyperbolic arc sine in radians.
public func asinh<T: Real>(_ x: T) -> T {
    T.asinh(x)
}

/// Returns the hyperbolic arc (also called inverse) cosine of a given value.
///
/// Use it to get the angle from an angle's cosine in hyperbolic space if `x` is larger or equal to `1`.
/// For values of `x` lower than `1`, it will return `0`,
/// in order to prevent `acosh` from returning `.nan`.
///
/// - Returns: The hyperbolic arc cosine in radians.
public func acosh<T: Real>(_ x: T) -> T {
    T.acosh(x)
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
public func atanh<T: Real>(_ x: T) -> T {
    T.atanh(x)
}

extension BinaryFloatingPoint {
    /// The mathematical constant `2 * pi` (π), approximately equal to 6.28319.
    ///
    /// When measuring an angle in radians, π is equivalent to a full-turn.
    public static var tau: Self {
        .pi * 2
    }
    
    /// Returns the difference between the two angles, in the range of `[-.pi, +.pi]`.
    ///
    /// When the two angles are opposite,
    /// returns `-.pi` if `from` is smaller than `to`, or `.pi` otherwise.
    public func angleDifference(to value: Self) -> Self {
        let difference = (value - self).truncatingRemainder(dividingBy: .tau)
        return (2.0 * difference).truncatingRemainder(dividingBy: .tau) - difference
    }
}

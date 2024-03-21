
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
/// ## Topics
///
/// ### Creating 4D Vector
///
/// - ``Vector4/init(x:y:z:w:)``
/// - ``Vector4/init(_:_:_:_:)``
/// - ``Vector4/init(_:)``
/// - ``Vector4/init(repeating:)``
///
/// ### Special Values
///
/// - ``Vector4/zero``
/// - ``Vector4/init()``
/// - ``Vector4/one``
///
/// ### Geometric Properties
///
/// - ``Vector4/x``
/// - ``Vector4/y``
/// - ``Vector4/z``
/// - ``Vector4/w``
/// - ``Vector4/subscript(_:)``
/// - ``Vector4/isFinite``
/// - ``Vector4/abs()``
/// - ``Vector4/formAbs()``
/// - ``Vector4/squareRoot()``
/// - ``Vector4/formSquareRoot()``
/// - ``Vector4/clamped(lowerBound:upperBound:)``
/// - ``Vector4/clamp(lowerBound:upperBound:)``
/// - ``Vector4/inverse()``
/// - ``Vector4/invert()``
/// - ``Vector4/sum()``
/// - ``Vector4/signUnitValue``
///
/// ### Magnitude and Distance
///
/// - ``Vector4/magnitude``
/// - ``Vector4/magnitudeSquared``
/// - ``Vector4/distance(to:)``
/// - ``Vector4/distanceSquared(to:)``
///
/// ### Products
///
/// - ``Vector4/dot(_:)``
///
/// ### Normalization
///
/// - ``Vector4/normalized()``
/// - ``Vector4/normalize()``
/// - ``Vector4/isNormalized``
///
/// ### Direction
///
/// - ``Vector4/direction(to:)``
/// - ``Vector4/formDirection(to:)``
///
/// ### Interpolation
///
/// - ``Vector4/lerp(to:weight:)``
/// - ``Vector4/formLerp(to:weight:)``
/// - ``Vector4/cubicInterpolation(to:pre:post:weight:)``
/// - ``Vector4/formCubicInterpolation(to:pre:post:weight:)``
/// - ``Vector4/cubicInterpolationInTime(to:pre:post:weight:toT:preT:postT:)``
/// - ``Vector4/formCubicInterpolationInTime(to:pre:post:weight:toT:preT:postT:)``
///
/// ### Axis
///
/// - ``Vector4/minAxis``
/// - ``Vector4/maxAxis``
/// - ``Vector4/subscript(axis:)``
///
/// ### Rounding and Division
///
/// - ``Vector4/snapped(step:)``
/// - ``Vector4/snap(step:)``
/// - ``Vector4/rounded(_:)``
/// - ``Vector4/round(_:)``
/// - ``Vector4/positiveTruncatingRemainder(dividingBy:)-5sz1s``
/// - ``Vector4/formPositiveTruncatingRemainder(dividingBy:)-1vvht``
/// - ``Vector4/positiveTruncatingRemainder(dividingBy:)-6yc6q``
/// - ``Vector4/formPositiveTruncatingRemainder(dividingBy:)-bv7k``
///
/// ### Approximate Equality
///
/// - ``Vector4/isApproximatelyZero``
/// - ``Vector4/isApproximatelyEqual(to:)``
///
/// ### Comparison
///
/// - ``Vector4/<(_:_:)``
/// - ``Vector4/<=(_:_:)``
/// - ``Vector4/>(_:_:)``
/// - ``Vector4/>=(_:_:)``
public struct Vector4: Hashable, Equatable {
    /// The first element of the vector.
    public var x: Scalar
    /// The second element of the vector.
    public var y: Scalar
    /// The third element of the vector.
    public var z: Scalar
    /// The forth element of the vector.
    public var w: Scalar
    
    // MARK: - Initializers
    
    /// Creates a new vector from the given elements.
    public init(
        x: Scalar,
        y: Scalar,
        z: Scalar,
        w: Scalar
    ) {
        self.x = x
        self.y = y
        self.z = z
        self.w = w
    }
    
    /// Creates a new vector from the given elements.
    public init(
        _ x: Scalar,
        _ y: Scalar,
        _ z: Scalar,
        _ w: Scalar
    ) {
        self.x = x
        self.y = y
        self.z = z
        self.w = w
    }
    
    /// Creates a new vector with all elements set to `0`.
    public init() {
        self = .zero
    }
    
    /// Creates a new vector from a given integer vector.
    public init(_ other: Vector4I) {
        self.x = Scalar(other.x)
        self.y = Scalar(other.y)
        self.z = Scalar(other.z)
        self.w = Scalar(other.w)
    }
    
    /// Creates a new vector with all elements set to the specified value.
    public init(repeating value: Scalar) {
        self.x = value
        self.y = value
        self.z = value
        self.w = value
    }
}

// MARK: - Special Values

extension Vector4 {
    /// A vector with all elements set to `0`.
    public static var zero: Vector4 {
        Vector4(0, 0, 0, 0)
    }
    
    /// A vector with all elements set to `1`.
    public static var one: Vector4 {
        Vector4(1, 1, 1, 1)
    }
}

// MARK: Subscripts

extension Vector4 {
    /// Accesses the vector component at the given index.
    public subscript(index: Int) -> Scalar {
        get {
            switch index {
            case 0: x
            case 1: y
            case 2: z
            case 3: w
            default: fatalError("Attempting to read component \(index) from 4D vector.")
            }
        }
        set(newValue) {
            switch index {
            case 0: x = newValue
            case 1: y = newValue
            case 2: z = newValue
            case 3: w = newValue
            default: fatalError("Attempting to set component \(index) on 4D vector.")
            }
        }
    }
    
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

// MARK: - Functions and variables

extension Vector4 {
    /// The magnitude (length) of the vector.
    public var magnitude: Scalar {
        (self * self).sum().squareRoot()
    }
    
    /// The squared magnitude of the vector.
    ///
    /// This property runs faster than ``magnitude``, so prefer it if you need
    /// to compare vectors or need the squared distance for some formula.
    public var magnitudeSquared: Scalar {
        (self * self).sum()
    }
    
    /// A vector with each component set to `1.0` if it's positive,
    /// `-1.0` if it's negative, and `0.0` if it's zero.
    public var signUnitValue: Vector4 {
        Vector4(
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
    public func lerp(to other: Vector4, weight: Scalar) -> Vector4 {
        self + weight * (other - self)
    }
    
    /// Replaces this vector with the result of the linear interpolation between this vector
    /// and another one by a given amount.
    ///
    /// - Parameters:
    ///   - other: The interpolation destination.
    ///   - weight: The interpolation amount. On the range of `0` to `1`.
    public mutating func formLerp(to other: Vector4, weight: Scalar) {
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
        to other: Vector4,
        pre: Vector4,
        post: Vector4,
        weight: Scalar
    ) -> Vector4 {
        Vector4(
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
        to other: Vector4,
        pre: Vector4,
        post: Vector4,
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
        to other: Vector4,
        pre: Vector4,
        post: Vector4,
        weight: Scalar,
        toT: Scalar,
        preT: Scalar,
        postT: Scalar
    ) -> Vector4 {
        Vector4(
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
        to other: Vector4,
        pre: Vector4,
        post: Vector4,
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
    public func positiveTruncatingRemainder(dividingBy value: Scalar) -> Vector4 {
        Vector4(
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
    public func positiveTruncatingRemainder(dividingBy other: Vector4) -> Vector4 {
        Vector4(
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
    public mutating func formPositiveTruncatingRemainder(dividingBy other: Vector4) {
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
    public func snapped(step: Vector4) -> Vector4 {
        Vector4(
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
    public mutating func snap(step: Vector4) {
        self = snapped(step: step)
    }
    
    /// Returns the result of scaling this vector to unit length.
    ///
    /// Equivalent to `v / v.magnitude`.
    ///
    /// >important: This function may return incorrect values
    /// if the vector magnitude is near zero.
    public func normalized() -> Vector4 {
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
    public func direction(to other: Vector4) -> Vector4 {
        (other - self).normalized()
    }
    
    /// Replaces this vector with the normalized vector pointing from this vector to another one.
    ///
    /// This is equivalent to using `(b - a).normalized`.
    public mutating func formDirection(to other: Vector4) {
        self = direction(to: other)
    }
    
    /// Returns the distance between this vector and another one.
    public func distance(to other: Vector4) -> Scalar {
        ((other - self) * (other - self)).sum().squareRoot()
    }
    
    /// Returns the squared distance between this vector and another one.
    ///
    /// This method runs faster than ``distance(to:)``, so prefer it if you
    /// need to compare vectors or need the squared distance for some formula.
    public func distanceSquared(to other: Vector4) -> Scalar {
        ((other - self) * (other - self)).sum()
    }
    
    /// Returns the dot product of this vector and another one.
    public func dot(_ other: Vector4) -> Scalar {
        x * other.x + y * other.y + z * other.z + w * other.w
    }
    
    /// Returns the inverse of this vector.
    ///
    /// This is the same as `Vector4(x: 1.0 / v.x, y: 1.0 / v.y, z: 1.0 / v.z, w: 1.0 / v.w)`.
    public func inverse() -> Vector4 {
        Vector4(1 / x, 1 / y, 1 / z, 1 / w)
    }
    
    /// Replaces this vector with its inverse.
    ///
    /// This is the same as `Vector4(x: 1.0 / v.x, y: 1.0 / v.y, z: 1.0 / v.z, w: 1.0 / v.w)`.
    public mutating func invert() {
        self = inverse()
    }
    
    /// Returns `true` if this vector is approximately equal to another one.
    public func isApproximatelyEqual(to other: Vector4) -> Bool {
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
    
    /// Returns this vector with all components in absolute values (i.e. positive).
    public func abs() -> Vector4 {
        Vector4(
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
    
    /// Returns a new vector with all components clamped between the components
    /// of the two given bounds.
    public func clamped(lowerBound: Vector4, upperBound: Vector4) -> Vector4 {
        Vector4(
            x.clamped(lowerBound: lowerBound.x, upperBound: upperBound.x),
            y.clamped(lowerBound: lowerBound.y, upperBound: upperBound.y),
            z.clamped(lowerBound: lowerBound.z, upperBound: upperBound.z),
            w.clamped(lowerBound: lowerBound.w, upperBound: upperBound.w)
        )
    }
    
    /// Clamps all components between the components
    /// of the two given bounds.
    public mutating func clamp(lowerBound: Vector4, upperBound: Vector4) {
        self = clamped(lowerBound: lowerBound, upperBound: upperBound)
    }
    
    /// Returns a new vector with all components as their square root,
    /// rounded to a representable value.
    public func squareRoot() -> Vector4 {
        Vector4(
            x.squareRoot(),
            y.squareRoot(),
            z.squareRoot(),
            w.squareRoot()
        )
    }
    
    /// Updates this vector with all components as their square root,
    /// rounded to a representable value.
    public mutating func formSquareRoot() {
        self = self.squareRoot()
    }
    
    /// Returns a new vector with all components rounded to
    /// an integral value using the specified rounding rule.
    public func rounded(_ rule: FloatingPointRoundingRule) -> Vector4 {
        Vector4(
            x.rounded(rule),
            y.rounded(rule),
            z.rounded(rule),
            w.rounded(rule)
        )
    }
    
    /// Rounds all components to
    /// an integral value using the specified rounding rule.
    public mutating func round(_ rule: FloatingPointRoundingRule) {
        self = self.rounded(rule)
    }
    
    /// Returns the sum of the scalars in the vector.
    public func sum() -> Scalar {
        x + y + z + w
    }
}

// MARK: - Operators

extension Vector4 {
    /// The multiplication of all components of a vector and a floating-point value.
    public static func * (lhs: Vector4, rhs: Scalar) -> Vector4 {
        Vector4(lhs.x * rhs, lhs.y * rhs, lhs.z * rhs, lhs.w * rhs)
    }
    
    /// The multiplication of all components of a vector and a floating-point value.
    public static func * (lhs: Scalar, rhs: Vector4) -> Vector4 {
        rhs * lhs
    }
    
    /// Updates the vector with the multiplication of
    /// all components of a vector and a floating-point value.
    public static func *= (lhs: inout Vector4, rhs: Scalar) {
        lhs = lhs * rhs
    }
    
    /// The division of all components of a vector and a floating-point value.
    public static func / (lhs: Vector4, rhs: Scalar) -> Vector4 {
        Vector4(lhs.x / rhs, lhs.y / rhs, lhs.z / rhs, lhs.w / rhs)
    }
    
    /// Updates the vector with the division of
    /// all components of a vector and a floating-point value.
    public static func /= (lhs: inout Vector4, rhs: Scalar) {
        lhs = lhs / rhs
    }
    
    /// The opposite of a vector.
    ///
    /// This is the same as multiplying by `-1`.
    public static prefix func - (lhs: Vector4) -> Vector4 {
        var copy = lhs
        copy.x = -copy.x
        copy.y = -copy.y
        copy.z = -copy.z
        copy.w = -copy.w
        return copy
    }
    
    /// The multiplication of two vectors, component by component.
    public static func * (lhs: Vector4, rhs: Vector4) -> Vector4 {
        Vector4(lhs.x * rhs.x, lhs.y * rhs.y, lhs.z * rhs.z, lhs.w * rhs.w)
    }
    
    /// Updates the vector with the multiplication of two vectors,
    /// component by component.
    public static func *= (lhs: inout Vector4, rhs: Vector4) {
        lhs = lhs * rhs
    }
    
    /// The division of two vectors, component by component.
    public static func / (lhs: Vector4, rhs: Vector4) -> Vector4 {
        Vector4(lhs.x / rhs.x, lhs.y / rhs.y, lhs.z / rhs.z, lhs.w / rhs.w)
    }
    
    /// Updates the vector with the division of two vectors,
    /// component by component.
    public static func /= (lhs: inout Vector4, rhs: Vector4) {
        lhs = lhs / rhs
    }
}

// MARK: - AdditiveArithmetic

extension Vector4: AdditiveArithmetic {
    public static func + (lhs: Vector4, rhs: Vector4) -> Vector4 {
        Vector4(lhs.x + rhs.x, lhs.y + rhs.y, lhs.z + rhs.z, lhs.w + rhs.w)
    }
    
    public static func - (lhs: Vector4, rhs: Vector4) -> Vector4 {
        Vector4(lhs.x - rhs.x, lhs.y - rhs.y, lhs.z - rhs.z, lhs.w - rhs.w)
    }
}

// MARK: - Comparable

extension Vector4: Comparable {
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
    public static func < (lhs: Vector4, rhs: Vector4) -> Bool {
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
    public static func > (lhs: Vector4, rhs: Vector4) -> Bool {
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
    public static func <= (lhs: Vector4, rhs: Vector4) -> Bool {
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
    public static func >= (lhs: Vector4, rhs: Vector4) -> Bool {
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

// MARK: - CustomStringConvertible

extension Vector4: CustomStringConvertible, CustomDebugStringConvertible {
    public var description: String {
        "(x: \(x), y: \(y), z: \(z), w: \(w))"
    }
    
    public var debugDescription: String {
        "Vector4(x: \(x), y: \(y), z: \(z), w: \(w))"
    }
}

// MARK: - ExpressibleByArrayLiteral

extension Vector4: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Scalar...) {
        precondition(
            elements.count == 4,
            "Attempting to create a 4D vector from \(elements.count) elements."
        )
        
        self.x = elements[0]
        self.y = elements[1]
        self.z = elements[2]
        self.w = elements[3]
    }
}

// MARK: - Codable

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
        x = try container.decode(Scalar.self)
        y = try container.decode(Scalar.self)
        z = try container.decode(Scalar.self)
        w = try container.decode(Scalar.self)
    }
}

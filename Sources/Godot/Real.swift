import Foundation

/// A floating-point value type.
/// It can either be a single-precision or double-precision value type.
///
/// The precision is determined by the build configuration.
///
/// Instead of using typealias to deal with floating-point values in Godot,
/// they are type erased to ensure that even when the build configuration changes,
/// the correct type is used.
///
/// To illustrate this, here is an example.
/// A `Vector2` type is made of two `Real` values. To initialize it, you give the two values to the initializer.
/// ```
/// let x: Real = 12.0
/// let y: Real = 24.0
/// let vector = Vector2(x: x, y: y)
/// ```
/// If `Real` was a typealias, with the build configuration "`double`" the following code would be valid:
/// ```
/// let x: Double = 12.0
/// let y: Double = 24.0
/// let vector = Vector2(x: x, y: y)
/// ```
/// But if the build configuration would be set to "`float`", then this code would not compile anymore
/// since the `Vector2` type is wating for `Float` values.
public struct Real {
    /// The raw value of the real. Its type is undefined since it is dependent on the Godot build configuration.
    /// It can either be a `Float` value or a `Double` value depending on the build configuration.
    /// Use this value with care.
    public var undefinedRawValue: RealRawValue
    
    @inlinable public init() {
        undefinedRawValue = RealRawValue()
    }
    
    /// Creates a new instance from the given value, rounded to the closest
    /// possible representation.
    ///
    /// - Parameter value: A `Real` value to be converted.
    @inlinable public init(_ value: Real) {
        undefinedRawValue = value.undefinedRawValue
    }
}

extension Real: Equatable {
    /// Returns a Boolean value indicating whether two values are equal.
    ///
    /// Equality is the inverse of inequality. For any values `a` and `b`,
    /// `a == b` implies that `a != b` is `false`.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    @inlinable public static func == (lhs: Real, rhs: Real) -> Bool {
        lhs.undefinedRawValue == rhs.undefinedRawValue
    }
}

extension Real: AdditiveArithmetic {
    /// The zero value.
    ///
    /// Zero is the identity element for addition. For any value,
    /// `x + .zero == x` and `.zero + x == x`.
    @inlinable public static var zero: Real {
        Real(RealRawValue.zero)
    }
    
    /// Adds two values and produces their sum, rounded to a
    /// representable value.
    ///
    /// The addition operator (`+`) calculates the sum of its two arguments. For
    /// example:
    ///
    ///     let x = 1.5
    ///     let y = x + 2.25
    ///     // y == 3.75
    ///
    /// The `+` operator implements the addition operation defined by the
    /// [IEEE 754 specification][spec].
    ///
    /// [spec]: http://ieeexplore.ieee.org/servlet/opac?punumber=4610933
    ///
    /// - Parameters:
    ///   - lhs: The first value to add.
    ///   - rhs: The second value to add.
    @inlinable public static func + (lhs: Real, rhs: Real) -> Real {
        Real(lhs.undefinedRawValue + rhs.undefinedRawValue)
    }
    
    /// Subtracts one value from another and produces their difference, rounded
    /// to a representable value.
    ///
    /// The subtraction operator (`-`) calculates the difference of its two
    /// arguments. For example:
    ///
    ///     let x = 7.5
    ///     let y = x - 2.25
    ///     // y == 5.25
    ///
    /// The `-` operator implements the subtraction operation defined by the
    /// [IEEE 754 specification][spec].
    ///
    /// [spec]: http://ieeexplore.ieee.org/servlet/opac?punumber=4610933
    ///
    /// - Parameters:
    ///   - lhs: A numeric value.
    ///   - rhs: The value to subtract from `lhs`.
    @inlinable public static func - (lhs: Real, rhs: Real) -> Real {
        Real(lhs.undefinedRawValue - rhs.undefinedRawValue)
    }
}

extension Real: ExpressibleByFloatLiteral {
    /// Creates an instance initialized to the specified floating-point value.
    ///
    /// Do not call this initializer directly. Instead, initialize a variable or
    /// constant using a floating-point literal. For example:
    ///
    ///     let x = 21.5
    ///
    /// In this example, the assignment to the `x` constant calls this
    /// floating-point literal initializer behind the scenes.
    ///
    /// - Parameter value: The value to create.
    @inlinable public init(floatLiteral value: RealRawValue) {
        undefinedRawValue = value
    }
}

extension Real: ExpressibleByIntegerLiteral {
    /// Creates an instance initialized to the specified integer value.
    ///
    /// Do not call this initializer directly. Instead, initialize a variable or
    /// constant using an integer literal. For example:
    ///
    ///     let x = 23
    ///
    /// In this example, the assignment to the `x` constant calls this integer
    /// literal initializer behind the scenes.
    ///
    /// - Parameter value: The value to create.
    @inlinable public init(integerLiteral value: Int64) {
        undefinedRawValue = RealRawValue(integerLiteral: value)
    }
}

extension Real: BinaryFloatingPoint {
    /// Creates a new instance from the given value, rounded to the closest
    /// possible representation.
    ///
    /// If two representable values are equally close, the result is the value
    /// with more trailing zeros in its significand bit pattern.
    ///
    /// - Parameter value: A floating-point value to be converted.
    @inlinable public init<Source>(_ value: Source) where Source : BinaryFloatingPoint {
        undefinedRawValue = RealRawValue(value)
    }
    
    /// Creates a new instance from the specified sign and bit patterns.
    /// This init is dependent on the `RealRawValue` type and the
    /// `significandBitPattern` value could change depending on the build configuration.
    ///
    /// The values passed as `exponentBitPattern` and `significandBitPattern` are
    /// interpreted in the binary interchange format defined by the [IEEE 754
    /// specification][spec].
    ///
    /// [spec]: http://ieeexplore.ieee.org/servlet/opac?punumber=4610933
    ///
    /// - Parameters:
    ///   - sign: The sign of the new value.
    ///   - exponentBitPattern: The bit pattern to use for the exponent field of
    ///     the new value.
    ///   - significandBitPattern: The bit pattern to use for the significand
    ///     field of the new value.
    @inlinable public init(sign: FloatingPointSign, exponentBitPattern: UInt, significandBitPattern: RealRawValue.RawSignificand) {
        undefinedRawValue = RealRawValue(sign: sign, exponentBitPattern: exponentBitPattern, significandBitPattern: significandBitPattern)
    }
    
    /// Creates a new value from the given sign, exponent, and significand.
    ///
    /// The following example uses this initializer to create a new `Double`
    /// instance. `Double` is a binary floating-point type that has a radix of
    /// `2`.
    ///
    ///     let x = Double(sign: .plus, exponent: -2, significand: 1.5)
    ///     // x == 0.375
    ///
    /// This initializer is equivalent to the following calculation, where `**`
    /// is exponentiation, computed as if by a single, correctly rounded,
    /// floating-point operation:
    ///
    ///     let sign: FloatingPointSign = .plus
    ///     let exponent = -2
    ///     let significand = 1.5
    ///     let y = (sign == .minus ? -1 : 1) * significand * Double.radix ** exponent
    ///     // y == 0.375
    ///
    /// As with any basic operation, if this value is outside the representable
    /// range of the type, overflow or underflow occurs, and zero, a subnormal
    /// value, or infinity may result. In addition, there are two other edge
    /// cases:
    ///
    /// - If the value you pass to `significand` is zero or infinite, the result
    ///   is zero or infinite, regardless of the value of `exponent`.
    /// - If the value you pass to `significand` is NaN, the result is NaN.
    ///
    /// For any floating-point value `x` of type `F`, the result of the following
    /// is equal to `x`, with the distinction that the result is canonicalized
    /// if `x` is in a noncanonical encoding:
    ///
    ///     let x0 = F(sign: x.sign, exponent: x.exponent, significand: x.significand)
    ///
    /// This initializer implements the `scaleB` operation defined by the [IEEE
    /// 754 specification][spec].
    ///
    /// [spec]: http://ieeexplore.ieee.org/servlet/opac?punumber=4610933
    ///
    /// - Parameters:
    ///   - sign: The sign to use for the new value.
    ///   - exponent: The new value's exponent.
    ///   - significand: The new value's significand.
    @inlinable public init(sign: FloatingPointSign, exponent: Int, significand: Real) {
        undefinedRawValue = RealRawValue(sign: sign, exponent: exponent, significand: significand.undefinedRawValue)
    }
    
    /// The raw encoding of the value's exponent field.
    ///
    /// This value is unadjusted by the type's exponent bias.
    @inlinable public var exponentBitPattern: UInt {
        undefinedRawValue.exponentBitPattern
    }
    
    /// The raw encoding of the value's significand field.
    /// This var is dependent on the `RealRawValue` type
    /// so its type could change depending on the build configuration.
    ///
    /// The `significandBitPattern` property does not include the leading
    /// integral bit of the significand, even for types like `Float80` that
    /// store it explicitly.
    @inlinable public var significandBitPattern: RealRawValue.RawSignificand {
        undefinedRawValue.significandBitPattern
    }
    
    /// The exponent of the floating-point value.
    ///
    /// The *exponent* of a floating-point value is the integer part of the
    /// logarithm of the value's magnitude. For a value `x` of a floating-point
    /// type `F`, the magnitude can be calculated as the following, where `**`
    /// is exponentiation:
    ///
    ///     let magnitude = x.significand * F.radix ** x.exponent
    ///
    /// In the next example, `y` has a value of `21.5`, which is encoded as
    /// `1.34375 * 2 ** 4`. The significand of `y` is therefore 1.34375.
    ///
    ///     let y: Double = 21.5
    ///     // y.significand == 1.34375
    ///     // y.exponent == 4
    ///     // Double.radix == 2
    ///
    /// The `exponent` property has the following edge cases:
    ///
    /// - If `x` is zero, then `x.exponent` is `Int.min`.
    /// - If `x` is +/-infinity or NaN, then `x.exponent` is `Int.max`
    ///
    /// This property implements the `logB` operation defined by the [IEEE 754
    /// specification][spec].
    ///
    /// [spec]: http://ieeexplore.ieee.org/servlet/opac?punumber=4610933
    @inlinable public var exponent: Int {
        undefinedRawValue.exponent
    }
    
    /// Returns the distance from this value to the given value, expressed as a
    /// stride.
    ///
    /// If this type's `Stride` type conforms to `BinaryInteger`, then for two
    /// values `x` and `y`, and a distance `n = x.distance(to: y)`,
    /// `x.advanced(by: n) == y`. Using this method with types that have a
    /// noninteger `Stride` may result in an approximation.
    ///
    /// - Parameter other: The value to calculate the distance to.
    /// - Returns: The distance from this value to `other`.
    ///
    /// - Complexity: O(1)
    @inlinable public func distance(to other: Real) -> Real {
        Real(undefinedRawValue.distance(to: other.undefinedRawValue))
    }
    
    /// Returns a value that is offset the specified distance from this value.
    ///
    /// Use the `advanced(by:)` method in generic code to offset a value by a
    /// specified distance. If you're working directly with numeric values, use
    /// the addition operator (`+`) instead of this method.
    ///
    ///     func addOne<T: Strideable>(to x: T) -> T
    ///         where T.Stride: ExpressibleByIntegerLiteral
    ///     {
    ///         return x.advanced(by: 1)
    ///     }
    ///
    ///     let x = addOne(to: 5)
    ///     // x == 6
    ///     let y = addOne(to: 3.5)
    ///     // y = 4.5
    ///
    /// If this type's `Stride` type conforms to `BinaryInteger`, then for a
    /// value `x`, a distance `n`, and a value `y = x.advanced(by: n)`,
    /// `x.distance(to: y) == n`. Using this method with types that have a
    /// noninteger `Stride` may result in an approximation. If the result of
    /// advancing by `n` is not representable as a value of this type, then a
    /// runtime error may occur.
    ///
    /// - Parameter n: The distance to advance this value.
    /// - Returns: A value that is offset from this value by `n`.
    ///
    /// - Complexity: O(1)
    @inlinable public func advanced(by n: Real) -> Real {
        Real(undefinedRawValue.advanced(by: n.undefinedRawValue))
    }
    
    /// The number of bits used to represent the type's exponent.
    ///
    /// A binary floating-point type's `exponentBitCount` imposes a limit on the
    /// range of the exponent for normal, finite values. The *exponent bias* of
    /// a type `F` can be calculated as the following, where `**` is
    /// exponentiation:
    ///
    ///     let bias = 2 ** (F.exponentBitCount - 1) - 1
    ///
    /// The least normal exponent for values of the type `F` is `1 - bias`, and
    /// the largest finite exponent is `bias`. An all-zeros exponent is reserved
    /// for subnormals and zeros, and an all-ones exponent is reserved for
    /// infinity and NaN.
    ///
    /// For example, the `Float` type has an `exponentBitCount` of 8, which gives
    /// an exponent bias of `127` by the calculation above.
    ///
    ///     let bias = 2 ** (Float.exponentBitCount - 1) - 1
    ///     // bias == 127
    ///     print(Float.greatestFiniteMagnitude.exponent)
    ///     // Prints "127"
    ///     print(Float.leastNormalMagnitude.exponent)
    ///     // Prints "-126"
    @inlinable public static var exponentBitCount: Int {
        RealRawValue.exponentBitCount
    }
    
    /// The available number of fractional significand bits.
    ///
    /// For fixed-width floating-point types, this is the actual number of
    /// fractional significand bits.
    ///
    /// For extensible floating-point types, `significandBitCount` should be the
    /// maximum allowed significand width (without counting any leading integral
    /// bit of the significand). If there is no upper limit, then
    /// `significandBitCount` should be `Int.max`.
    ///
    /// Note that `Float80.significandBitCount` is 63, even though 64 bits are
    /// used to store the significand in the memory representation of a
    /// `Float80` (unlike other floating-point types, `Float80` explicitly
    /// stores the leading integral significand bit, but the
    /// `BinaryFloatingPoint` APIs provide an abstraction so that users don't
    /// need to be aware of this detail).
    @inlinable public static var significandBitCount: Int {
        RealRawValue.significandBitCount
    }
    
    /// The floating-point value with the same sign and exponent as this value,
    /// but with a significand of 1.0.
    ///
    /// A *binade* is a set of binary floating-point values that all have the
    /// same sign and exponent. The `binade` property is a member of the same
    /// binade as this value, but with a unit significand.
    ///
    /// In this example, `x` has a value of `21.5`, which is stored as
    /// `1.34375 * 2**4`, where `**` is exponentiation. Therefore, `x.binade` is
    /// equal to `1.0 * 2**4`, or `16.0`.
    ///
    ///     let x = 21.5
    ///     // x.significand == 1.34375
    ///     // x.exponent == 4
    ///
    ///     let y = x.binade
    ///     // y == 16.0
    ///     // y.significand == 1.0
    ///     // y.exponent == 4
    @inlinable public var binade: Real {
        Real(undefinedRawValue.binade)
    }
    
    /// The number of bits required to represent the value's significand.
    ///
    /// If this value is a finite nonzero number, `significandWidth` is the
    /// number of fractional bits required to represent the value of
    /// `significand`; otherwise, `significandWidth` is -1. The value of
    /// `significandWidth` is always -1 or between zero and
    /// `significandBitCount`. For example:
    ///
    /// - For any representable power of two, `significandWidth` is zero, because
    ///   `significand` is `1.0`.
    /// - If `x` is 10, `x.significand` is `1.01` in binary, so
    ///   `x.significandWidth` is 2.
    /// - If `x` is Float.pi, `x.significand` is `1.10010010000111111011011` in
    ///   binary, and `x.significandWidth` is 23.
    @inlinable public var significandWidth: Int {
        undefinedRawValue.significandWidth
    }
    
    /// A quiet NaN ("not a number").
    ///
    /// A NaN compares not equal, not greater than, and not less than every
    /// value, including itself. Passing a NaN to an operation generally results
    /// in NaN.
    ///
    ///     let x = 1.21
    ///     // x > Real.nan == false
    ///     // x < Real.nan == false
    ///     // x == Real.nan == false
    ///
    /// Because a NaN always compares not equal to itself, to test whether a
    /// floating-point value is NaN, use its `isNaN` property instead of the
    /// equal-to operator (`==`). In the following example, `y` is NaN.
    ///
    ///     let y = x + Real.nan
    ///     print(y == Real.nan)
    ///     // Prints "false"
    ///     print(y.isNaN)
    ///     // Prints "true"
    @inlinable public static var nan: Real {
        Real(RealRawValue.nan)
    }
    
    /// A signaling NaN ("not a number").
    ///
    /// The default IEEE 754 behavior of operations involving a signaling NaN is
    /// to raise the Invalid flag in the floating-point environment and return a
    /// quiet NaN.
    ///
    /// Operations on types conforming to the `FloatingPoint` protocol should
    /// support this behavior, but they might also support other options. For
    /// example, it would be reasonable to implement alternative operations in
    /// which operating on a signaling NaN triggers a runtime error or results
    /// in a diagnostic for debugging purposes. Types that implement alternative
    /// behaviors for a signaling NaN must document the departure.
    ///
    /// Other than these signaling operations, a signaling NaN behaves in the
    /// same manner as a quiet NaN.
    @inlinable public static var signalingNaN: Real {
        Real(RealRawValue.signalingNaN)
    }
    
    /// Positive infinity.
    ///
    /// Infinity compares greater than all finite numbers and equal to other
    /// infinite values.
    ///
    ///     let x = Real.greatestFiniteMagnitude
    ///     let y = x * 2
    ///     // y == Real.infinity
    ///     // y > x
    @inlinable public static var infinity: Real {
        Real(RealRawValue.infinity)
    }
    
    /// The greatest finite number representable by this type.
    ///
    /// This value compares greater than or equal to all finite numbers, but less
    /// than `infinity`.
    ///
    /// This value corresponds to type-specific C macros such as `FLT_MAX` and
    /// `DBL_MAX`. The naming of those macros is slightly misleading, because
    /// `infinity` is greater than this value.
    @inlinable public static var greatestFiniteMagnitude: Real {
        Real(RealRawValue.greatestFiniteMagnitude)
    }
    
    /// The mathematical constant pi.
    ///
    /// This value should be rounded toward zero to keep user computations with
    /// angles from inadvertently ending up in the wrong quadrant. A type that
    /// conforms to the `FloatingPoint` protocol provides the value for `pi` at
    /// its best possible precision.
    ///
    ///     print(Real.pi)
    ///     // Prints "3.14159265358979"
    @inlinable public static var pi: Real {
        Real(RealRawValue.pi)
    }
    
    /// The unit in the last place of this value.
    ///
    /// This is the unit of the least significant digit in this value's
    /// significand. For most numbers `x`, this is the difference between `x`
    /// and the next greater (in magnitude) representable number. There are some
    /// edge cases to be aware of:
    ///
    /// - If `x` is not a finite number, then `x.ulp` is NaN.
    /// - If `x` is very small in magnitude, then `x.ulp` may be a subnormal
    ///   number. If a type does not support subnormals, `x.ulp` may be rounded
    ///   to zero.
    /// - `greatestFiniteMagnitude.ulp` is a finite number, even though the next
    ///   greater representable value is `infinity`.
    ///
    /// See also the `ulpOfOne` static property.
    @inlinable public var ulp: Real {
        Real(undefinedRawValue.ulp)
    }
    
    /// The least positive normal number.
    ///
    /// This value compares less than or equal to all positive normal numbers.
    /// There may be smaller positive numbers, but they are *subnormal*, meaning
    /// that they are represented with less precision than normal numbers.
    ///
    /// This value corresponds to type-specific C macros such as `FLT_MIN` and
    /// `DBL_MIN`. The naming of those macros is slightly misleading, because
    /// subnormals, zeros, and negative numbers are smaller than this value.
    @inlinable public static var leastNormalMagnitude: Real {
        Real(RealRawValue.leastNormalMagnitude)
    }
    
    /// The least positive number.
    ///
    /// This value compares less than or equal to all positive numbers, but
    /// greater than zero. If the type supports subnormal values,
    /// `leastNonzeroMagnitude` is smaller than `leastNormalMagnitude`;
    /// otherwise they are equal.
    @inlinable public static var leastNonzeroMagnitude: Real {
        Real(RealRawValue.leastNonzeroMagnitude)
    }
    
    /// The sign of the floating-point value.
    ///
    /// The `sign` property is `.minus` if the value's signbit is set, and
    /// `.plus` otherwise. For example:
    ///
    ///     let x = -33.375
    ///     // x.sign == .minus
    ///
    /// Don't use this property to check whether a floating point value is
    /// negative. For a value `x`, the comparison `x.sign == .minus` is not
    /// necessarily the same as `x < 0`. In particular, `x.sign == .minus` if
    /// `x` is -0, and while `x < 0` is always `false` if `x` is NaN, `x.sign`
    /// could be either `.plus` or `.minus`.
    @inlinable public var sign: FloatingPointSign {
        undefinedRawValue.sign
    }
    
    /// The significand of the floating-point value.
    ///
    /// The magnitude of a floating-point value `x` of type `F` can be calculated
    /// by using the following formula, where `**` is exponentiation:
    ///
    ///     let magnitude = x.significand * F.radix ** x.exponent
    ///
    /// In the next example, `y` has a value of `21.5`, which is encoded as
    /// `1.34375 * 2 ** 4`. The significand of `y` is therefore 1.34375.
    ///
    ///     let y: Real = 21.5
    ///     // y.significand == 1.34375
    ///     // y.exponent == 4
    ///     // Real.radix == 2
    ///
    /// If a type's radix is 2, then for finite nonzero numbers, the significand
    /// is in the range `1.0 ..< 2.0`. For other values of `x`, `x.significand`
    /// is defined as follows:
    ///
    /// - If `x` is zero, then `x.significand` is 0.0.
    /// - If `x` is infinite, then `x.significand` is infinity.
    /// - If `x` is NaN, then `x.significand` is NaN.
    /// - Note: The significand is frequently also called the *mantissa*, but
    ///   significand is the preferred terminology in the [IEEE 754
    ///   specification][spec], to allay confusion with the use of mantissa for
    ///   the fractional part of a logarithm.
    ///
    /// [spec]: http://ieeexplore.ieee.org/servlet/opac?punumber=4610933
    @inlinable public var significand: Real {
        Real(undefinedRawValue.significand)
    }
    
    /// Multiplies two values and produces their product, rounding to a
    /// representable value.
    ///
    /// The multiplication operator (`*`) calculates the product of its two
    /// arguments. For example:
    ///
    ///     let x = 7.5
    ///     let y = x * 2.25
    ///     // y == 16.875
    ///
    /// The `*` operator implements the multiplication operation defined by the
    /// [IEEE 754 specification][spec].
    ///
    /// [spec]: http://ieeexplore.ieee.org/servlet/opac?punumber=4610933
    ///
    /// - Parameters:
    ///   - lhs: The first value to multiply.
    ///   - rhs: The second value to multiply.
    @inlinable public static func * (lhs: Real, rhs: Real) -> Real {
        Real(lhs.undefinedRawValue * rhs.undefinedRawValue)
    }
    
    /// Multiplies two values and stores the result in the left-hand-side
    /// variable, rounding to a representable value.
    ///
    /// - Parameters:
    ///   - lhs: The first value to multiply.
    ///   - rhs: The second value to multiply.
    @inlinable public static func *= (lhs: inout Real, rhs: Real) {
        lhs.undefinedRawValue *= rhs.undefinedRawValue
    }
    
    /// Returns the quotient of dividing the first value by the second, rounded
    /// to a representable value.
    ///
    /// The division operator (`/`) calculates the quotient of the division if
    /// `rhs` is nonzero. If `rhs` is zero, the result of the division is
    /// infinity, with the sign of the result matching the sign of `lhs`.
    ///
    ///     let x = 16.875
    ///     let y = x / 2.25
    ///     // y == 7.5
    ///
    ///     let z = x / 0
    ///     // z.isInfinite == true
    ///
    /// The `/` operator implements the division operation defined by the [IEEE
    /// 754 specification][spec].
    ///
    /// [spec]: http://ieeexplore.ieee.org/servlet/opac?punumber=4610933
    ///
    /// - Parameters:
    ///   - lhs: The value to divide.
    ///   - rhs: The value to divide `lhs` by.
    @inlinable public static func / (lhs: Real, rhs: Real) -> Real {
        Real(lhs.undefinedRawValue / rhs.undefinedRawValue)
    }
    
    /// Divides the first value by the second and stores the quotient in the
    /// left-hand-side variable, rounding to a representable value.
    ///
    /// - Parameters:
    ///   - lhs: The value to divide.
    ///   - rhs: The value to divide `lhs` by.
    @inlinable public static func /= (lhs: inout Real, rhs: Real) {
        lhs.undefinedRawValue /= rhs.undefinedRawValue
    }
    
    /// Replaces this value with the remainder of itself divided by the given
    /// value.
    ///
    /// For two finite values `x` and `y`, the remainder `r` of dividing `x` by
    /// `y` satisfies `x == y * q + r`, where `q` is the integer nearest to
    /// `x / y`. If `x / y` is exactly halfway between two integers, `q` is
    /// chosen to be even. Note that `q` is *not* `x / y` computed in
    /// floating-point arithmetic, and that `q` may not be representable in any
    /// available integer type.
    ///
    /// The following example calculates the remainder of dividing 8.625 by 0.75:
    ///
    ///     var x = 8.625
    ///     print(x / 0.75)
    ///     // Prints "11.5"
    ///
    ///     let q = (x / 0.75).rounded(.toNearestOrEven)
    ///     // q == 12.0
    ///     x.formRemainder(dividingBy: 0.75)
    ///     // x == -0.375
    ///
    ///     let x1 = 0.75 * q + x
    ///     // x1 == 8.625
    ///
    /// If this value and `other` are finite numbers, the remainder is in the
    /// closed range `-abs(other / 2)...abs(other / 2)`. The
    /// `formRemainder(dividingBy:)` method is always exact.
    ///
    /// - Parameter other: The value to use when dividing this value.
    @inlinable public mutating func formRemainder(dividingBy other: Real) {
        undefinedRawValue.formRemainder(dividingBy: other.undefinedRawValue)
    }
    
    /// Replaces this value with the remainder of itself divided by the given
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
    ///     x.formTruncatingRemainder(dividingBy: 0.75)
    ///     // x == 0.375
    ///
    ///     let x1 = 0.75 * q + x
    ///     // x1 == 8.625
    ///
    /// If this value and `other` are both finite numbers, the truncating
    /// remainder has the same sign as this value and is strictly smaller in
    /// magnitude than `other`. The `formTruncatingRemainder(dividingBy:)`
    /// method is always exact.
    ///
    /// - Parameter other: The value to use when dividing this value.
    @inlinable public mutating func formTruncatingRemainder(dividingBy other: Real) {
        undefinedRawValue.formTruncatingRemainder(dividingBy: other.undefinedRawValue)
    }
    
    /// Replaces this value with its square root, rounded to a representable
    /// value.
    @inlinable public mutating func formSquareRoot() {
        undefinedRawValue.formSquareRoot()
    }
    
    /// Adds the product of the two given values to this value in place, computed
    /// without intermediate rounding.
    ///
    /// - Parameters:
    ///   - lhs: One of the values to multiply before adding to this value.
    ///   - rhs: The other value to multiply.
    @inlinable public mutating func addProduct(_ lhs: Real, _ rhs: Real) {
        undefinedRawValue.addProduct(lhs.undefinedRawValue, rhs.undefinedRawValue)
    }
    
    /// The least representable value that compares greater than this value.
    ///
    /// For any finite value `x`, `x.nextUp` is greater than `x`. For `nan` or
    /// `infinity`, `x.nextUp` is `x` itself. The following special cases also
    /// apply:
    ///
    /// - If `x` is `-infinity`, then `x.nextUp` is `-greatestFiniteMagnitude`.
    /// - If `x` is `-leastNonzeroMagnitude`, then `x.nextUp` is `-0.0`.
    /// - If `x` is zero, then `x.nextUp` is `leastNonzeroMagnitude`.
    /// - If `x` is `greatestFiniteMagnitude`, then `x.nextUp` is `infinity`.
    @inlinable public var nextUp: Real {
        Real(undefinedRawValue.nextUp)
    }
    
    /// Returns a Boolean value indicating whether this instance is equal to the
    /// given value.
    ///
    /// This method serves as the basis for the equal-to operator (`==`) for
    /// floating-point values. When comparing two values with this method, `-0`
    /// is equal to `+0`. NaN is not equal to any value, including itself. For
    /// example:
    ///
    ///     let x = 15.0
    ///     x.isEqual(to: 15.0)
    ///     // true
    ///     x.isEqual(to: .nan)
    ///     // false
    ///     Double.nan.isEqual(to: .nan)
    ///     // false
    ///
    /// The `isEqual(to:)` method implements the equality predicate defined by
    /// the [IEEE 754 specification][spec].
    ///
    /// [spec]: http://ieeexplore.ieee.org/servlet/opac?punumber=4610933
    ///
    /// - Parameter other: The value to compare with this value.
    /// - Returns: `true` if `other` has the same value as this instance;
    ///   otherwise, `false`. If either this value or `other` is NaN, the result
    ///   of this method is `false`.
    @inlinable public func isEqual(to other: Real) -> Bool {
        undefinedRawValue.isEqual(to: other.undefinedRawValue)
    }
    
    /// Returns a Boolean value indicating whether this instance is less than the
    /// given value.
    ///
    /// This method serves as the basis for the less-than operator (`<`) for
    /// floating-point values. Some special cases apply:
    ///
    /// - Because NaN compares not less than nor greater than any value, this
    ///   method returns `false` when called on NaN or when NaN is passed as
    ///   `other`.
    /// - `-infinity` compares less than all values except for itself and NaN.
    /// - Every value except for NaN and `+infinity` compares less than
    ///   `+infinity`.
    ///
    ///     let x = 15.0
    ///     x.isLess(than: 20.0)
    ///     // true
    ///     x.isLess(than: .nan)
    ///     // false
    ///     Double.nan.isLess(than: x)
    ///     // false
    ///
    /// The `isLess(than:)` method implements the less-than predicate defined by
    /// the [IEEE 754 specification][spec].
    ///
    /// [spec]: http://ieeexplore.ieee.org/servlet/opac?punumber=4610933
    ///
    /// - Parameter other: The value to compare with this value.
    /// - Returns: `true` if this value is less than `other`; otherwise, `false`.
    ///   If either this value or `other` is NaN, the result of this method is
    ///   `false`.
    @inlinable public func isLess(than other: Real) -> Bool {
        undefinedRawValue.isLess(than: other.undefinedRawValue)
    }
    
    /// Returns a Boolean value indicating whether this instance is less than or
    /// equal to the given value.
    ///
    /// This method serves as the basis for the less-than-or-equal-to operator
    /// (`<=`) for floating-point values. Some special cases apply:
    ///
    /// - Because NaN is incomparable with any value, this method returns `false`
    ///   when called on NaN or when NaN is passed as `other`.
    /// - `-infinity` compares less than or equal to all values except NaN.
    /// - Every value except NaN compares less than or equal to `+infinity`.
    ///
    ///     let x = 15.0
    ///     x.isLessThanOrEqualTo(20.0)
    ///     // true
    ///     x.isLessThanOrEqualTo(.nan)
    ///     // false
    ///     Double.nan.isLessThanOrEqualTo(x)
    ///     // false
    ///
    /// The `isLessThanOrEqualTo(_:)` method implements the less-than-or-equal
    /// predicate defined by the [IEEE 754 specification][spec].
    ///
    /// [spec]: http://ieeexplore.ieee.org/servlet/opac?punumber=4610933
    ///
    /// - Parameter other: The value to compare with this value.
    /// - Returns: `true` if `other` is greater than this value; otherwise,
    ///   `false`. If either this value or `other` is NaN, the result of this
    ///   method is `false`.
    @inlinable public func isLessThanOrEqualTo(_ other: Real) -> Bool {
        undefinedRawValue.isLessThanOrEqualTo(other.undefinedRawValue)
    }
    
    /// A Boolean value indicating whether this instance is normal.
    ///
    /// A *normal* value is a finite number that uses the full precision
    /// available to values of a type. Zero is neither a normal nor a subnormal
    /// number.
    @inlinable public var isNormal: Bool {
        undefinedRawValue.isNormal
    }
    
    /// A Boolean value indicating whether this instance is finite.
    ///
    /// All values other than NaN and infinity are considered finite, whether
    /// normal or subnormal.  For NaN, both `isFinite` and `isInfinite` are false.
    @inlinable public var isFinite: Bool {
        undefinedRawValue.isFinite
    }
    
    /// A Boolean value indicating whether the instance is equal to zero.
    ///
    /// The `isZero` property of a value `x` is `true` when `x` represents either
    /// `-0.0` or `+0.0`. `x.isZero` is equivalent to the following comparison:
    /// `x == 0.0`.
    ///
    ///     let x = -0.0
    ///     x.isZero        // true
    ///     x == 0.0        // true
    @inlinable public var isZero: Bool {
        undefinedRawValue.isZero
    }
    
    /// A Boolean value indicating whether the instance is subnormal.
    ///
    /// A *subnormal* value is a nonzero number that has a lesser magnitude than
    /// the smallest normal number. Subnormal values don't use the full
    /// precision available to values of a type.
    ///
    /// Zero is neither a normal nor a subnormal number. Subnormal numbers are
    /// often called *denormal* or *denormalized*---these are different names
    /// for the same concept.
    @inlinable public var isSubnormal: Bool {
        undefinedRawValue.isSubnormal
    }
    
    /// A Boolean value indicating whether the instance is infinite.
    ///
    /// For NaN, both `isFinite` and `isInfinite` are false.
    @inlinable public var isInfinite: Bool {
        undefinedRawValue.isInfinite
    }
    
    /// A Boolean value indicating whether the instance is NaN ("not a number").
    ///
    /// Because NaN is not equal to any value, including NaN, use this property
    /// instead of the equal-to operator (`==`) or not-equal-to operator (`!=`)
    /// to test whether a value is or is not NaN. For example:
    ///
    ///     let x = 0.0
    ///     let y = x * .infinity
    ///     // y is a NaN
    ///
    ///     // Comparing with the equal-to operator never returns 'true'
    ///     print(x == Double.nan)
    ///     // Prints "false"
    ///     print(y == Double.nan)
    ///     // Prints "false"
    ///
    ///     // Test with the 'isNaN' property instead
    ///     print(x.isNaN)
    ///     // Prints "false"
    ///     print(y.isNaN)
    ///     // Prints "true"
    ///
    /// This property is `true` for both quiet and signaling NaNs.
    @inlinable public var isNaN: Bool {
        undefinedRawValue.isNaN
    }
    
    /// A Boolean value indicating whether the instance is a signaling NaN.
    ///
    /// Signaling NaNs typically raise the Invalid flag when used in general
    /// computing operations.
    @inlinable public var isSignalingNaN: Bool {
        undefinedRawValue.isSignalingNaN
    }
    
    /// A Boolean value indicating whether the instance's representation is in
    /// its canonical form.
    ///
    /// The [IEEE 754 specification][spec] defines a *canonical*, or preferred,
    /// encoding of a floating-point value. On platforms that fully support
    /// IEEE 754, every `Float` or `Double` value is canonical, but
    /// non-canonical values can exist on other platforms or for other types.
    /// Some examples:
    ///
    /// - On platforms that flush subnormal numbers to zero (such as armv7
    ///   with the default floating-point environment), Swift interprets
    ///   subnormal `Float` and `Double` values as non-canonical zeros.
    ///   (In Swift 5.1 and earlier, `isCanonical` is `true` for these
    ///   values, which is the incorrect value.)
    ///
    /// - On i386 and x86_64, `Float80` has a number of non-canonical
    ///   encodings. "Pseudo-NaNs", "pseudo-infinities", and "unnormals" are
    ///   interpreted as non-canonical NaN encodings. "Pseudo-denormals" are
    ///   interpreted as non-canonical encodings of subnormal values.
    ///
    /// - Decimal floating-point types admit a large number of non-canonical
    ///   encodings. Consult the IEEE 754 standard for additional details.
    ///
    /// [spec]: http://ieeexplore.ieee.org/servlet/opac?punumber=4610933
    @inlinable public var isCanonical: Bool {
        undefinedRawValue.isCanonical
    }
    
    /// Rounds the value to an integral value using the specified rounding rule.
    ///
    /// The following example rounds a value using four different rounding rules:
    ///
    ///     // Equivalent to the C 'round' function:
    ///     var w = 6.5
    ///     w.round(.toNearestOrAwayFromZero)
    ///     // w == 7.0
    ///
    ///     // Equivalent to the C 'trunc' function:
    ///     var x = 6.5
    ///     x.round(.towardZero)
    ///     // x == 6.0
    ///
    ///     // Equivalent to the C 'ceil' function:
    ///     var y = 6.5
    ///     y.round(.up)
    ///     // y == 7.0
    ///
    ///     // Equivalent to the C 'floor' function:
    ///     var z = 6.5
    ///     z.round(.down)
    ///     // z == 6.0
    ///
    /// For more information about the available rounding rules, see the
    /// `FloatingPointRoundingRule` enumeration. To round a value using the
    /// default "schoolbook rounding", you can use the shorter `round()` method
    /// instead.
    ///
    ///     var w1 = 6.5
    ///     w1.round()
    ///     // w1 == 7.0
    ///
    /// - Parameter rule: The rounding rule to use.
    @inlinable public mutating func round(_ rule: FloatingPointRoundingRule) {
        undefinedRawValue.round(rule)
    }
    
    /// The magnitude of this value.
    ///
    /// For any numeric value `x`, `x.magnitude` is the absolute value of `x`.
    /// You can use the `magnitude` property in operations that are simpler to
    /// implement in terms of unsigned values, such as printing the value of an
    /// integer, which is just printing a '-' character in front of an absolute
    /// value.
    ///
    ///     let x = -200
    ///     // x.magnitude == 200
    ///
    /// The global `abs(_:)` function provides more familiar syntax when you need
    /// to find an absolute value. In addition, because `abs(_:)` always returns
    /// a value of the same type, even in a generic context, using the function
    /// instead of the `magnitude` property is encouraged.
    @inlinable public var magnitude: Real {
        Real(undefinedRawValue.magnitude)
    }
}

extension Real: Comparable {}

extension Real: CustomDebugStringConvertible {
    /// A textual representation of the value, suitable for debugging.
    ///
    /// This property has the same value as the `description` property, except
    /// that NaN values are printed in an extended format.
    public var debugDescription: String {
        undefinedRawValue.debugDescription
    }
}

extension Real: CustomStringConvertible {
    /// A textual representation of the value.
    ///
    /// For any finite value, this property provides a string that can be
    /// converted back to an instance of `Real` without rounding errors.  That
    /// is, if `x` is an instance of `Real`, then `Real(x.description) ==
    /// x` is always true.  For any NaN value, the property's value is "nan", and
    /// for positive and negative infinity its value is "inf" and "-inf".
    public var description: String {
        undefinedRawValue.description
    }
}

extension Real: Codable {
    /// Encodes this value into the given encoder.
    ///
    /// This function throws an error if any values are invalid for the given
    /// encoder's format.
    ///
    /// - Parameter encoder: The encoder to write data to.
    @inlinable public func encode(to encoder: Encoder) throws {
        try undefinedRawValue.encode(to: encoder)
    }
    
    /// Creates a new instance by decoding from the given decoder.
    ///
    /// This initializer throws an error if reading from the decoder fails, or
    /// if the data read is corrupted or otherwise invalid.
    ///
    /// - Parameter decoder: The decoder to read data from.
    @inlinable public init(from decoder: Decoder) throws {
        undefinedRawValue = try RealRawValue(from: decoder)
    }
}

extension Real: Hashable {
    /// Hashes the essential components of this value by feeding them into the
    /// given hasher.
    ///
    /// Implement this method to conform to the `Hashable` protocol. The
    /// components used for hashing must be the same as the components compared
    /// in your type's `==` operator implementation. Call `hasher.combine(_:)`
    /// with each of these components.
    ///
    /// - Important: Never call `finalize()` on `hasher`. Doing so may become a
    ///   compile-time error in the future.
    ///
    /// - Parameter hasher: The hasher to use when combining the components
    ///   of this instance.
    @inlinable public func hash(into hasher: inout Hasher) {
        undefinedRawValue.hash(into: &hasher)
    }
}

extension Real: LosslessStringConvertible {
    /// Creates a new instance from the given string.
    ///
    /// The string passed as `text` can represent a real number in decimal or
    /// hexadecimal format or can be in a special format representing infinity
    /// or NaN ("not a number"). If `text` is not in a recognized format,
    /// the optional initializer will fail and return `nil`.
    ///
    /// The `text` string consists of an optional
    /// plus or minus sign character (`+` or `-`)
    /// followed by one of the following:
    ///
    /// - A *decimal string* contains a significand consisting of one
    ///   or more decimal digits that may include a decimal point:
    ///
    ///       let c = Real("-1.0")
    ///       // c == -1.0
    ///
    ///       let d = Real("28.375")
    ///       // d == 28.375
    ///
    ///   A decimal string may also include an exponent following the
    ///   significand, indicating the power of 10 by which the significand should
    ///   be multiplied. If included, the exponent is separated by a single
    ///   character, `e` or `E`, and consists of an optional plus or minus sign
    ///   character and a sequence of decimal digits.
    ///
    ///       let e = Real("2837.5e-2")
    ///       // e == 28.375
    ///
    /// - A *hexadecimal string* contains a significand consisting of
    ///   `0X` or `0x` followed by one or more hexadecimal digits that may
    ///   include a decimal point.
    ///
    ///       let f = Real("0x1c.6")
    ///       // f == 28.375
    ///
    ///   A hexadecimal string may also include an exponent
    ///   indicating the power of 2 by which the significand should
    ///   be multiplied. If included, the exponent is separated by a single
    ///   character, `p` or `P`, and consists of an optional plus or minus sign
    ///   character and a sequence of decimal digits.
    ///
    ///       let g = Real("0x1.c6p4")
    ///       // g == 28.375
    ///
    /// - The input strings `"inf"` or `"infinity"` (case insensitive)
    ///   are converted to an infinite result:
    ///
    ///       let i = Real("inf")
    ///       // i == Real.infinity
    ///
    ///       let j = Real("-Infinity")
    ///       // j == -Real.infinity
    ///
    /// - An input string of `"nan"` (case insensitive) is converted
    ///   into a *NaN* value:
    ///
    ///       let n = Real("-nan")
    ///       // n?.isNaN == true
    ///       // n?.sign == .minus
    ///
    ///   A NaN string may also include a payload in parentheses following the
    ///   `"nan"` keyword. The payload consists of a sequence of decimal digits,
    ///   or the characters `0X` or `0x` followed by a sequence of hexadecimal
    ///   digits. If the payload contains any other characters, it is ignored.
    ///   If the value of the payload is larger than can be stored as the
    ///   payload of a `Real.nan`, the least significant bits are used.
    ///
    ///       let p = Real("nan(0x10)")
    ///       // p?.isNaN == true
    ///       // String(p!) == "nan(0x10)"
    ///
    /// A string in any other format than those described above
    /// or containing additional characters
    /// results in a `nil` value. For example, the following conversions
    /// result in `nil`:
    ///
    ///       Real(" 5.0")      // Includes whitespace
    ///       Real("±2.0")      // Invalid character
    ///       Real("0x1.25e4")  // Incorrect exponent format
    ///
    /// A decimal or hexadecimal string is converted to a `Real`
    /// instance using the IEEE 754 roundTiesToEven (default) rounding
    /// attribute.
    /// Values with absolute value smaller than `Real.leastNonzeroMagnitude`
    /// are rounded to plus or minus zero.
    /// Values with absolute value larger than `Real.greatestFiniteMagnitude`
    /// are rounded to plus or minus infinity.
    ///
    ///       let y = Real("1.23e-9999")
    ///       // y == 0.0
    ///       // y?.sign == .plus
    ///
    ///       let z = Real("-7.89e-7206")
    ///       // z == -0.0
    ///       // z?.sign == .minus
    ///
    ///       let r = Real("1.23e17802")
    ///       // r == Real.infinity
    ///
    ///       let s = Real("-7.89e7206")
    ///       // s == Real.-infinity
    ///
    /// - Note:  Prior to Swift 5.4, a decimal or
    /// hexadecimal input string whose value was too large to represent
    /// as a finite `Real` instance returned `nil` instead of
    /// `Real.infinity`.
    ///
    /// - Parameter text: An input string to convert to a `Real?` instance.
    ///
    @inlinable public init?(_ description: String) {
        if let value = RealRawValue(description) {
            undefinedRawValue = value
        } else {
            return nil
        }
    }
}

extension Real: Numeric {}

extension Real: Sendable {}

extension Real: SignedNumeric {}

extension Real: Strideable {}

extension Real: TextOutputStreamable {
    /// Writes a textual representation of this instance into the given output
    /// stream.
    @inlinable public func write<Target>(to target: inout Target) where Target : TextOutputStream {
        undefinedRawValue.write(to: &target)
    }
}

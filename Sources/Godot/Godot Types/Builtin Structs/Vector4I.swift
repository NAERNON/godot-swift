
/// A 4D vector using integer coordinates.
///
/// This type can be used to represent 2D grid coordinates or any other quadruplet of integers.
///
/// It uses integer coordinates and is therefore preferable to ``Vector4``
/// when exact precision is required.
///
/// >note: The values are limited to 32 bits, and unlike ``Vector4``
/// this cannot be configured with an engine build option.
///
/// ### Use as Boolean
///
/// In a boolean context, a `Vector4I` evaluates to `false` if
/// it's equal to `(0, 0, 0, 0)`.
/// Otherwise, it always evaluates to `true`.
///
/// ### Type Alias
///
/// `Vector4I` is a type alias to `SIMD4<Int32>`.
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
/// - ``Swift/SIMD4/abs()``
/// - ``Swift/SIMD4/formAbs()``
/// - ``Swift/SIMD4/signUnitValue-1mggn``
///
/// ### Magnitude and Distance
///
/// - ``Swift/SIMD4/magnitude-9sqj8``
/// - ``Swift/SIMD4/magnitudeSquared-2v6no``
///
/// ### Axis
///
/// - ``Swift/SIMD4/minAxis``
/// - ``Swift/SIMD4/maxAxis``
/// - ``Swift/SIMD4/subscript(axis:)``
///
/// ### Rounding and Division
///
/// - ``Swift/SIMD4/snapped(step:)-6bgdk``
/// - ``Swift/SIMD4/snap(step:)-3o1p4``
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
public typealias Vector4I = SIMD4<Int32>

extension SIMD4 where Scalar : BinaryInteger {
    /// A vector with each component set to `1` if it's positive,
    /// `-1` if it's negative, and `0` if it's zero.
    public var signUnitValue: SIMD4 {
        SIMD4(
            x: x.signUnitValue,
            y: y.signUnitValue,
            z: z.signUnitValue,
            w: w.signUnitValue
        )
    }
    
    /// Returns a new vector with each component snapped to
    /// the closest multiple of the corresponding component in a given vector.
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
}

extension SIMD4 where Scalar == Int32 {
    /// The magnitude (length) of the vector.
    public var magnitude: FloatingPointType {
        FloatingPointType(magnitudeSquared).squareRoot()
    }
    
    /// The squared magnitude of the vector.
    ///
    /// This property runs faster than ``magnitude-9sqj8``, so prefer it if you need
    /// to compare vectors or need the squared distance for some formula.
    public var magnitudeSquared: UInt64 {
        (UInt64(x) * UInt64(x)) + (UInt64(y) * UInt64(y)) + (UInt64(z) * UInt64(z)) + (UInt64(w) * UInt64(w))
    }
}

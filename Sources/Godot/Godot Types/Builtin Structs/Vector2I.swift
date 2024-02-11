
/// A 2D vector using integer coordinates.
///
/// This type can be used to represent 2D grid coordinates or any other pair of integers.
///
/// It uses integer coordinates and is therefore preferable to ``Vector2``
/// when exact precision is required.
///
/// >note: The values are limited to 32 bits, and unlike ``Vector2``
/// this cannot be configured with an engine build option.
///
/// ### Use as Boolean
///
/// In a boolean context, a `Vector2I` evaluates to `false` if
/// it's equal to `(0, 0)`.
/// Otherwise, it always evaluates to `true`.
///
/// ### Type Alias
///
/// `Vector2I` is a type alias to `SIMD2<Int32>`.
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
/// - ``Swift/SIMD2/left-4za5e``
/// - ``Swift/SIMD2/right-56fkp``
/// - ``Swift/SIMD2/up-3q2aq``
/// - ``Swift/SIMD2/down-6ay1x``
///
/// ### Geometric Properties
///
/// - ``Swift/SIMD2/width``
/// - ``Swift/SIMD2/height``
/// - ``Swift/SIMD2/aspect-2zt2e``
/// - ``Swift/SIMD2/abs()``
/// - ``Swift/SIMD2/formAbs()``
/// - ``Swift/SIMD2/signUnitValue-4z9me``
///
/// ### Magnitude and Distance
///
/// - ``Swift/SIMD2/magnitude-5rz9x``
/// - ``Swift/SIMD2/magnitudeSquared-8sets``
///
/// ### Axis
///
/// - ``Swift/SIMD2/minAxis``
/// - ``Swift/SIMD2/maxAxis``
/// - ``Swift/SIMD2/subscript(axis:)``
///
/// ### Rounding and Division
///
/// - ``Swift/SIMD2/snapped(step:)-5c3wk``
/// - ``Swift/SIMD2/snap(step:)-749bj``
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
public typealias Vector2I = SIMD2<Int32>

extension SIMD2 where Scalar : BinaryInteger {
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
    
    /// The aspect ratio of the vector, the ratio of `x` to `y`.
    public var aspect: FloatingPointType {
        FloatingPointType(x) / FloatingPointType(y)
    }
    
    /// A vector with each component set to `1` if it's positive,
    /// `-1` if it's negative, and `0` if it's zero.
    public var signUnitValue: SIMD2 {
        SIMD2(x: x.signUnitValue, y: y.signUnitValue)
    }
    
    /// Returns a new vector with each component snapped to
    /// the closest multiple of the corresponding component in a given vector.
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

extension SIMD2 where Scalar == Int32 {
    /// The magnitude (length) of the vector.
    public var magnitude: FloatingPointType {
        FloatingPointType(magnitudeSquared).squareRoot()
    }
    
    /// The squared magnitude of the vector.
    ///
    /// This property runs faster than ``magnitude-5rz9x``, so prefer it if you need
    /// to compare vectors or need the squared distance for some formula.
    public var magnitudeSquared: UInt64 {
        (UInt64(x) * UInt64(x)) + (UInt64(y) * UInt64(y))
    }
}

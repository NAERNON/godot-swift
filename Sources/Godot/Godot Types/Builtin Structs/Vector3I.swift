
/// A 3D vector using integer coordinates.
///
/// This type can be used to represent 3D coordinates or any other triplet of integers.
///
/// It uses integer coordinates and is therefore preferable to ``Vector3``
/// when exact precision is required.
///
/// >note: The values are limited to 32 bits, and unlike ``Vector3``
/// this cannot be configured with an engine build option.
///
/// ### Use as Boolean
///
/// In a boolean context, a `Vector3I` evaluates to `false` if
/// it's equal to `(0, 0, 0)`.
/// Otherwise, it always evaluates to `true`.
///
/// ### Type Alias
///
/// `Vector3I` is a type alias to `SIMD3<Int32>`.
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
/// - ``Swift/SIMD3/left-3b6h1``
/// - ``Swift/SIMD3/right-2etil``
/// - ``Swift/SIMD3/up-3q1fo``
/// - ``Swift/SIMD3/down-6d1pe``
/// - ``Swift/SIMD3/back-69b20``
/// - ``Swift/SIMD3/forward-2w270``
///
/// ### Geometric Properties
///
/// - ``Swift/SIMD3/signUnitValue-86nzn``
///
/// ### Magnitude and Distance
///
/// - ``Swift/SIMD3/magnitude-7e3ew``
/// - ``Swift/SIMD3/magnitudeSquared-4didx``
///
/// ### Axis
///
/// - ``Swift/SIMD3/minAxis``
/// - ``Swift/SIMD3/maxAxis``
/// - ``Swift/SIMD3/subscript(axis:)``
///
/// ### Rounding and Division
///
/// - ``Swift/SIMD3/snapped(step:)-61f59``
/// - ``Swift/SIMD3/snap(step:)-3lnh0``
///
/// ### Comparison
///
/// - ``Swift/SIMD3/<(_:_:)``
/// - ``Swift/SIMD3/<=(_:_:)``
/// - ``Swift/SIMD3/>(_:_:)``
/// - ``Swift/SIMD3/>=(_:_:)``
///
/// ### Extension
///
/// - ``Swift/SIMD3``
public typealias Vector3I = SIMD3<Int32>

extension SIMD3 where Scalar : BinaryInteger {
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
    public static var forward: SIMD3 {
        SIMD3(x: 0, y: 0, z: -1)
    }
    
    /// The back unit vector.
    ///
    /// Represents the local direction of back, and the global direction of south.
    public static var back: SIMD3 {
        SIMD3(x: 0, y: 0, z: 1)
    }
    
    /// A vector with each component set to `1` if it's positive,
    /// `-1` if it's negative, and `0` if it's zero.
    public var signUnitValue: SIMD3 {
        SIMD3(x: x.signUnitValue, y: y.signUnitValue, z: z.signUnitValue)
    }
    
    /// Returns a new vector with each component snapped to
    /// the closest multiple of the corresponding component in a given vector.
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
}

extension SIMD3 where Scalar == Int32 {
    /// The magnitude (length) of the vector.
    public var magnitude: FloatingPointType {
        FloatingPointType(magnitudeSquared).squareRoot()
    }
    
    /// The squared magnitude of the vector.
    ///
    /// This property runs faster than ``magnitude-7e3ew``, so prefer it if you need
    /// to compare vectors or need the squared distance for some formula.
    public var magnitudeSquared: UInt64 {
        (UInt64(x) * UInt64(x)) + (UInt64(y) * UInt64(y) + (UInt64(z) * UInt64(z)))
    }
}

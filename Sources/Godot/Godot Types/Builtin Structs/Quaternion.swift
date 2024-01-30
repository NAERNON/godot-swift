
/// A unit quaternion used for representing 3D rotations.
///
/// Quaternions are similar to ``Basis``, which implements
/// the matrix representation of rotations.
/// Unlike `Basis`, which stores rotation, scale, and shearing,
/// quaternions only store rotation.
///
/// Quaternions can be parametrized using both an axis-angle pair or Euler angles.
/// Due to their compactness and the way they are stored in memory,
/// certain operations (obtaining axis-angle and performing
/// SLERP, in particular) are more efficient and robust against floating-point errors.
///
/// >note: Quaternions need to be normalized before being used for rotation.
///
/// ## Topics
///
/// ### Creating Quaternion
///
/// - ``init(fromArc:toArc:)``
/// - ``init(axis:angle:)-8qm10``
/// - ``init(axis:angle:)-58lc6``
/// - ``init(axis:angle:)-42yum``
/// - ``init(basis:)``
/// - ``init(x:y:z:w:)-7r76g``
/// - ``init(x:y:z:w:)-7o5ql``
/// - ``init(x:y:z:w:)-29aj4``
///
/// - ``fromEuler(_:)``
///
/// ### Special Values
///
/// - ``identity``
/// - ``init()``
///
/// ### Geometric Properties
///
/// - ``x``
/// - ``y``
/// - ``z``
/// - ``w``
/// - ``subscript(_:)``
///
/// - ``isFinite``
/// - ``isNormalized``
/// - ``length``
/// - ``lengthSquared``
/// - ``angle``
/// - ``angle(to:)``
/// - ``axis``
/// - ``euler(order:)``
///
/// ### Transformation
///
/// - ``normalized``
/// - ``inverted``
/// - ``exp``
/// - ``log``
/// - ``dot(_:)``
/// - ``slerp(to:weight:)``
/// - ``slerpni(to:weight:)``
/// - ``sphericalCubicInterpolatation(b:preA:postB:weight:)``
/// - ``sphericalCubicInterpolatationInTime(b:preA:postB:weight:bT:preAT:postBT:)``
public struct Quaternion {
    /// X component of the quaternion (imaginary `i` axis part).
    ///
    /// `Quaternion` components should usually not be manipulated directly.
    public var x: FloatingPointType
    
    /// Y component of the quaternion (imaginary `j` axis part).
    ///
    /// `Quaternion` components should usually not be manipulated directly.
    public var y: FloatingPointType
    
    /// Z component of the quaternion (imaginary `k` axis part).
    ///
    /// `Quaternion` components should usually not be manipulated directly.
    public var z: FloatingPointType
    
    /// W component of the quaternion (real part).
    ///
    /// `Quaternion` components should usually not be manipulated directly.
    public var w: FloatingPointType
    
    /// Creates a quaternion defined by the given values.
    public init(x: FloatingPointType, y: FloatingPointType, z: FloatingPointType, w: FloatingPointType) {
        self.x = x
        self.y = y
        self.z = z
        self.w = w
    }
}

extension Quaternion {
    // MARK: Constructors
    
    /// Creates a quaternion defined by the given values.
    public init<T>(x: T, y: T, z: T, w: T) where T : BinaryFloatingPoint {
        self.init(x: FloatingPointType(x), y: FloatingPointType(y), z: FloatingPointType(z), w: FloatingPointType(w))
    }
    
    /// Creates a quaternion defined by the given values.
    public init<T>(x: T, y: T, z: T, w: T) where T : BinaryInteger {
        self.init(x: FloatingPointType(x), y: FloatingPointType(y), z: FloatingPointType(z), w: FloatingPointType(w))
    }
    
    /// Creates a quaternion from the given `Basis`.
    public init(basis: Basis) {
        self = Self._constructor_basis(from: basis)
    }
    
    /// Creates a quaternion that will rotate around the given axis by the specified angle.
    ///
    /// - Parameters:
    ///   - axis: The axis around which the quaternion will rotate.
    ///   Must be a normalized vector.
    ///   - angle: The rotation angle.
    public init(axis: Vector3, angle: FloatingPointType) {
        self = Self._constructor_vector3_float(axis: axis, angle: angle)
    }
    
    /// Creates a quaternion that will rotate around the given axis by the specified angle.
    ///
    /// - Parameters:
    ///   - axis: The axis around which the quaternion will rotate.
    ///   Must be a normalized vector.
    ///   - angle: The rotation angle.
    public init<T>(axis: Vector3, angle: T) where T : BinaryFloatingPoint {
        self.init(axis: axis, angle: FloatingPointType(angle))
    }
    
    /// Creates a quaternion that will rotate around the given axis by the specified angle.
    ///
    /// - Parameters:
    ///   - axis: The axis around which the quaternion will rotate.
    ///   Must be a normalized vector.
    ///   - angle: The rotation angle.
    public init<T>(axis: Vector3, angle: T) where T : BinaryInteger {
        self.init(axis: axis, angle: FloatingPointType(angle))
    }
    
    /// Creates a quaternion representing the shortest arc between
    /// two points on the surface of a sphere with a radius of 1.0.
    public init(fromArc: Vector3, toArc: Vector3) {
        self = Self._constructor_vector3_vector3(arcFrom: fromArc, arcTo: toArc)
    }
    
    /// Creates a default-initialized quaternion with all components set to 0.
    public init() {
        self.init(x: 0, y: 0, z: 0, w: 0)
    }
    
    // MARK: Constant
    
    /// The identity quaternion, representing no rotation.
    ///
    /// Equivalent to an identity ``Basis`` matrix.
    /// If a vector is transformed by an identity quaternion, it will not change.
    public static var identity: Quaternion {
        Quaternion(x: 0, y: 0, z: 0, w: 1)
    }
    
    // MARK: Operators
    
    /// Returns the negative value of the `Quaternion`.
    ///
    /// This is the same as writing `Quaternion(x: -q.x, y: -q.y, z: -q.z, w: -q.w)`.
    /// 
    /// This operation results in a quaternion that represents the same rotation.
    public static prefix func - (quaternion: Quaternion) -> Quaternion {
        Self._operatorNegate(quaternion)
    }
    
    /// Returns the same value as if the `+` was not there.
    public static prefix func + (quaternion: Quaternion) -> Quaternion {
        Self._operatorPositive(quaternion)
    }
    
    /// Multiplies each component of the `Quaternion` by the given value.
    ///
    /// This operation is not meaningful on its own,
    /// but it can be used as a part of a larger expression.
    public static func * (lhs: Quaternion, rhs: Int) -> Quaternion {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// Multiplies each component of the `Quaternion` by the given value.
    ///
    /// This operation is not meaningful on its own,
    /// but it can be used as a part of a larger expression.
    public static func * (lhs: Int, rhs: Quaternion) -> Quaternion {
        rhs * lhs
    }
    
    /// Multiplies each component of the `Quaternion` by the given value.
    ///
    /// This operation is not meaningful on its own,
    /// but it can be used as a part of a larger expression.
    public static func * (lhs: Quaternion, rhs: FloatingPointType) -> Quaternion {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// Multiplies each component of the `Quaternion` by the given value.
    ///
    /// This operation is not meaningful on its own,
    /// but it can be used as a part of a larger expression.
    public static func * (lhs: FloatingPointType, rhs: Quaternion) -> Quaternion {
        rhs * lhs
    }
    
    /// Divides each component of the `Quaternion` by the given value.
    ///
    /// This operation is not meaningful on its own
    ///  but it can be used as a part of a larger expression.
    public static func / (lhs: Quaternion, rhs: Int) -> Quaternion {
        Self._operatorDivide(lhs, rhs)
    }
    
    /// Divides each component of the `Quaternion` by the given value.
    ///
    /// This operation is not meaningful on its own
    ///  but it can be used as a part of a larger expression.
    public static func / (lhs: Quaternion, rhs: FloatingPointType) -> Quaternion {
        Self._operatorDivide(lhs, rhs)
    }
    
    /// Rotates (multiplies) the `Vector3` by the given `Quaternion`.
    public static func * (lhs: Quaternion, rhs: Vector3) -> Vector3 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// Adds each component of the left `Quaternion` to the right `Quaternion`.
    ///
    /// This operation is not meaningful on its own,
    /// but it can be used as a part of a larger expression, such
    /// as approximating an intermediate rotation between two nearby rotations.
    public static func + (lhs: Quaternion, rhs: Quaternion) -> Quaternion {
        Self._operatorAdd(lhs, rhs)
    }
    
    /// Subtracts each component of the left `Quaternion` to the right `Quaternion`.
    ///
    /// This operation is not meaningful on its own,
    /// but it can be used as a part of a larger expression, such
    /// as approximating an intermediate rotation between two nearby rotations.
    public static func - (lhs: Quaternion, rhs: Quaternion) -> Quaternion {
        Self._operatorSubtract(lhs, rhs)
    }
    
    /// Composes the two quaternions by multiplying them together.
    ///
    /// This has the effect of rotating the second quaternion
    /// (the child) by the first quaternion (the parent).
    public static func * (lhs: Quaternion, rhs: Quaternion) -> Quaternion {
        Self._operatorMultiply(lhs, rhs)
    }
    
    // MARK: Methods & variables
    
    /// The length of the quaternion.
    public var length: FloatingPointType {
        _length()
    }
    
    /// The length of the quaternion, squared.
    public var lengthSquared: FloatingPointType {
        _lengthSquared()
    }
    
    /// The quaternion, normalized to unit length.
    public var normalized: Quaternion {
        _normalized()
    }
    
    /// A Boolean value indicating whether the quaternion is normalized.
    public var isNormalized: Bool {
        _isNormalized()
    }
    
    /// Returns `true` if the `Quaternion` is approximately equal to another one.
    public func isApproximatelyEqual(to other: Quaternion) -> Bool {
        _isEqualApprox(to: other)
    }
    
    /// A Boolean value indicating whether the quaternion is finite.
    public var isFinite: Bool {
        _isFinite()
    }
    
    /// The inverse of the quaternion.
    public var inverted: Quaternion {
        _inverse()
    }
    
    public var log: Quaternion {
        _log()
    }
    
    public var exp: Quaternion {
        _exp()
    }
    
    /// Returns the angle between the quaternion and a given one.
    ///
    /// This is the magnitude of the angle you would
    /// need to rotate by to get from one to the other.
    ///
    /// >important: The magnitude of the floating-point error for this
    /// method is abnormally high, so methods that use approximation
    /// will not work reliably.
    public func angle(to other: Quaternion) -> FloatingPointType {
        _angle(to: other)
    }
    
    /// Returns the dot product of two quaternions.
    public func dot(_ other: Quaternion) -> FloatingPointType {
        _dot(with: other)
    }
    
    /// Returns the result of the spherical linear interpolation
    /// between the quaternion and another one.
    ///
    /// - Parameters:
    ///   - other: Another quaternion to interpolate to.
    ///   - weight: The interpolation amount.
    ///
    /// >note: Both quaternions must be normalized.
    ///
    /// ## See Also
    ///
    /// - ``slerpni(to:weight:)``
    public func slerp(to other: Quaternion, weight: FloatingPointType) -> Quaternion {
        _slerp(to: other, weight: weight)
    }
    
    /// Returns the result of the spherical linear interpolation
    /// between the quaternion and another one.
    ///
    /// - Parameters:
    ///   - other: Another quaternion to interpolate to.
    ///   - weight: The interpolation amount.
    ///
    /// Contrary to ``slerp(to:weight:)``, this method does
    /// not check if the rotation path is not bigger than 90 degrees.
    ///
    /// ## See Also
    ///
    /// - ``slerp(to:weight:)``
    public func slerpni(to other: Quaternion, weight: FloatingPointType) -> Quaternion {
        _slerpni(to: other, weight: weight)
    }
    
    /// Performs a spherical cubic interpolation between quaternions.
    ///
    /// The interpolation is performed between `preA`,
    /// this vector, `b`, and `postB`, by the given amount weight.
    ///
    /// ## See Also
    ///
    /// - ``sphericalCubicInterpolatationInTime(b:preA:postB:weight:bT:preAT:postBT:)``
    public func sphericalCubicInterpolatation(
        b: Quaternion,
        preA: Quaternion,
        postB: Quaternion,
        weight: FloatingPointType
    ) -> Quaternion {
        _sphericalCubicInterpolate(b: b, preA: preA, postB: postB, weight: weight)
    }
    
    /// Performs a spherical cubic interpolation between quaternions.
    ///
    /// The interpolation is performed between `preA`,
    /// this vector, `b`, and `postB`, by the given amount weight.
    ///
    /// It can perform smoother interpolation than
    /// ``sphericalCubicInterpolatation(b:preA:postB:weight:)`` by the time values.
    ///
    /// ## See Also
    ///
    /// - ``sphericalCubicInterpolatation(b:preA:postB:weight:)``
    public func sphericalCubicInterpolatationInTime(
        b: Quaternion,
        preA: Quaternion,
        postB: Quaternion,
        weight: FloatingPointType,
        bT: FloatingPointType,
        preAT: FloatingPointType,
        postBT: FloatingPointType
    ) -> Quaternion {
        _sphericalCubicInterpolateInTime(b: b, preA: preA, postB: postB, weight: weight, bT: bT, preAT: preAT, postBT: postBT)
    }
    
    /// Returns the quaternion's rotation in the form of Euler angles.
    ///
    /// The Euler order depends on the order parameter, for example
    /// using the YXZ convention: since this method decomposes,
    /// first Z, then X, and Y last.
    /// The returned vector contains the rotation angles in the format (X angle, Y angle, Z angle).
    public func euler(order: EulerOrder = .yxz) -> Vector3 {
        _euler(order: Int(order.rawValue))
    }
    
    /// Creates a `Quaternion` from Euler angles in YXZ rotation order.
    public static func fromEuler(_ euler: Vector3) -> Quaternion {
        _fromEuler(euler)
    }
    
    public var axis: Vector3 {
        _axis()
    }
    
    public var angle: FloatingPointType {
        _angle()
    }
    
    /// Accesses quaternion component at the given index.
    ///
    /// Indices are in the following order: `x`, `y`, `z`, `w`.
    public subscript(index: Int) -> FloatingPointType {
        get {
            switch index {
            case 0: x
            case 1: y
            case 2: z
            case 3: w
            default: fatalError("Attempting to retrieve value at index \(index) from quaternion.")
            }
        }
        set(newValue) {
            switch index {
            case 0: x = newValue
            case 1: y = newValue
            case 2: z = newValue
            case 3: w = newValue
            default: fatalError("Attempting to set value at index \(index) from quaternion.")
            }
        }
    }
}

extension Quaternion: Equatable, Hashable {}

extension Quaternion: Codable {
    public func encode(to encoder: Encoder) throws {
        var unkeyedContainer = encoder.unkeyedContainer()
        try unkeyedContainer.encode(x)
        try unkeyedContainer.encode(y)
        try unkeyedContainer.encode(z)
        try unkeyedContainer.encode(w)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        let x = try container.decode(FloatingPointType.self)
        let y = try container.decode(FloatingPointType.self)
        let z = try container.decode(FloatingPointType.self)
        let w = try container.decode(FloatingPointType.self)
        self.init(x: x, y: y, z: z, w: w)
    }
}

extension Quaternion: CustomStringConvertible {
    public var description: String {
        "(x: \(x), y: \(y), z: \(z), w: \(w))"
    }
}

extension Quaternion: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Quaternion(x: \(x), y: \(y), z: \(z), w: \(w))"
    }
}

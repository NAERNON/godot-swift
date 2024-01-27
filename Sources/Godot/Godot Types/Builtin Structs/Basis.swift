
/// A 3×3 matrix for representing 3D rotation and scale.
///
/// This type is usually used as an orthogonal basis for a ``Transform3D``.
///
/// A `Basis` contains 3 vector fields X, Y and Z as its columns,
/// which are typically interpreted as the local basis vectors of a transformation.
/// For such use, it is composed of a scaling and a rotation matrix, in that order `(M = R.S)`.
///
/// These vectors are usually orthogonal to each other,
/// but are not necessarily normalized (due to scaling).
///
/// ## Topics
///
/// ### Creating Basis
///
/// - ``init(x:y:z:)``
/// - ``init(axis:angle:)-5xu7x``
/// - ``init(axis:angle:)-98j0i``
/// - ``init(quaternion:)``
///
/// - ``fromScale(_:)``
/// - ``fromEuler(_:order:)``
/// - ``looking(at:up:useModelFront:)``
///
/// ### Special Values
///
/// - ``identity``
/// - ``init()``
/// - ``flipX``
/// - ``flipY``
/// - ``flipZ``
///
/// ### Geometric Properties
///
/// - ``x``
/// - ``y``
/// - ``z``
/// - ``subscript(_:)``
/// 
/// - ``vector(_:)``
/// - ``determinant``
/// - ``scale``
/// - ``isConformal``
/// - ``isFinite``
/// - ``rotation``
/// - ``euler(order:)``
///
/// ### Transformation
///
/// - ``inverted``
/// - ``orthonormalized``
/// - ``transposed``
/// - ``rotated(by:around:)``
/// - ``scaled(by:)``
/// - ``slerp(to:weight:)``
/// - ``tdotx(_:)``
/// - ``tdoty(_:)``
/// - ``tdotz(_:)``
public struct Basis {
    /// The basis matrix's X vector (column 0).
    public var x: Vector3
    
    /// The basis matrix's Y vector (column 1).
    public var y: Vector3
    
    /// The basis matrix's Z vector (column 2).
    public var z: Vector3
    
    /// Creates a basis matrix from 3 axis vectors (matrix columns).
    public init(x: Vector3, y: Vector3, z: Vector3) {
        self.x = x
        self.y = y
        self.z = z
    }
}

extension Basis {
    // MARK: Constructors
    
    /// Creates a default-initialized `Basis` set to `identity`.
    public init() {
        self = .identity
    }
    
    internal init(
        _ xAxisX: Scalar, _ xAxisY: Scalar, _ xAxisZ: Scalar,
        _ yAxisX: Scalar, _ yAxisY: Scalar, _ yAxisZ: Scalar,
        _ zAxisX: Scalar, _ zAxisY: Scalar, _ zAxisZ: Scalar
    ) {
        self.init(
            x: Vector3(x: xAxisX, y: xAxisY, z: xAxisZ),
            y: Vector3(x: yAxisX, y: yAxisY, z: yAxisZ),
            z: Vector3(x: zAxisX, y: zAxisY, z: zAxisZ)
        )
    }
    
    /// Creates a pure rotation basis matrix from the given quaternion.
    public init(quaternion: Quaternion) {
        self = Self._constructor_quaternion(from: quaternion)
    }
    
    /// Creates a pure rotation basis matrix, rotated around the given axis by angle (in radians).
    ///
    /// The axis must be a normalized vector.
    public init(axis: Vector3, angle: Scalar) {
        self = Self._constructor_vector3_float(axis: axis, angle: angle)
    }
    
    /// Creates a pure rotation basis matrix, rotated around the given axis by angle (in radians).
    ///
    /// The axis must be a normalized vector.
    public init<T>(axis: Vector3, angle: T) where T : BinaryFloatingPoint {
        self.init(axis: axis, angle: Scalar(angle))
    }
    
    // MARK: Constants
    
    /// The identity basis, with no rotation or scaling applied.
    public static let identity: Basis = Basis(1, 0, 0, 0, 1, 0, 0, 0, 1)
    
    /// The basis that will flip something along the X axis when used in a transformation.
    public static let flipX: Basis = Basis(-1, 0, 0, 0, 1, 0, 0, 0, 1)
    
    /// The basis that will flip something along the Y axis when used in a transformation.
    public static let flipY: Basis = Basis(1, 0, 0, 0, -1, 0, 0, 0, 1)
    
    /// The basis that will flip something along the Z axis when used in a transformation.
    public static let flipZ: Basis = Basis(1, 0, 0, 0, 1, 0, 0, 0, -1)
    
    // MARK: Operators
    
    /// Multiplies all components of the Basis, which scales it uniformly.
    public static func * (lhs: Basis, rhs: Int) -> Basis {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// Multiplies all components of the Basis, which scales it uniformly.
    public static func * (lhs: Basis, rhs: Scalar) -> Basis {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// Multiplies all components of the Basis, which scales it uniformly.
    public static func * (lhs: Int, rhs: Basis) -> Basis {
        rhs * lhs
    }
    
    /// Multiplies all components of the Basis, which scales it uniformly.
    public static func * (lhs: Scalar, rhs: Basis) -> Basis {
        rhs * lhs
    }
    
    /// Transforms (multiplies) the Vector3 by the given Basis matrix.
    public static func * (lhs: Basis, rhs: Vector3) -> Vector3 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// Composes two basis matrices by multiplying them together.
    ///
    /// This has the effect of transforming the second basis (the child) by the first basis (the parent).
    public static func * (lhs: Basis, rhs: Basis) -> Basis {
        Self._operatorMultiply(lhs, rhs)
    }
    
    // MARK: Methods & variables
    
    /// The inverse of the matrix.
    public var inverted: Basis {
        _inverse()
    }
    
    /// The transposed version of the matrix.
    public var transposed: Basis {
        _transposed()
    }
    
    /// The orthonormalized version of the matrix.
    ///
    /// This performs a Gram-Schmidt orthonormalization on the basis of the matrix.
    ///
    /// >tip: Use this from time to time to avoid rounding error for orthogonal matrices.
    public var orthonormalized: Basis {
        _orthonormalized()
    }
    
    /// The determinant of the basis matrix.
    ///
    /// If the basis is uniformly scaled, its determinant is the square of the scale.
    ///
    /// A negative determinant means the basis has a negative scale.
    /// A zero determinant means the basis isn't invertible, and is usually considered invalid
    public var determinant: Scalar {
        _determinant()
    }
    
    /// Returns a new basis with an additional rotation around the given axis by angle.
    ///
    /// - Parameters:
    ///   - angle: The rotation angle in radians.
    ///   - axis: A normalized vector.
    public func rotated(by angle: Scalar, around axis: Vector3) -> Basis {
        _rotated(axis: axis, angle: angle)
    }
    
    /// Returns a new basis with an additional scaling specified by the given 3D scaling factor.
    public func scaled(by scale: Vector3) -> Basis {
        _scaled(scale: scale)
    }
    
    /// The absolute value of scaling factors along each axis.
    ///
    /// This property assumes that the matrix is the combination
    /// of a rotation and scaling.
    public var scale: Vector3 {
        _scale()
    }
    
    /// A Boolean value indicating whether the basis is conformal.
    ///
    /// A `Basis` is conformal if it preserves angles and distance ratios,
    /// and may only be composed of rotation and uniform scale.
    ///
    /// This property is `false` if the basis has non-uniform scale or shear/skew.
    /// This can be used to validate if the basis is non-distorted,
    /// which is important for physics and other use cases.
    public var isConformal: Bool {
        _isConformal()
    }
    
    /// Returns the basis's rotation in the form of Euler angles.
    ///
    /// The Euler order depends on the order parameter,
    /// by default it uses the YXZ convention:
    /// when decomposing, first Z, then X, and Y last.
    /// The returned vector contains the rotation angles in the format (X angle, Y angle, Z angle).
    ///
    /// Consider using the ``rotation`` property instead,
    /// which returns a ``Quaternion`` instead of Euler angles.
    public func euler(order: EulerOrder = .yxz) -> Vector3 {
        _euler(order: Int(order.rawValue))
    }
    
    /// Transposed dot product with the X axis of the matrix.
    ///
    /// ## See Also
    ///
    /// - ``tdoty(_:)``
    /// - ``tdotz(_:)``
    public func tdotx(_ vector: Vector3) -> Scalar {
        _tdotx(with: vector)
    }
    
    /// Transposed dot product with the Y axis of the matrix.
    ///
    /// ## See Also
    ///
    /// - ``tdotx(_:)``
    /// - ``tdotz(_:)``
    public func tdoty(_ vector: Vector3) -> Scalar {
        _tdoty(with: vector)
    }
    
    /// Transposed dot product with the Y axis of the matrix.
    ///
    /// ## See Also
    ///
    /// - ``tdotx(_:)``
    /// - ``tdoty(_:)``
    public func tdotz(_ vector: Vector3) -> Scalar {
        _tdotz(with: vector)
    }
    
    /// Performs a spherical-linear interpolation with another rotation matrix.
    ///
    /// This function assumes that the matrix is a proper rotation matrix
    public func slerp(to other: Basis, weight: Scalar) -> Basis {
        _slerp(to: other, weight: weight)
    }
    
    /// Returns `true` if the `Basis` is approximately equal to another one.
    public func isApproximatelyEqual(to other: Basis) -> Bool {
        _isEqualApprox(other)
    }
    
    /// A Boolean value indicating whether the basis is finite.
    public var isFinite: Bool {
        _isFinite()
    }
    
    /// The basis's rotation in the form of a quaternion.
    ///
    /// See ``euler(order:)`` if you need Euler angles,
    /// but keep in mind quaternions should generally be preferred to Euler angles
    public var rotation: Quaternion {
        _rotationQuaternion()
    }
    
    /// Creates a `Basis` with a rotation such that the forward axis (-Z) points towards the target position.
    ///
    /// The up axis (+Y) points as close to the up vector as possible
    /// while staying perpendicular to the forward axis.
    /// The resulting `Basis` is orthonormalized.
    /// 
    /// >note: The `target` and `up` vectors cannot be zero, and cannot be parallel to each other.
    ///
    /// If `useModelFront` is `true`, the +Z axis (asset front)
    /// is treated as forward (implies +X is left)
    /// and points toward the target position.
    /// By default, the -Z axis (camera forward) is treated as forward (implies +X is right).
    public static func looking(
        at target: Vector3,
        up: Vector3 = Vector3(x: 0, y: 1, z: 0),
        useModelFront: Bool = false
    ) -> Basis {
        _lookingAt(target: target, up: up, useModelFront: useModelFront)
    }
    
    /// Creates a pure scale basis matrix with no rotation or shearing.
    ///
    /// The scale values are set as the diagonal of the matrix,
    /// and the other parts of the matrix are zero.
    public static func fromScale(_ scale: Vector3) -> Basis {
        _fromScale(scale)
    }
    
    /// Creates a pure rotation `Basis` matrix from Euler angles in the specified Euler rotation order.
    ///
    /// By default, use YXZ order (most common).
    public static func fromEuler(_ euler: Vector3, order: EulerOrder = .yxz) -> Basis {
        _fromEuler(euler, order: Int(order.rawValue))
    }
    
    /// Returns the matrix vector on the given axis.
    public func vector(_ axis: Axis3D) -> Vector3 {
        switch axis {
        case .x: x
        case .y: y
        case .z: z
        }
    }
    
    /// Accesses the column of the `Basis` at the given index.
    ///
    /// Indices are in the following order: `x`, `y`, `z`.
    public subscript(columnIndex: Int) -> Vector3 {
        get {
            switch columnIndex {
            case 0: x
            case 1: y
            case 2: z
            default: fatalError("Attempting to retrieve column \(columnIndex) from basis.")
            }
        }
        set(newValue) {
            switch columnIndex {
            case 0: x = newValue
            case 1: y = newValue
            case 2: z = newValue
            default: fatalError("Attempting to set column \(columnIndex) from basis.")
            }
        }
    }
}

extension Basis: Equatable, Hashable {}

extension Basis: Codable {
    public func encode(to encoder: Encoder) throws {
        var unkeyedContainer = encoder.unkeyedContainer()
        try unkeyedContainer.encode(x)
        try unkeyedContainer.encode(y)
        try unkeyedContainer.encode(z)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        x = try container.decode(Vector3.self)
        y = try container.decode(Vector3.self)
        z = try container.decode(Vector3.self)
    }
}

extension Basis: CustomStringConvertible {
    public var description: String {
        "(x: \(x), y: \(y), z: \(z))"
    }
}

extension Basis: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Basis(x: \(x), y: \(y), z: \(z))"
    }
}


/// A 3×4 matrix representing a 3D transformation.
///
/// This type is used for 3D linear transformations.
/// 
/// It can represent transformations such as translation, rotation, and scaling.
/// It consists of a basis (first 3 columns) and a ``Vector3``
/// for the origin (last column).
///
/// ## Topics
///
/// ### Creating Transform3D
///
/// - ``init(xAxis:yAxis:zAxis:origin:)``
/// - ``init(projection:)``
/// - ``init(basis:origin:)``
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
/// - ``basis``
/// - ``origin``
///
/// - ``isFinite``
///
/// ### Transformation
///
/// - ``inverted``
/// - ``affineInverted``
/// - ``orthonormalized``
/// - ``interpolation(with:weight:)``
/// - ``looking(at:up:useModelFront:)``
/// - ``rotated(by:around:)``
/// - ``rotatedLocal(by:around:)``
/// - ``scaled(by:)``
/// - ``scaledLocal(by:)``
/// - ``translated(by:)``
/// - ``translatedLocal(by:)``
public struct Transform3D {
    /// A matrix containing 3 ``Vector3`` as its columns: X axis, Y axis, and Z axis.
    /// These vectors can be interpreted as the basis vectors
    /// of local coordinate system traveling with the object.
    public var basis: Basis
    
    /// The translation offset of the transform (column 3, the fourth column).
    public var origin: Vector3
    
    /// Creates a `Transform3D` from a `Basis` and `Vector3`.
    public init(basis: Basis, origin: Vector3) {
        self.basis = basis
        self.origin = origin
    }
}

extension Transform3D {
    // MARK: Constructors
    
    /// Creates a default-initialized `Transform3D` set to `identity`.
    public init() {
        self.init(basis: Basis(), origin: Vector3())
    }
    
    /// Creates a `Transform3D` from four `Vector3` values (matrix columns).
    ///
    /// Each axis corresponds to local basis vectors (some of which may be scaled).
    public init(xAxis: Vector3, yAxis: Vector3, zAxis: Vector3, origin: Vector3) {
        self = Self._constructor_vector3_vector3_vector3_vector3(xAxis: yAxis, yAxis: yAxis, zAxis: zAxis, origin: origin)
    }
    
    /// Creates a `Transform3D` from a `Projection` by trimming
    /// the last row of the projection matrix.
    ///
    /// `projection.x.w`, `projection.y.w`, `projection.z.w`,
    /// and `projection.w.w` are not copied over.
    public init(projection: Projection) {
        self = Self._constructor_projection(from: projection)
    }
    
    internal init(
        _ xAxisX: FloatingPointType, _ xAxisY: FloatingPointType, _ xAxisZ: FloatingPointType,
        _ yAxisX: FloatingPointType, _ yAxisY: FloatingPointType, _ yAxisZ: FloatingPointType,
        _ zAxisX: FloatingPointType, _ zAxisY: FloatingPointType, _ zAxisZ: FloatingPointType,
        _ originX: FloatingPointType, _ originY: FloatingPointType, _ originZ: FloatingPointType
    ) {
        self.init(
            basis: Basis(
                x: Vector3(x: xAxisX, y: xAxisY, z: xAxisZ),
                y: Vector3(x: yAxisX, y: yAxisY, z: yAxisZ),
                z: Vector3(x: zAxisX, y: zAxisY, z: zAxisZ)
            ),
            origin: Vector3(x: originX, y: originY, z: originZ))
    }
    
    // MARK: Constants
    
    /// The identity `Transform3D` with no translation, rotation or scaling applied.
    ///
    /// When applied to other data structures, `identity` performs no transformation.
    public static var identity: Transform3D {
        Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)
    }
    
    /// The `Transform3D` with mirroring applied perpendicular to the YZ plane.
    public static var flipX: Transform3D {
        Transform3D(-1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)
    }
    
    /// The `Transform3D` with mirroring applied perpendicular to the XZ plane.
    public static var flipY: Transform3D {
        Transform3D(1, 0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0)
    }
    
    /// The `Transform3D` with mirroring applied perpendicular to the XY plane.
    public static var flipZ: Transform3D {
        Transform3D(1, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0)
    }
    
    // MARK: Operators
    
    /// This operator multiplies all components of the `Transform3D`,
    /// including the origin vector, which scales it uniformly.
    public static func * (lhs: Transform3D, rhs: Int) -> Transform3D {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// This operator multiplies all components of the `Transform3D`,
    /// including the origin vector, which scales it uniformly.
    public static func * (lhs: Int, rhs: Transform3D) -> Transform3D {
        rhs * lhs
    }
    
    /// This operator multiplies all components of the `Transform3D`,
    /// including the origin vector, which scales it uniformly.
    public static func * (lhs: Transform3D, rhs: FloatingPointType) -> Transform3D {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// This operator multiplies all components of the `Transform3D`,
    /// including the origin vector, which scales it uniformly.
    public static func * (lhs: FloatingPointType, rhs: Transform3D) -> Transform3D {
        rhs * lhs
    }
    
    /// Transforms (multiplies) the `Vector3` by the 3D transformation matrix.
    public static func * (lhs: Transform3D, rhs: Vector3) -> Vector3 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// Transforms (multiplies) the `Plane` by the 3D transformation matrix.
    public static func * (lhs: Transform3D, rhs: Plane) -> Plane {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// Transforms (multiplies) the `AABB` by the 3D transformation matrix.
    public static func * (lhs: Transform3D, rhs: AABB) -> AABB {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// Composes the two transformation matrices by multiplying them together.
    ///
    /// This has the effect of transforming the second transform
    /// (the child) by the first transform (the parent).
    public static func * (lhs: Transform3D, rhs: Transform3D) -> Transform3D {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// Transforms (multiplies) each element of the `PackedVector3Array`
    /// by the 3D transformation matrix.
    public static func * (lhs: Transform3D, rhs: PackedVector3Array) -> PackedVector3Array {
        Self._operatorMultiply(lhs, rhs)
    }
    
    // MARK: Methods & variables
    
    /// The inverse of the transform.
    ///
    /// This property assumes that the transformation basis is
    /// orthonormal (i.e. rotation/reflection is fine, scaling/skew is not).
    /// Use ``affineInverted`` for non-orthonormal transforms (e.g. with scaling).
    public var inverted: Transform3D {
        _inverse()
    }
    
    /// The inverse of the transform.
    ///
    /// This property assumes that the basis is invertible
    /// (must have non-zero determinant).
    public var affineInverted: Transform3D {
        _affineInverse()
    }
    
    /// The transform with the basis orthogonal (90 degrees),
    /// and normalized axis vectors (scale of 1 or -1).
    public var orthonormalized: Transform3D {
        _orthonormalized()
    }
    
    /// Returns the transform rotated by the given angle around the given axis.
    ///
    /// This method is an optimized version of multiplying the
    /// given transform `X` with a corresponding
    /// rotation transform `R` from the left, i.e., `R * X`.
    ///
    /// This can be seen as transforming with respect to the global/parent frame.
    ///
    /// - Parameter angle: The rotation angle, in radians.
    /// - Parameter axis: The vector around which the rotation is performed.
    /// Must be a normalized vector.
    public func rotated(by angle: FloatingPointType, around axis: Vector3) -> Transform3D {
        _rotated(axis: axis, angle: angle)
    }
    
    /// Returns the transform rotated by the given angle around the given axis.
    ///
    /// This method is an optimized version of multiplying the
    /// given transform `X` with a corresponding
    /// rotation transform `R` from the left, i.e., `R * X`.
    ///
    /// This can be seen as transforming with respect to the local frame.
    ///
    /// - Parameter angle: The rotation angle, in radians.
    /// - Parameter axis: The vector around which the rotation is performed.
    /// Must be a normalized vector.
    public func rotatedLocal(by angle: FloatingPointType, around axis: Vector3) -> Transform3D {
        _rotatedLocal(axis: axis, angle: angle)
    }
    
    /// Returns the transform scaled by the given scale factor.
    ///
    /// This method is an optimized version of multiplying the
    /// given transform `X` with a corresponding
    /// scaling transform `S` from the left, i.e., `S * X`.
    ///
    /// This can be seen as transforming with respect to the global/parent frame.
    public func scaled(by scale: Vector3) -> Transform3D {
        _scaled(scale: scale)
    }
    
    /// Returns the transform scaled by the given scale factor.
    ///
    /// This method is an optimized version of multiplying the
    /// given transform `X` with a corresponding
    /// scaling transform `S` from the left, i.e., `S * X`.
    ///
    /// This can be seen as transforming with respect to the local frame.
    public func scaledLocal(by scale: Vector3) -> Transform3D {
        _scaledLocal(scale: scale)
    }
    
    /// Returns the transform translated by the given offset.
    ///
    /// This method is an optimized version of multiplying the
    /// given transform `X` with a corresponding
    /// translation transform `T` from the left, i.e., `T * X`.
    ///
    /// This can be seen as transforming with respect to the global/parent frame.
    public func translated(by offset: Vector3) -> Transform3D {
        _translated(offset: offset)
    }
    
    /// Returns the transform translated by the given offset.
    ///
    /// This method is an optimized version of multiplying the
    /// given transform `X` with a corresponding
    /// translation transform `T` from the left, i.e., `T * X`.
    ///
    /// This can be seen as transforming with respect to the local frame.
    public func translatedLocal(by offset: Vector3) -> Transform3D {
        _translatedLocal(offset: offset)
    }
    
    /// Returns the transform rotated such that the forward
    /// axis (-Z) points towards the target position.
    /// 
    /// The up axis (+Y) points as close to the `up` vector as possible
    /// while staying perpendicular to the forward axis.
    /// The resulting transform is orthonormalized.
    /// The existing rotation, scale, and skew information from the original transform is discarded.
    /// The `target` and `up` vectors cannot be zero, cannot be parallel to each other,
    /// and are defined in global/parent space.
    ///
    /// - Parameters:
    ///   - target: The target position.
    ///   - up: The up vector.
    ///   - useModelFront: A Boolean value indicating whether the +Z axis (asset front)
    ///   is treated as forward (implies +X is left) and points toward the target position.
    ///   By default, the -Z axis (camera forward) is treated as forward (implies +X is right).
    public func looking(
        at target: Vector3,
        up: Vector3 = Vector3(x: 0, y: 1, z: 0),
        useModelFront: Bool = false
    ) -> Transform3D {
        _lookingAt(target: target, up: up, useModelFront: useModelFront)
    }
    
    /// Returns a transform interpolated between the transform
    /// and another by a given weight.
    ///
    /// - Parameters:
    ///   - other: The transform to interpolate with.
    ///   - weight: The interpolation weight, on the range of `0.0` to `1.0`.
    public func interpolation(with other: Transform3D, weight: FloatingPointType) -> Transform3D {
        _interpolateWith(xform: other, weight: weight)
    }
    
    /// Returns `true` if the `Transform3D` is approximately equal to another one.
    public func isApproximatelyEqual(to other: Transform3D) -> Bool {
        _isEqualApprox(xform: other)
    }
    
    /// A Boolean value indicating whether the transform is finite.
    public var isFinite: Bool {
        _isFinite()
    }
}

extension Transform3D: Equatable, Hashable {}

extension Transform3D: Codable {
    public func encode(to encoder: Encoder) throws {
        var unkeyedContainer = encoder.unkeyedContainer()
        try unkeyedContainer.encode(basis.x)
        try unkeyedContainer.encode(basis.y)
        try unkeyedContainer.encode(basis.z)
        try unkeyedContainer.encode(origin)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        let xAxis = try container.decode(Vector3.self)
        let yAxis = try container.decode(Vector3.self)
        let zAxis = try container.decode(Vector3.self)
        let origin = try container.decode(Vector3.self)
        self.init(xAxis: xAxis, yAxis: yAxis, zAxis: zAxis, origin: origin)
    }
}

extension Transform3D: CustomStringConvertible {
    public var description: String {
        "(origin: \(origin), basis: \(basis))"
    }
}

extension Transform3D: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Transform3D(origin: \(origin), basis: \(basis))"
    }
}

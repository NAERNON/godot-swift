
/// A 3×4 matrix representing a 3D transformation.
///
/// This type is used for 3D linear transformations.
/// 
/// It can represent transformations such as translation, rotation, and scaling.
/// It consists of a ``Basis`` (first 3 columns) and a ``Vector3``
/// for the origin (last column).
///
/// ## Topics
///
/// ### Creating Transform3D
///
/// - ``Transform3D/init(x:y:z:origin:)``
/// - ``Transform3D/init(projection:)``
/// - ``Transform3D/init(basis:origin:)``
///
/// ### Special Values
///
/// - ``Transform3D/identity``
/// - ``Transform3D/init()``
/// - ``Transform3D/flipX``
/// - ``Transform3D/flipY``
/// - ``Transform3D/flipZ``
///
/// ### Geometric Properties
///
/// - ``Transform3D/basis``
/// - ``Transform3D/origin``
///
/// - ``Transform3D/isFinite``
///
/// ### Inversion
///
/// - ``Transform3D/inverse()``
/// - ``Transform3D/invert()``
/// - ``Transform3D/affineInverse()``
/// - ``Transform3D/affineInvert()``
///
/// ### Rotation
///
/// - ``Transform3D/rotated(by:around:)``
/// - ``Transform3D/rotate(by:around:)``
/// - ``Transform3D/rotatedLocal(by:around:)``
/// - ``Transform3D/rotateLocal(by:around:)``
///
/// ### Translation
///
/// - ``Transform3D/translated(by:)``
/// - ``Transform3D/translate(by:)``
/// - ``Transform3D/translatedLocal(by:)``
/// - ``Transform3D/translateLocal(by:)``
///
/// ### Scaling
///
/// - ``Transform3D/scaled(by:)``
/// - ``Transform3D/scale(by:)``
/// - ``Transform3D/scaledLocal(by:)``
/// - ``Transform3D/scaleLocal(by:)``
///
/// ### Transformation
///
/// - ``Transform3D/looking(at:up:useModelFront:)``
/// - ``Transform3D/look(at:up:useModelFront:)``
/// - ``Transform3D/orthonormalized()``
/// - ``Transform3D/orthonormalize()``
///
/// ### Interpolation
///
/// - ``Transform3D/interpolation(with:weight:)``
/// - ``Transform3D/interpolate(with:weight:)``
///
/// ### Approximate Equality
///
/// - ``Transform3D/isApproximatelyEqual(to:)``
public struct Transform3D: Equatable, Hashable {
    /// A matrix containing 3 ``Vector3`` as its columns: X axis, Y axis, and Z axis.
    /// These vectors can be interpreted as the basis vectors
    /// of local coordinate system traveling with the object.
    public var basis: Basis
    
    /// The translation offset of the transform (column 3, the fourth column).
    public var origin: Vector3
    
    // MARK: - Initializers
    
    /// Creates a new transform from the given basis and `origin` vector.
    public init(basis: Basis, origin: Vector3) {
        self.basis = basis
        self.origin = origin
    }
    
    /// Creates a default-initialized `Transform3D` set to `identity`.
    public init() {
        self = .identity
    }
    
    /// Creates a new transform from the given vectors (matrix columns).
    ///
    /// Each axis corresponds to local basis vectors (some of which may be scaled).
    public init(
        x: Vector3,
        y: Vector3,
        z: Vector3,
        origin: Vector3
    ) {
        self.origin = origin
        self.basis = .init(x: x, y: y, z: z)
    }
    
    /// Creates a new transform from the given projection by trimming
    /// the last row of the projection matrix.
    ///
    /// >note: `projection.x.w`, `projection.y.w`, `projection.z.w`,
    /// and `projection.w.w` are not copied over.
    public init(projection: Projection) {
        self.basis = .init(
            x: Vector3(
                projection.x.x,
                projection.x.y,
                projection.x.z
            ),
            y: Vector3(
                projection.y.x,
                projection.y.y,
                projection.y.z
            ),
            z: Vector3(
                projection.z.x,
                projection.z.y,
                projection.z.z
            )
        )
        self.origin = .init(
            projection.w.x,
            projection.w.y,
            projection.w.z
        )
    }
    
    internal init(
        _ xx: Scalar, _ xy: Scalar, _ xz: Scalar,
        _ yx: Scalar, _ yy: Scalar, _ yz: Scalar,
        _ zx: Scalar, _ zy: Scalar, _ zz: Scalar,
        _ ox: Scalar, _ oy: Scalar, _ oz: Scalar
    ) {
        self.basis = Basis(xx, xy, xz, yx, yy, yz, zx, zy, zz)
        self.origin = Vector3(ox, oy, oz)
    }
}

// MARK: - Special Values

extension Transform3D {
    /// The identity 3D transform with no translation, rotation or scaling applied.
    ///
    /// When applied to other data structures, `identity` performs no transformation.
    public static var identity: Transform3D {
        Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)
    }
    
    /// The 3D transform with mirroring applied perpendicular to the YZ plane.
    public static var flipX: Transform3D {
        Transform3D(-1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)
    }
    
    /// The 3D transform with mirroring applied perpendicular to the XZ plane.
    public static var flipY: Transform3D {
        Transform3D(1, 0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0)
    }
    
    /// The 3D transform with mirroring applied perpendicular to the XY plane.
    public static var flipZ: Transform3D {
        Transform3D(1, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0)
    }
}

// MARK: - Operators

extension Transform3D {
    /// This operator multiplies all components of the 3D transform.
    ///
    /// This includes the origin vector, which scales uniformly.
    public static func * (lhs: Transform3D, rhs: Scalar) -> Transform3D {
        var copy = lhs
        copy *= rhs
        return copy
    }
    
    /// Updates the 3D transform with the multiplication of all of its components
    /// and a floating-point value.
    ///
    /// This includes the origin vector, which scales uniformly.
    public static func *= (lhs: inout Transform3D, rhs: Scalar) {
        lhs.basis *= rhs
        lhs.origin *= rhs
    }
    
    /// This operator multiplies all components of the 3D transform.
    ///
    /// This includes the origin vector, which scales uniformly.
    public static func * (lhs: Scalar, rhs: Transform3D) -> Transform3D {
        rhs * lhs
    }
    
    /// The opposite of a 3D transform.
    ///
    /// This is the same as multiplying by `-1`.
    /// This includes the origin vector, which scales uniformly.
    public static prefix func - (lhs: Transform3D) -> Transform3D {
        var copy = lhs
        copy.basis = -lhs.basis
        copy.origin = -lhs.origin
        return copy
    }
    
    /// The transformation of a 3D vector by a transformation matrix.
    public static func * (lhs: Transform3D, rhs: Vector3) -> Vector3 {
        Vector3(
            lhs.basis.rows.x.dot(rhs),
            lhs.basis.rows.y.dot(rhs),
            lhs.basis.rows.z.dot(rhs)
        ) + lhs.origin
    }
    
    /// The inverse transformation of a 3D vector by a transformation matrix.
    ///
    /// This operator assumes that the transformation basis is
    /// orthonormal (i.e. rotation/reflection is fine, scaling/skew is not).
    ///
    /// `vector * transform` is equivalent to `transform.inverse() * vector`.
    /// See `Transform3D`'s ``Transform3D/inverse()``.
    ///
    /// For transforming by inverse of an affine transformation (e.g. with scaling)
    /// `transform.affineInverse() * vector` can be used instead.
    /// See `Transform3D`'s ``Transform3D/affineInverse()``.
    public static func * (lhs: Vector3, rhs: Transform3D) -> Vector3 {
        let v = lhs - rhs.origin
        
        return Vector3(
            (rhs.basis.rows[0][0] * v.x) + (rhs.basis.rows[1][0] * v.y) + (rhs.basis.rows[2][0] * v.z),
            (rhs.basis.rows[0][1] * v.x) + (rhs.basis.rows[1][1] * v.y) + (rhs.basis.rows[2][1] * v.z),
            (rhs.basis.rows[0][2] * v.x) + (rhs.basis.rows[1][2] * v.y) + (rhs.basis.rows[2][2] * v.z)
        )
    }
    
    /// Updates the 3D vector with the inverse transformation
    /// of the 3D vector by a transformation matrix.
    ///
    /// This operator assumes that the transformation basis is
    /// orthonormal (i.e. rotation/reflection is fine, scaling/skew is not).
    ///
    /// `vector * transform` is equivalent to `transform.inverse() * vector`.
    /// See `Transform3D`'s ``Transform3D/inverse()``.
    ///
    /// For transforming by inverse of an affine transformation (e.g. with scaling)
    /// `transform.affineInverse() * vector` can be used instead.
    /// See `Transform3D`'s ``Transform3D/affineInverse()``.
    public static func *= (lhs: inout Vector3, rhs: Transform3D) {
        lhs = lhs * rhs
    }
    
    /// The transformation of a plane by a transformation matrix.
    public static func * (lhs: Transform3D, rhs: Plane) -> Plane {
        let b = lhs.basis.inverse().transposed()
        
        // Transform a single point on the plane.
        let point = lhs * (rhs.normal * rhs.d)
        
        // Use inverse transpose for correct normals with non-uniform scaling.
        let normal = (b * rhs.normal).normalized()
        
        let d = normal.dot(point)
        return Plane(normal: normal, d: d)
    }
    
    /// The inverse transformation of a plane by a transformation matrix.
    ///
    /// `plane * transform` is equivalent to `transform.affineInverse() * plane`.
    /// See `Transform3D`'s ``Transform3D/affineInverse()``.
    public static func * (lhs: Plane, rhs: Transform3D) -> Plane {
        let inv = rhs.affineInverse()
        let basisTranspose = rhs.basis.transposed()
        
        // Transform a single point on the plane.
        let point = inv * (lhs.normal * lhs.d)
        
        // Note that instead of precalculating the transpose, an alternative
        // would be to use the transpose for the basis transform.
        // However that would be less SIMD friendly (requiring a swizzle).
        // So the cost is one extra precalced value in the calling code.
        // This is probably worth it, as this could be used in bottleneck areas. And
        // where it is not a bottleneck, the non-fast method is fine.
        
        // Use transpose for correct normals with non-uniform scaling.
        let normal = (basisTranspose * lhs.normal).normalized()
        
        let d = normal.dot(point)
        return Plane(normal: normal, d: d)
    }
    
    /// Updates the plane with the inverse transformation
    /// of the plane by a transformation matrix
    public static func *= (lhs: inout Plane, rhs: Transform3D) {
        lhs = lhs * rhs
    }
    
    /// The inverse transformation of an AABB by a transformation matrix.
    ///
    /// This function assumes that the transformation basis
    /// is orthonormal (i.e. rotation/reflection is fine, scaling/skew is not).
    ///
    /// ```swift
    /// /// The two values are equivalent:
    /// aabb * transform
    /// transform.inverse() * aabb
    /// ```
    /// See `Transform3D`'s ``Transform3D/inverse()``.
    ///
    /// For transforming by inverse of an affine transformation (e.g. with scaling)
    /// `transform.affineInverse() * aabb` can be used instead.
    /// See `Transform3D`'s ``Transform3D/affineInverse()``.
    public static func * (lhs: AABB, rhs: Transform3D) -> AABB {
        /* define vertices */
        let vertices = (
            Vector3(lhs.position.x + lhs.size.x, lhs.position.y + lhs.size.y, lhs.position.z + lhs.size.z),
            Vector3(lhs.position.x + lhs.size.x, lhs.position.y + lhs.size.y, lhs.position.z),
            Vector3(lhs.position.x + lhs.size.x, lhs.position.y, lhs.position.z + lhs.size.z),
            Vector3(lhs.position.x + lhs.size.x, lhs.position.y, lhs.position.z),
            Vector3(lhs.position.x, lhs.position.y + lhs.size.y, lhs.position.z + lhs.size.z),
            Vector3(lhs.position.x, lhs.position.y + lhs.size.y, lhs.position.z),
            Vector3(lhs.position.x, lhs.position.y, lhs.position.z + lhs.size.z),
            Vector3(lhs.position.x, lhs.position.y, lhs.position.z)
        )

        var ret = AABB()

        ret.position = rhs * vertices.0

        ret.expand(to: rhs * vertices.1)
        ret.expand(to: rhs * vertices.2)
        ret.expand(to: rhs * vertices.3)
        ret.expand(to: rhs * vertices.4)
        ret.expand(to: rhs * vertices.5)
        ret.expand(to: rhs * vertices.6)
        ret.expand(to: rhs * vertices.7)

        return ret
    }
    
    /// Updates the AABB with the inverse transformation
    /// of the AABB by a transformation matrix
    public static func *= (lhs: inout AABB, rhs: Transform3D) {
        lhs = lhs * rhs
    }
    
    /// The transformation of an AABB by a transformation matrix.
    public static func * (lhs: Transform3D, rhs: AABB) -> AABB {
        /* https://dev.theomader.com/transform-bounding-boxes/ */
        let min = rhs.position
        let max = rhs.position + rhs.size
        var tmin = Vector3()
        var tmax = Vector3()
        
        for i in 0..<3 {
            tmin[i] = lhs.origin[i]
            tmax[i] = lhs.origin[i]
            for j in 0..<3 {
                let e = lhs.basis.rows[i][j] * min[j]
                let f = lhs.basis.rows[i][j] * max[j]
                if e < f {
                    tmin[i] += e
                    tmax[i] += f
                } else {
                    tmin[i] += f
                    tmax[i] += e
                }
            }
        }
        
        return AABB(position: tmin, size: tmax - tmin)
    }
    
    /// The composition of two transformation matrices.
    ///
    /// This has the effect of transforming the second transform
    /// (the child) by the first transform (the parent).
    public static func * (lhs: Transform3D, rhs: Transform3D) -> Transform3D {
        var copy = lhs
        copy *= rhs
        return copy
    }
    
    /// Updates the left hand side by the composition of two transformation matrices.
    ///
    /// This has the effect of transforming the second transform
    /// (the child) by the first transform (the parent).
    public static func *= (lhs: inout Transform3D, rhs: Transform3D) {
        lhs.origin *= rhs.origin
        lhs.basis *= rhs.basis
    }
    
    // TODO: THIS
    /// Transforms (multiplies) each element of the `PackedVector3Array`
    /// by the 3D transformation matrix.
    //    public static func * (lhs: Transform3D, rhs: PackedVector3Array) -> PackedVector3Array {
    //        Self._operatorMultiply(lhs, rhs)
    //    }
}

// MARK: - Functions and variables

extension Transform3D {
    /// Returns the inverse of this transform.
    ///
    /// This function assumes that the transformation basis is
    /// orthonormal (i.e. rotation/reflection is fine, scaling/skew is not).
    /// Use ``affineInverse()`` for non-orthonormal transforms (e.g. with scaling).
    public func inverse() -> Transform3D {
        var copy = self
        copy.invert()
        return copy
    }
    
    /// Inverts this transform.
    ///
    /// This function assumes that the transformation basis is
    /// orthonormal (i.e. rotation/reflection is fine, scaling/skew is not).
    /// Use ``affineInvert()`` for non-orthonormal transforms (e.g. with scaling).
    mutating public func invert() {
        basis.transpose()
        origin = basis * -origin
    }
    
    /// Returns the inverse of this transform.
    ///
    /// This function assumes that the basis is invertible
    /// (must have non-zero determinant).
    public func affineInverse() -> Transform3D {
        var copy = self
        copy.affineInvert()
        return copy
    }
    
    /// Inverts this transform.
    ///
    /// This function assumes that the basis is invertible
    /// (must have non-zero determinant).
    public mutating func affineInvert() {
        basis.invert()
        origin = basis * -origin
    }
    
    /// Returns the orthonormalized transform.
    ///
    /// This function returns the transform with the basis orthogonal (90 degrees),
    /// and normalized axis vectors (scale of `1` or `-1`).
    public func orthonormalized() -> Transform3D {
        var copy = self
        copy.orthonormalize()
        return copy
    }
    
    /// Orthonormalizes this transform.
    ///
    /// This function modifies the transform with the basis orthogonal (90 degrees),
    /// and normalized axis vectors (scale of `1` or `-1`).
    public mutating func orthonormalize() {
        basis.orthonormalize()
    }
    
    /// Returns this transform rotated by the given angle around the given axis.
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
    public func rotated(by angle: Scalar, around axis: Vector3) -> Transform3D {
        // Equivalent to left multiplication
        let basis = Basis(axis: axis, angle: angle)
        return Transform3D(
            basis: basis * self.basis,
            origin: basis * origin
        )
    }
    
    /// Rotates this transform by the given angle around the given axis.
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
    public mutating func rotate(by angle: Scalar, around axis: Vector3) {
        self = self.rotated(by: angle, around: axis)
    }
    
    /// Returns this transform rotated by the given angle around the given axis.
    ///
    /// This method is an optimized version of multiplying the
    /// given transform `X` with a corresponding
    /// rotation transform `R` from the left, i.e., `X * R`.
    ///
    /// This can be seen as transforming with respect to the local frame.
    ///
    /// - Parameter angle: The rotation angle, in radians.
    /// - Parameter axis: The vector around which the rotation is performed.
    /// Must be a normalized vector.
    public func rotatedLocal(by angle: Scalar, around axis: Vector3) -> Transform3D {
        // Equivalent to right multiplication
        let basis = Basis(axis: axis, angle: angle)
        return Transform3D(
            basis: self.basis * basis,
            origin: origin
        )
    }
    
    /// Rotates this transform by the given angle around the given axis.
    ///
    /// This method is an optimized version of multiplying the
    /// given transform `X` with a corresponding
    /// rotation transform `R` from the left, i.e., `X * R`.
    ///
    /// This can be seen as transforming with respect to the local frame.
    ///
    /// - Parameter angle: The rotation angle, in radians.
    /// - Parameter axis: The vector around which the rotation is performed.
    /// Must be a normalized vector.
    public mutating func rotateLocal(by angle: Scalar, around axis: Vector3) {
        self = self.rotatedLocal(by: angle, around: axis)
    }
    
    /// Returns this transform scaled by the given scale factor.
    ///
    /// This method is an optimized version of multiplying the
    /// given transform `X` with a corresponding
    /// scaling transform `S` from the left, i.e., `S * X`.
    ///
    /// This can be seen as transforming with respect to the global/parent frame.
    public func scaled(by scale: Vector3) -> Transform3D {
        var copy = self
        copy.scale(by: scale)
        return copy
    }
    
    /// Scales this transform by the given scale factor.
    ///
    /// This method is an optimized version of multiplying the
    /// given transform `X` with a corresponding
    /// scaling transform `S` from the left, i.e., `S * X`.
    ///
    /// This can be seen as transforming with respect to the global/parent frame.
    public mutating func scale(by scale: Vector3) {
        basis.scale(by: scale)
        origin *= scale
    }
    
    /// Returns this transform scaled by the given scale factor.
    ///
    /// This method is an optimized version of multiplying the
    /// given transform `X` with a corresponding
    /// scaling transform `S` from the left, i.e., `X * S`.
    ///
    /// This can be seen as transforming with respect to the local frame.
    public func scaledLocal(by scale: Vector3) -> Transform3D {
        // Equivalent to right multiplication
        Transform3D(
            basis: basis.scaledLocal(by: scale),
            origin: origin
        )
    }
    
    /// Scales this transform by the given scale factor.
    ///
    /// This method is an optimized version of multiplying the
    /// given transform `X` with a corresponding
    /// scaling transform `S` from the left, i.e., `X * S`.
    ///
    /// This can be seen as transforming with respect to the local frame.
    public mutating func scaleLocal(by scale: Vector3) {
        self = self.scaledLocal(by: scale)
    }
    
    /// Returns this transform translated by the given offset.
    ///
    /// This method is an optimized version of multiplying the
    /// given transform `X` with a corresponding
    /// translation transform `T` from the left, i.e., `T * X`.
    ///
    /// This can be seen as transforming with respect to the global/parent frame.
    public func translated(by offset: Vector3) -> Transform3D {
        // Equivalent to left multiplication
        Transform3D(basis: basis, origin: origin + offset)
    }
    
    /// Translates this transform by the given offset.
    ///
    /// This method is an optimized version of multiplying the
    /// given transform `X` with a corresponding
    /// translation transform `T` from the left, i.e., `T * X`.
    ///
    /// This can be seen as transforming with respect to the global/parent frame.
    public mutating func translate(by offset: Vector3) {
        self = self.translated(by: offset)
    }
    
    /// Returns this transform translated by the given offset.
    ///
    /// This method is an optimized version of multiplying the
    /// given transform `X` with a corresponding
    /// translation transform `T` from the left, i.e., `X * T`.
    ///
    /// This can be seen as transforming with respect to the local frame.
    public func translatedLocal(by offset: Vector3) -> Transform3D {
        // Equivalent to right multiplication
        Transform3D(basis: basis, origin: origin + basis * offset)
    }
    
    /// Translates this transform by the given offset.
    ///
    /// This method is an optimized version of multiplying the
    /// given transform `X` with a corresponding
    /// translation transform `T` from the left, i.e., `X * T`.
    ///
    /// This can be seen as transforming with respect to the local frame.
    public mutating func translateLocal(by offset: Vector3) {
        self = self.translatedLocal(by: offset)
    }
    
    /// Returns this transform rotated such that the forward
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
#if MATH_CHECKS
        if origin.isApproximatelyEqual(to: target) {
            godotPrintError("The transform's origin and target can't be equal.")
            return Transform3D()
        }
#endif
        
        var t = self
        t.basis = Basis.looking(at: target - origin, up: up, useModelFront: useModelFront)
        return t
    }
    
    /// Rotates this transform such that the forward
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
    public mutating func look(
        at target: Vector3,
        up: Vector3 = Vector3(x: 0, y: 1, z: 0),
        useModelFront: Bool = false
    ) {
        self = self.looking(at: target, up: up, useModelFront: useModelFront)
    }
    
    /// Returns a transform interpolated between this transform
    /// and another one by a given weight.
    ///
    /// - Parameters:
    ///   - other: The transform to interpolate with.
    ///   - weight: The interpolation weight, on the range of `0.0` to `1.0`.
    public func interpolation(with other: Transform3D, weight: Scalar) -> Transform3D {
        var interp = Transform3D()

        let srcScale = basis.scale
        let srcRot = basis.rotation
        let srcLoc = origin

        let dstScale = other.basis.scale
        let dstRot = other.basis.rotation
        let dstLoc = other.origin

        interp.basis._setQuaternionScale(
            quaternion: srcRot.slerp(to: dstRot, weight: weight).normalized(),
            scale: srcScale.lerp(to: dstScale, weight: weight)
        )
        interp.origin = srcLoc.lerp(to: dstLoc, weight: weight)

        return interp
    }
    
    /// Interpolates this transform with another one by a given weight.
    ///
    /// - Parameters:
    ///   - other: The transform to interpolate with.
    ///   - weight: The interpolation weight, on the range of `0.0` to `1.0`.
    public mutating func interpolate(with other: Transform3D, weight: Scalar) {
        self = self.interpolation(with: other, weight: weight)
    }
    
    /// Returns `true` if this transform is approximately equal to another one.
    public func isApproximatelyEqual(to other: Transform3D) -> Bool {
        basis.isApproximatelyEqual(to: other.basis) &&
        origin.isApproximatelyEqual(to: other.origin)
    }
    
    /// A Boolean value indicating whether the transform is finite.
    public var isFinite: Bool {
        basis.isFinite && origin.isFinite
    }
}

// MARK: - Codable

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
        let x = try container.decode(Vector3.self)
        let y = try container.decode(Vector3.self)
        let z = try container.decode(Vector3.self)
        let origin = try container.decode(Vector3.self)
        self.init(x: x, y: y, z: z, origin: origin)
    }
}

// MARK: - CustomStringConvertible

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

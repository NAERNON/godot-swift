
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
/// ### Access Basis Components
///
/// Accessing columns can be performed using either indices or `x`, `y` and `z` properties.
///
/// ```swift
/// var b: Basis = ...
///
/// print(b.y)
/// // Prints the second column.
/// print(b[2])
/// // Prints the third column.
/// b[2][1] = 4
/// // Sets the value at the third column and second row.
/// ```
///
/// >note: This is the opposite of the indices in mathematical texts,
/// meaning: M₁₂ in a math book corresponds to `columns[1][0]` here.
///
/// Accessing rows can also be performed using indices or `x`, `y` and `z` properties.
///
/// ```swift
/// var b: Basis = ...
///
/// print(b.rows.y)
/// // Prints the second row.
/// print(b.rows[2])
/// // Prints the third row.
/// b.rows[2][1] = 4
/// // Sets the value at the third row and second column.
/// ```
///
/// ## Topics
///
/// ### Creating Basis
///
/// - ``Basis/init(x:y:z:)``
/// - ``Basis/init(rowX:rowY:rowZ:)``
/// - ``Basis/init(axis:angle:)``
/// - ``Basis/init(quaternion:)``
///
/// - ``Basis/fromScale(_:)``
/// - ``Basis/fromEuler(_:order:)``
/// - ``Basis/looking(at:up:useModelFront:)``
///
/// ### Special Values
///
/// - ``Basis/identity``
/// - ``Basis/init()``
/// - ``Basis/flipX``
/// - ``Basis/flipY``
/// - ``Basis/flipZ``
///
/// ### Accessing Columns
///
/// - ``Basis/x``
/// - ``Basis/y``
/// - ``Basis/z``
/// - ``Basis/subscript(_:)``
/// - ``Basis/subscript(axis:)``
///
/// ### Accessing Rows
///
/// - ``Basis/rows-swift.property``
/// - ``Basis/Rows-swift.struct``
///
/// ### Geometric Properties
///
/// - ``Basis/determinant``
/// - ``Basis/isConformal``
/// - ``Basis/isFinite``
/// - ``Basis/isDiagonal``
/// - ``Basis/isOrthogonal``
/// - ``Basis/isRotation``
///
/// ### Inversion
///
/// - ``Basis/inverse()``
/// - ``Basis/invert()``
///
/// ### Rotation
///
/// - ``Basis/rotation``
/// - ``Basis/quaternion``
/// - ``Basis/rotated(by:)``
/// - ``Basis/rotate(by:)``
/// - ``Basis/rotated(by:around:)``
/// - ``Basis/rotate(by:around:)``
/// - ``Basis/euler(order:)``
///
/// ### Scaling
///
/// - ``Basis/scale``
/// - ``Basis/scaled(by:)``
/// - ``Basis/scale(by:)``
/// - ``Basis/scaledLocal(by:)``
/// - ``Basis/scaleLocal(by:)``
///
/// ### Transformation
///
/// - ``Basis/orthonormalized()``
/// - ``Basis/orthonormalize()``
/// - ``Basis/transposed()``
/// - ``Basis/transpose()``
/// - ``Basis/tdotx(_:)``
/// - ``Basis/tdoty(_:)``
/// - ``Basis/tdotz(_:)``
///
/// ### Interpolation
///
/// - ``Basis/lerp(to:weight:)``
/// - ``Basis/formLerp(to:weight:)``
/// - ``Basis/slerp(to:weight:)``
/// - ``Basis/formSlerp(to:weight:)``
///
/// ### Approximate Equality
///
/// - ``Basis/isApproximatelyEqual(to:)``
public struct Basis: Equatable, Hashable {
    /// The basis rows.
    public var rows: Rows
    
    // MARK: - Initializers
    
    /// Creates a new basis matrix from 3 rows.
    public init(
        rowX: Vector3,
        rowY: Vector3,
        rowZ: Vector3
    ) {
        self.rows = Rows(
            x: rowX,
            y: rowY,
            z: rowZ
        )
    }
    
    /// Creates a default-initialized `Basis` set to `identity`.
    public init() {
        self = .identity
    }
    
    /// Creates a new basis matrix from 3 axis vectors (matrix columns).
    public init(x: Vector3, y: Vector3, z: Vector3) {
        self.rows = Rows(
            x: Vector3(x.x, y.x, z.x),
            y: Vector3(x.y, y.y, z.y),
            z: Vector3(x.z, y.z, z.z)
        )
    }
    
    internal init(
        _ xx: FloatingPointType, _ xy: FloatingPointType, _ xz: FloatingPointType,
        _ yx: FloatingPointType, _ yy: FloatingPointType, _ yz: FloatingPointType,
        _ zx: FloatingPointType, _ zy: FloatingPointType, _ zz: FloatingPointType
    ) {
        self.rows = Rows(
            x: Vector3(xx, xy, xz),
            y: Vector3(yx, yy, yz),
            z: Vector3(zx, zy, zz)
        )
    }
    
    /// Creates a pure rotation basis matrix from the given quaternion.
    public init(quaternion: Quaternion) {
        let d = quaternion.magnitudeSquared
        let s: FloatingPointType = 2 / d
        let xs = quaternion.x * s
        let ys = quaternion.y * s
        let zs = quaternion.z * s
        let wx = quaternion.w * xs
        let wy = quaternion.w * ys
        let wz = quaternion.w * zs
        let xx = quaternion.x * xs
        let xy = quaternion.x * ys
        let xz = quaternion.x * zs
        let yy = quaternion.y * ys
        let yz = quaternion.y * zs
        let zz = quaternion.z * zs
        
        self.init(
            1 - (yy + zz),
            xy - wz,
            xz + wy,
            xy + wz,
            1 - (xx + zz),
            yz - wx,
            xz - wy,
            yz + wx,
            1 - (xx + yy)
        )
    }
    
    /// Creates a pure rotation basis matrix, rotated around the given axis by the given angle.
    ///
    /// - Parameters:
    ///   - axis: A normalized vector.
    ///   - angle: The rotation angle in radians.
    public init(axis: Vector3, angle: FloatingPointType) {
        // Rotation matrix from axis and angle, see https://en.wikipedia.org/wiki/Rotation_matrix#Rotation_matrix_from_axis_angle
#if MATH_CHECKS
        if !axis.isNormalized {
            godotPrintError("The axis Vector3 must be normalized.")
            return
        }
#endif
        let axisSq = axis * axis
        let cosine = FloatingPointType.cos(angle)
        
        var m = Basis()
        m.rows.x.x = axisSq.x + cosine * (1 - axisSq.x)
        m.rows.y.y = axisSq.y + cosine * (1 - axisSq.y)
        m.rows.z.z = axisSq.z + cosine * (1 - axisSq.z)
        
        let sine = FloatingPointType.sin(angle)
        let t = 1 - cosine
        
        var xyzt = axis.x * axis.y * t
        var zyxs = axis.z * sine
        m.rows.x.y = xyzt - zyxs
        m.rows.y.x = xyzt + zyxs
        
        xyzt = axis.x * axis.z * t
        zyxs = axis.y * sine
        m.rows.x.z = xyzt + zyxs
        m.rows.z.x = xyzt - zyxs
        
        xyzt = axis.y * axis.z * t
        zyxs = axis.x * sine
        m.rows.y.z = xyzt - zyxs
        m.rows.z.y = xyzt + zyxs
        
        self = m
    }
}

// MARK: - Properties

extension Basis {
    /// The basis matrix's X vector (column 0).
    public var x: Vector3 {
        get {
            Vector3(
                rows[0].x,
                rows[1].x,
                rows[2].x
            )
        }
        set(newValue) {
            rows[0].x = newValue.x
            rows[1].x = newValue.y
            rows[2].x = newValue.z
        }
    }
    
    /// The basis matrix's Y vector (column 1).
    public var y: Vector3 {
        get {
            Vector3(
                rows[0].y,
                rows[1].y,
                rows[2].y
            )
        }
        set(newValue) {
            rows[0].y = newValue.x
            rows[1].y = newValue.y
            rows[2].y = newValue.z
        }
    }
    
    /// The basis matrix's Z vector (column 2).
    public var z: Vector3 {
        get {
            Vector3(
                rows[0].z,
                rows[1].z,
                rows[2].z
            )
        }
        set(newValue) {
            rows[0].z = newValue.x
            rows[1].z = newValue.y
            rows[2].z = newValue.z
        }
    }
}

// MARK: - Special Values

extension Basis {
    /// The identity basis, with no rotation or scaling applied.
    public static var identity: Basis {
        Basis(1, 0, 0, 0, 1, 0, 0, 0, 1)
    }
    
    /// The basis that will flip something along the X axis when used in a transformation.
    public static var flipX: Basis {
        Basis(-1, 0, 0, 0, 1, 0, 0, 0, 1)
    }
    
    /// The basis that will flip something along the Y axis when used in a transformation.
    public static var flipY: Basis {
        Basis(1, 0, 0, 0, -1, 0, 0, 0, 1)
    }
    
    /// The basis that will flip something along the Z axis when used in a transformation.
    public static var flipZ: Basis {
        Basis(1, 0, 0, 0, 1, 0, 0, 0, -1)
    }
}

// MARK: - Operators

extension Basis {
    /// The multiplication of all components of a basis and a floating-point value.
    ///
    /// The basis scales uniformly.
    public static func * (lhs: Basis, rhs: FloatingPointType) -> Basis {
        var copy = lhs
        copy *= rhs
        return copy
    }
    
    /// Updates the basis with the multiplication of all components of a
    /// basis and a floating-point value.
    ///
    /// The basis scales uniformly.
    public static func *= (lhs: inout Basis, rhs: FloatingPointType) {
        lhs.rows.x *= rhs
        lhs.rows.y *= rhs
        lhs.rows.z *= rhs
    }
    
    /// The multiplication of all components of a basis and a floating-point value.
    ///
    /// The basis scales uniformly.
    public static func * (lhs: FloatingPointType, rhs: Basis) -> Basis {
        rhs * lhs
    }
    
    /// The opposite of a basis.
    ///
    /// This is the same as multiplying by `-1`.
    public static prefix func - (lhs: Basis) -> Basis {
        var copy = lhs
        copy.rows.x = -copy.rows.x
        copy.rows.y = -copy.rows.y
        copy.rows.z = -copy.rows.z
        return copy
    }
    
    /// The transformation of a 3D vector by a basis matrix.
    public static func * (lhs: Basis, rhs: Vector3) -> Vector3 {
        Vector3(
            lhs.rows.x.dot(rhs),
            lhs.rows.y.dot(rhs),
            lhs.rows.z.dot(rhs)
        )
    }
    
    /// The inverse transformation of a 2D vector by a basis matrix.
    ///
    /// This operator assumes that the basis is orthonormal
    /// (i.e. rotation/reflection is fine, scaling/skew is not).
    ///
    /// `vector * basis` is equivalent to `basis.transposed() * vector`.
    /// See `Basis`'s ``Basis/transposed()``.
    ///
    /// For transforming by inverse of a non-orthonormal basis (e.g. with scaling)
    /// `basis.inverse() * vector` can be used instead.
    /// See `Basis`"s ``Basis/inverse()``.
    public static func * (lhs: Vector3, rhs: Basis) -> Vector3 {
        Vector3(
            (rhs.rows[0][0] * lhs.x) + (rhs.rows[1][0] * lhs.y) + (rhs.rows[2][0] * lhs.z),
            (rhs.rows[0][1] * lhs.x) + (rhs.rows[1][1] * lhs.y) + (rhs.rows[2][1] * lhs.z),
            (rhs.rows[0][2] * lhs.x) + (rhs.rows[1][2] * lhs.y) + (rhs.rows[2][2] * lhs.z)
        )
    }
    
    /// The composition of two basis matrices.
    ///
    /// This has the effect of transforming the second basis (the child) by the first basis (the parent).
    public static func * (lhs: Basis, rhs: Basis) -> Basis {
        Basis(
            rhs.tdotx(lhs.rows[0]),
            rhs.tdoty(lhs.rows[0]),
            rhs.tdotz(lhs.rows[0]),
            
            rhs.tdotx(lhs.rows[1]),
            rhs.tdoty(lhs.rows[1]),
            rhs.tdotz(lhs.rows[1]),
            
            rhs.tdotx(lhs.rows[2]),
            rhs.tdoty(lhs.rows[2]),
            rhs.tdotz(lhs.rows[2])
        )
    }
    
    /// Updates the basis with the composition of the two basis matrices.
    ///
    /// This has the effect of transforming the second basis (the child) by this basis (the parent).
    public static func *= (lhs: inout Basis, rhs: Basis) {
        lhs = lhs * rhs
    }
}
 
// MARK: - Functions and variables

extension Basis {
    @inline(__always)
    private func cofac(
        _ row1: Int,
        _ col1: Int,
        _ row2: Int,
        _ col2: Int
    ) -> FloatingPointType {
        rows[row1][col1] * rows[row2][col2] - rows[row1][col2] * rows[row2][col1]
    }
    
    /// Returns the inverse of this matrix.
    public func inverse() -> Basis {
        let co = Vector3(
            cofac(1, 1, 2, 2), cofac(1, 2, 2, 0), cofac(1, 0, 2, 1)
        )
        let det = rows[0][0] * co[0] +
        rows[0][1] * co[1] +
        rows[0][2] * co[2]
#if MATH_CHECKS
        if det == 0 {
            godotPrintError("Determinant cannot be 0.")
            return
        }
#endif
        let s = 1 / det
        
        return Basis(
            co[0] * s, cofac(0, 2, 2, 1) * s, cofac(0, 1, 1, 2) * s,
            co[1] * s, cofac(0, 0, 2, 2) * s, cofac(0, 2, 1, 0) * s,
            co[2] * s, cofac(0, 1, 2, 0) * s, cofac(0, 0, 1, 1) * s
        )
    }
    
    /// Inverses this matrix.
    public mutating func invert() {
        self = inverse()
    }
    
    /// Returns the transposed version of this matrix.
    public func transposed() -> Basis {
        var copy = self
        copy.transpose()
        return copy
    }
    
    /// Transposes this matrix.
    public mutating func transpose() {
        rows.transpose()
    }
    
    /// Returns the orthonormalized version of this matrix.
    ///
    /// This performs a Gram-Schmidt orthonormalization on the basis of the matrix.
    ///
    /// >tip: Use this from time to time to avoid rounding error for orthogonal matrices.
    public func orthonormalized() -> Basis {
        var copy = self
        copy.orthonormalize()
        return copy
    }
    
    /// Orthonormalizes this matrix.
    ///
    /// This performs a Gram-Schmidt orthonormalization on the basis of the matrix.
    ///
    /// >tip: Use this from time to time to avoid rounding error for orthogonal matrices.
    public mutating func orthonormalize() {
        var x = self.x
        var y = self.y
        var z = self.z

        x.normalize()
        y = (y - x * (x.dot(y)))
        y.normalize()
        z = (z - x * (x.dot(z)) - y * (y.dot(z)))
        z.normalize()

        self.x = x
        self.y = y
        self.z = z
    }
    
    /// The determinant of this basis matrix.
    ///
    /// If the basis is uniformly scaled, its determinant is the square of the scale.
    ///
    /// A negative determinant means the basis has a negative scale.
    /// A zero determinant means the basis isn't invertible, and is usually considered invalid
    public var determinant: FloatingPointType {
        rows[0][0] * (rows[1][1] * rows[2][2] - rows[2][1] * rows[1][2]) -
        rows[1][0] * (rows[0][1] * rows[2][2] - rows[2][1] * rows[0][2]) +
        rows[2][0] * (rows[0][1] * rows[1][2] - rows[1][1] * rows[0][2])
    }
    
    /// Returns a new basis with an additional rotation around the given axis by a given angle.
    ///
    /// - Parameters:
    ///   - angle: The rotation angle in radians.
    ///   - axis: A normalized vector.
    public func rotated(by angle: FloatingPointType, around axis: Vector3) -> Basis {
        Basis(axis: axis, angle: angle) * self
    }
    
    /// Rotates this basis around the given axis by a given angle.
    ///
    /// - Parameters:
    ///   - angle: The rotation angle in radians.
    ///   - axis: A normalized vector.
    public mutating func rotate(by angle: FloatingPointType, around axis: Vector3) {
        self = rotated(by: angle, around: axis)
    }
    
    /// Returns a new basis with an additional rotation by the given quaternion.
    public func rotated(by quaternion: Quaternion) -> Basis {
        Basis(quaternion: quaternion) * self
    }
    
    /// Rotates this basis with an additional rotation by the given quaternion.
    public mutating func rotate(by quaternion: Quaternion) {
        self = self.rotated(by: quaternion)
    }
    
    /// Returns a new basis with an additional scaling specified by the given 3D scaling factor.
    public func scaled(by scale: Vector3) -> Basis {
        var copy = self
        copy.scale(by: scale)
        return copy
    }
    
    /// Scales this basis by the given 3D scaling factor.
    public mutating func scale(by scale: Vector3) {
        rows[0][0] *= scale.x
        rows[0][1] *= scale.x
        rows[0][2] *= scale.x
        rows[1][0] *= scale.y
        rows[1][1] *= scale.y
        rows[1][2] *= scale.y
        rows[2][0] *= scale.z
        rows[2][1] *= scale.z
        rows[2][2] *= scale.z
    }
    
    /// Returns a new basis with an additional scaling specified by the given 3D scaling factor.
    ///
    /// The scaling is performed in object-local coordinate system:
    /// `M -> (M.S.Minv).M = M.S`.
    public func scaledLocal(by scale: Vector3) -> Basis {
        self * Basis.fromScale(scale)
    }
    
    /// Scales this basis by the given 3D scaling factor.
    ///
    /// The scaling is performed in object-local coordinate system:
    /// `M -> (M.S.Minv).M = M.S`.
    public mutating func scaleLocal(by scale: Vector3) {
        self = self.scaledLocal(by: scale)
    }
    
    private var _scaleAbs: Vector3 {
        Vector3(
            x.magnitude,
            y.magnitude,
            z.magnitude
        )
    }
    
    /// The absolute value of scaling factors along each axis.
    ///
    /// This property assumes that the matrix is the combination
    /// of a rotation and scaling.
    public var scale: Vector3 {
        // FIXME: We are assuming M = R.S (R is rotation and S is scaling), and use polar decomposition to extract R and S.
        // A polar decomposition is M = O.P, where O is an orthogonal matrix (meaning rotation and reflection) and
        // P is a positive semi-definite matrix (meaning it contains absolute values of scaling along its diagonal).
        //
        // Despite being different from what we want to achieve, we can nevertheless make use of polar decomposition
        // here as follows. We can split O into a rotation and a reflection as O = R.Q, and obtain M = R.S where
        // we defined S = Q.P. Now, R is a proper rotation matrix and S is a (signed) scaling matrix,
        // which can involve negative scalings. However, there is a catch: unlike the polar decomposition of M = O.P,
        // the decomposition of O into a rotation and reflection matrix as O = R.Q is not unique.
        // Therefore, we are going to do this decomposition by sticking to a particular convention.
        // This may lead to confusion for some users though.
        //
        // The convention we use here is to absorb the sign flip into the scaling matrix.
        // The same convention is also used in other similar functions such as get_rotation_axis_angle, get_rotation, ...
        //
        // A proper way to get rid of this issue would be to store the scaling values (or at least their signs)
        // as a part of Basis. However, if we go that path, we need to disable direct (write) access to the
        // matrix elements.
        //
        // The rotation part of this decomposition is returned by get_rotation* functions.
        let detSign = determinant._sign
        return detSign * _scaleAbs
    }
    
    /// A Boolean value indicating whether this basis is conformal.
    ///
    /// A basis is conformal if it preserves angles and distance ratios,
    /// and may only be composed of rotation and uniform scale.
    ///
    /// This property is `false` if the basis has non-uniform scale or shear/skew.
    /// This can be used to validate if the basis is non-distorted,
    /// which is important for physics and other use cases.
    public var isConformal: Bool {
        let x = self.x
        let y = self.y
        let z = self.z
        let x_len_sq = x.magnitudeSquared
        
        return x_len_sq.isApproximatelyEqual(to: y.magnitudeSquared) &&
        x_len_sq.isApproximatelyEqual(to: z.magnitudeSquared) &&
        x.dot(y).isApproximatelyZero &&
        x.dot(z).isApproximatelyZero &&
        y.dot(z).isApproximatelyZero
    }
    
    /// Returns this basis's rotation in the form of Euler angles.
    ///
    /// The Euler order depends on the order parameter,
    /// by default it uses the YXZ convention:
    /// when decomposing, first Z, then X, and Y last.
    /// The returned vector contains the rotation angles in the format (X angle, Y angle, Z angle).
    ///
    /// Consider using the ``rotation`` property instead,
    /// which returns a ``Quaternion`` instead of Euler angles.
    public func euler(order: EulerOrder = .yxz) -> Vector3 {
        switch order {
        case .xyz:
            // Euler angles in XYZ convention.
            // See https://en.wikipedia.org/wiki/Euler_angles#Rotation_matrix
            //
            // rot =  cy*cz          -cy*sz           sy
            //        cz*sx*sy+cx*sz  cx*cz-sx*sy*sz -cy*sx
            //       -cx*cz*sy+sx*sz  cz*sx+cx*sy*sz  cx*cy
            
            var euler = Vector3()
            let sy = rows[0][2]
            if sy < (1 - FloatingPointType.cmpEpsilon) {
                if sy > -(1 - FloatingPointType.cmpEpsilon) {
                    // is this a pure Y rotation?
                    if (rows[1][0] == 0 && rows[0][1] == 0 && rows[1][2] == 0 && rows[2][1] == 0 && rows[1][1] == 1) {
                        // return the simplest form (human friendlier in editor and scripts)
                        euler.x = 0;
                        euler.y = atan2(y: rows[0][2], x: rows[0][0])
                        euler.z = 0;
                    } else {
                        euler.x = atan2(y: -rows[1][2], x: rows[2][2])
                        euler.y = asin(sy);
                        euler.z = atan2(y: -rows[0][1], x: rows[0][0])
                    }
                } else {
                    euler.x = atan2(y: rows[2][1], x: rows[1][1])
                    euler.y = -FloatingPointType.pi / 2
                    euler.z = 0
                }
            } else {
                euler.x = atan2(y: rows[2][1], x: rows[1][1])
                euler.y = FloatingPointType.pi / 2
                euler.z = 0
            }
            return euler
        case .xzy:
            // Euler angles in XZY convention.
            // See https://en.wikipedia.org/wiki/Euler_angles#Rotation_matrix
            //
            // rot =  cz*cy             -sz             cz*sy
            //        sx*sy+cx*cy*sz    cx*cz           cx*sz*sy-cy*sx
            //        cy*sx*sz          cz*sx           cx*cy+sx*sz*sy
            
            var euler = Vector3()
            let sz = rows[0][1]
            if sz < (1 - FloatingPointType.cmpEpsilon) {
                if sz > -(1 - FloatingPointType.cmpEpsilon) {
                    euler.x = atan2(y: rows[2][1], x: rows[1][1])
                    euler.y = atan2(y: rows[0][2], x: rows[0][0])
                    euler.z = asin(-sz)
                } else {
                    // It's -1
                    euler.x = -atan2(y: rows[1][2], x: rows[2][2])
                    euler.y = 0
                    euler.z = FloatingPointType.pi / 2
                }
            } else {
                // It's 1
                euler.x = -atan2(y: rows[1][2], x: rows[2][2])
                euler.y = 0
                euler.z = -FloatingPointType.pi / 2
            }
            return euler
        case .yxz:
            // Euler angles in YXZ convention.
            // See https://en.wikipedia.org/wiki/Euler_angles#Rotation_matrix
            //
            // rot =  cy*cz+sy*sx*sz    cz*sy*sx-cy*sz        cx*sy
            //        cx*sz             cx*cz                 -sx
            //        cy*sx*sz-cz*sy    cy*cz*sx+sy*sz        cy*cx
            
            var euler = Vector3()
            let m12 = rows[1][2]
    
            if m12 < 1 - (FloatingPointType.cmpEpsilon) {
                if m12 > -(1 - FloatingPointType.cmpEpsilon) {
                    // is this a pure X rotation?
                    if (rows[1][0] == 0 && rows[0][1] == 0 && rows[0][2] == 0 && rows[2][0] == 0 && rows[0][0] == 1) {
                        // return the simplest form (human friendlier in editor and scripts)
                        euler.x = atan2(y: -m12, x: rows[1][1])
                        euler.y = 0
                        euler.z = 0
                    } else {
                        euler.x = asin(-m12)
                        euler.y = atan2(y: rows[0][2], x: rows[2][2])
                        euler.z = atan2(y: rows[1][0], x: rows[1][1])
                    }
                } else { // m12 == -1
                    euler.x = FloatingPointType.pi * 0.5
                    euler.y = atan2(y: rows[0][1], x: rows[0][0])
                    euler.z = 0
                }
            } else { // m12 == 1
                euler.x = -FloatingPointType.pi * 0.5
                euler.y = -atan2(y: rows[0][1], x: rows[0][0])
                euler.z = 0
            }
            
            return euler
        case .yzx:
            // Euler angles in YZX convention.
            // See https://en.wikipedia.org/wiki/Euler_angles#Rotation_matrix
            //
            // rot =  cy*cz             sy*sx-cy*cx*sz     cx*sy+cy*sz*sx
            //        sz                cz*cx              -cz*sx
            //        -cz*sy            cy*sx+cx*sy*sz     cy*cx-sy*sz*sx
            
            var euler = Vector3()
            let sz = rows[1][0]
            if sz < (1 - FloatingPointType.cmpEpsilon) {
                if sz > -(1 - FloatingPointType.cmpEpsilon) {
                    euler.x = atan2(y: -rows[1][2], x: rows[1][1])
                    euler.y = atan2(y: -rows[2][0], x: rows[0][0])
                    euler.z = asin(sz)
                } else {
                    // It's -1
                    euler.x = atan2(y: rows[2][1], x: rows[2][2])
                    euler.y = 0
                    euler.z = -FloatingPointType.pi / 2
                }
            } else {
                // It's 1
                euler.x = atan2(y: rows[2][1], x: rows[2][2])
                euler.y = 0
                euler.z = FloatingPointType.pi / 2
            }
            return euler;
        case .zxy:
            // Euler angles in ZXY convention.
            // See https://en.wikipedia.org/wiki/Euler_angles#Rotation_matrix
            //
            // rot =  cz*cy-sz*sx*sy    -cx*sz                cz*sy+cy*sz*sx
            //        cy*sz+cz*sx*sy    cz*cx                 sz*sy-cz*cy*sx
            //        -cx*sy            sx                    cx*cy
            var euler = Vector3()
            let sx = rows[2][1]
            if sx < (1 - FloatingPointType.cmpEpsilon) {
                if sx > -(1 - FloatingPointType.cmpEpsilon) {
                    euler.x = asin(sx)
                    euler.y = atan2(y: -rows[2][0], x: rows[2][2])
                    euler.z = atan2(y: -rows[0][1], x: rows[1][1])
                } else {
                    // It's -1
                    euler.x = -FloatingPointType.pi / 2
                    euler.y = atan2(y: rows[0][2], x: rows[0][0])
                    euler.z = 0
                }
            } else {
                // It's 1
                euler.x = FloatingPointType.pi / 2
                euler.y = atan2(y: rows[0][2], x: rows[0][0])
                euler.z = 0
            }
            return euler
        case .zyx:
            // Euler angles in ZYX convention.
            // See https://en.wikipedia.org/wiki/Euler_angles#Rotation_matrix
            //
            // rot =  cz*cy             cz*sy*sx-cx*sz        sz*sx+cz*cx*cy
            //        cy*sz             cz*cx+sz*sy*sx        cx*sz*sy-cz*sx
            //        -sy               cy*sx                 cy*cx
            var euler = Vector3()
            let sy = rows[2][0]
            if sy < (1 - FloatingPointType.cmpEpsilon) {
                if sy > -(1 - FloatingPointType.cmpEpsilon) {
                    euler.x = atan2(y: rows[2][1], x: rows[2][2])
                    euler.y = asin(-sy)
                    euler.z = atan2(y: rows[1][0], x: rows[0][0])
                } else {
                    // It's -1
                    euler.x = 0
                    euler.y = FloatingPointType.pi / 2
                    euler.z = -atan2(y: rows[0][1], x: rows[1][1])
                }
            } else {
                // It's 1
                euler.x = 0
                euler.y = -FloatingPointType.pi / 2
                euler.z = -atan2(y: rows[0][1], x: rows[1][1])
            }
            return euler
        }
    }
    
    /// Returns the transposed dot product with the X axis of this matrix.
    public func tdotx(_ vector: Vector3) -> FloatingPointType {
        rows[0][0] * vector[0] + rows[1][0] * vector[1] + rows[2][0] * vector[2]
    }
    
    /// Returns the transposed dot product with the Y axis of this matrix.
    public func tdoty(_ vector: Vector3) -> FloatingPointType {
        rows[0][1] * vector[0] + rows[1][1] * vector[1] + rows[2][1] * vector[2]
    }
    
    /// Returns the transposed dot product with the Y axis of this matrix.
    public func tdotz(_ vector: Vector3) -> FloatingPointType {
        rows[0][2] * vector[0] + rows[1][2] * vector[1] + rows[2][2] * vector[2]
    }
    
    /// Returns the result of the linear interpolation between this basis
    /// and another one by a given amount.
    public func lerp(to other: Basis, weight: FloatingPointType) -> Basis {
        Basis(
            rowX: rows[0].lerp(to: other.rows[0], weight: weight),
            rowY: rows[1].lerp(to: other.rows[1], weight: weight),
            rowZ: rows[2].lerp(to: other.rows[2], weight: weight)
        )
    }
    
    /// Replaces this basis with the result of the linear interpolation between this basis
    /// and another one by a given amount.
    public mutating func formLerp(to other: Basis, weight: FloatingPointType) {
        self = lerp(to: other, weight: weight)
    }
    
    /// Returns the result of the spherical-linear interpolation with another rotation matrix.
    ///
    /// This function assumes that the two matrices are proper rotation matrices.
    public func slerp(to other: Basis, weight: FloatingPointType) -> Basis {
        //consider scale
        let from = Quaternion(basis: self)
        let to = Quaternion(basis: other)
        
        var b = Basis(quaternion: from.slerp(to: to, weight: weight))
        b.rows[0] *= rows[0].magnitude.lerp(to: other.rows[0].magnitude, weight: weight)
        b.rows[1] *= rows[1].magnitude.lerp(to: other.rows[1].magnitude, weight: weight)
        b.rows[2] *= rows[2].magnitude.lerp(to: other.rows[2].magnitude, weight: weight)

        return b
    }
    
    /// Replaces this basis with the result of the
    /// spherical-linear interpolation with another rotation matrix.
    ///
    /// This function assumes that the two matrices are proper rotation matrices.
    public mutating func formSlerp(to other: Basis, weight: FloatingPointType) {
        self = slerp(to: other, weight: weight)
    }
    
    /// Returns `true` if this basis is approximately equal to another one.
    public func isApproximatelyEqual(to other: Basis) -> Bool {
        rows[0].isApproximatelyEqual(to: other.rows[0]) &&
        rows[1].isApproximatelyEqual(to: other.rows[1]) &&
        rows[2].isApproximatelyEqual(to: other.rows[2])
    }
    
    /// A Boolean value indicating whether the basis is finite.
    public var isFinite: Bool {
        rows[0].isFinite &&
        rows[1].isFinite &&
        rows[2].isFinite
    }
    
    /// The basis's rotation in the form of a quaternion,
    /// without pre-transformations applied to the matrix.
    ///
    /// This property assumes the basis is a rotation matrix.
    ///
    /// >note: To automatically orthonormalize the basis
    /// and apply an appropriately scale to it, use ``rotation`` instead.
    public var quaternion: Quaternion {
#if MATH_CHECKS
        if !isRotation {
            godotPrintError("Basis must be normalized in order to be casted to a Quaternion. Use rotation or call orthonormalize() if the Basis contains linearly independent vectors.")
            return Quaternion()
        }
#endif
        /* Allow getting a quaternion from an unnormalized transform */
        let trace = self.rows[0][0] + self.rows[1][1] + self.rows[2][2]
        var temp = SIMD4<FloatingPointType>()
        
        if trace > 0 {
            var s = FloatingPointType.sqrt(trace + 1)
            temp[3] = s * 0.5
            s = 0.5 / s
            
            temp[0] = (self.rows[2][1] - self.rows[1][2]) * s
            temp[1] = (self.rows[0][2] - self.rows[2][0]) * s
            temp[2] = (self.rows[1][0] - self.rows[0][1]) * s
        } else {
            let i = self.rows[0][0] < self.rows[1][1]
            ? (self.rows[1][1] < self.rows[2][2] ? 2 : 1)
            : (self.rows[0][0] < self.rows[2][2] ? 2 : 0)
            let j = (i + 1) % 3
            let k = (i + 2) % 3
            
            var s = FloatingPointType.sqrt(self.rows[i][i] - self.rows[j][j] - self.rows[k][k] + 1)
            temp[i] = s * 0.5
            s = 0.5 / s;
            
            temp[3] = (self.rows[k][j] - self.rows[j][k]) * s
            temp[j] = (self.rows[j][i] + self.rows[i][j]) * s
            temp[k] = (self.rows[k][i] + self.rows[i][k]) * s
        }
        
        return Quaternion(temp[0], temp[1], temp[2], temp[3])
    }
    
    internal mutating func _setQuaternionScale(
        quaternion: Quaternion,
        scale: Vector3
    ) {
        _setDiagonal(scale)
        rotate(by: quaternion)
    }
    
    /// The basis's rotation in the form of a quaternion.
    ///
    /// See ``euler(order:)`` if you need Euler angles,
    /// but keep in mind quaternions should generally be preferred to Euler angles.
    public var rotation: Quaternion {
        // Assumes that the matrix can be decomposed into a proper rotation and scaling matrix as M = R.S,
        // and returns the Euler angles corresponding to the rotation part, complementing get_scale().
        // See the comment in get_scale() for further information.
        var m = self.orthonormalized()
        let det = m.determinant
        if det < 0 {
            // Ensure that the determinant is 1, such that result is a proper rotation matrix which can be represented by Euler angles.
            m.scale(by: Vector3(-1, -1, -1))
        }
        return m.quaternion
    }
    
    /// Creates a basis with a rotation such that the forward axis (-Z) points towards the target position.
    ///
    /// The up axis (+Y) points as close to the up vector as possible
    /// while staying perpendicular to the forward axis.
    /// The resulting basis is orthonormalized.
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
#if MATH_CHECKS
        if target.isApproximatelyZero {
            godotPrintError("The target vector can't be zero.")
            return Basis()
        }
        if up.isApproximatelyZero {
            godotPrintError("The up vector can't be zero.")
            return Basis()
        }
#endif
        var vz = target.normalized()
        if !useModelFront {
            vz = -vz
        }
        var vx = up.cross(vz)
#if MATH_CHECKS
        if vx.isApproximatelyZero {
            godotPrintError("The target vector and up vector can't be parallel to each other.")
            return Basis()
        }
#endif
        vx.normalize()
        let vy = vz.cross(vx)
        
        return Basis(x: vx, y: vy, z: vz)
    }
    
    /// Creates a pure scale basis matrix with no rotation or shearing.
    ///
    /// The scale values are set as the diagonal of the matrix,
    /// and the other parts of the matrix are zero.
    public static func fromScale(_ scale: Vector3) -> Basis {
        Basis(scale.x, 0, 0, 0, scale.y, 0, 0, 0, scale.z)
    }
    
    /// Creates a pure rotation basis matrix from Euler angles in the specified Euler rotation order.
    ///
    /// By default, use YXZ order (most common).
    public static func fromEuler(
        _ euler: Vector3,
        order: EulerOrder = .yxz
    ) -> Basis {
        var c = FloatingPointType()
        var s = FloatingPointType()

        c = cos(euler.x);
        s = sin(euler.x);
        let xmat = Basis(1, 0, 0, 0, c, -s, 0, s, c)

        c = cos(euler.y)
        s = sin(euler.y)
        let ymat = Basis(c, 0, s, 0, 1, 0, -s, 0, c)

        c = cos(euler.z)
        s = sin(euler.z)
        let zmat = Basis(c, -s, 0, s, c, 0, 0, 0, 1)

        switch order {
        case .xyz:
            return xmat * (ymat * zmat)
        case .xzy:
            return xmat * zmat * ymat
        case .yxz:
            return ymat * xmat * zmat
        case .yzx:
            return ymat * zmat * xmat
        case .zxy:
            return zmat * xmat * ymat
        case .zyx:
            return zmat * ymat * xmat
        }
    }
    
    /// A Boolean value indicating whether the basis is orthogonal.
    public var isOrthogonal: Bool {
        (self * self.transposed()).isApproximatelyEqual(to: .identity)
    }
    
    /// A Boolean value indicating whether the basis is a diagonal matrix.
    public var isDiagonal: Bool {
        rows[0][1].isApproximatelyZero &&
        rows[0][2].isApproximatelyZero &&
        rows[1][0].isApproximatelyZero &&
        rows[1][2].isApproximatelyZero &&
        rows[2][0].isApproximatelyZero &&
        rows[2][1].isApproximatelyZero
    }
    
    /// This also sets the non-diagonal elements to 0, which is misleading from the
    /// name, so we want this method to be private.
    internal mutating func _setDiagonal(_ diag: Vector3) {
        rows[0][0] = diag.x
        rows[0][1] = 0
        rows[0][2] = 0
        
        rows[1][0] = 0
        rows[1][1] = diag.y
        rows[1][2] = 0
        
        rows[2][0] = 0
        rows[2][1] = 0
        rows[2][2] = diag.z
    }
    
    /// A Boolean value indicating whether the basis is a rotation matrix.
    public var isRotation: Bool {
        determinant.isApproximatelyEqual(to: 1, tolerance: .unitEpsilon) &&
        isOrthogonal
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
            default: fatalError("Attempting to read column \(columnIndex) from basis.")
            }
        }
        set(newValue) {
            switch columnIndex {
            case 0: x = newValue
            case 1: y = newValue
            case 2: z = newValue
            default: fatalError("Attempting to set column \(columnIndex) on basis.")
            }
        }
    }
    
    /// Accesses the vector component on the given axis.
    public subscript(axis axis: Axis3D) -> Vector3 {
        get {
            switch axis {
            case .x: x
            case .y: y
            case .z: z
            }
        }
        set(newValue) {
            switch axis {
            case .x: x = newValue
            case .y: y = newValue
            case .z: z = newValue
            }
        }
    }
}

// MARK: - Codable

extension Basis: Codable {
    public func encode(to encoder: Encoder) throws {
        var unkeyedContainer = encoder.unkeyedContainer()
        try unkeyedContainer.encode(x)
        try unkeyedContainer.encode(y)
        try unkeyedContainer.encode(z)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        self.init(
            x: try container.decode(Vector3.self),
            y: try container.decode(Vector3.self),
            z: try container.decode(Vector3.self)
        )
    }
}

// MARK: - CustomStringConvertible

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

// MARK: - Rows

extension Basis {
    /// A 3×3 matrix representing a basis, formatted in rows.
    ///
    /// ## Topics
    ///
    /// ### Accessing Rows
    ///
    /// - ``Basis/Rows-swift.struct/x``
    /// - ``Basis/Rows-swift.struct/y``
    /// - ``Basis/Rows-swift.struct/z``
    /// - ``Basis/Rows-swift.struct/subscript(_:)``
    public struct Rows: Equatable, Hashable {
        /// The basis matrix's first row.
        public var x: Vector3
        /// The basis matrix's second row.
        public var y: Vector3
        /// The basis matrix's third row.
        public var z: Vector3
        
        fileprivate init(x: Vector3, y: Vector3, z: Vector3) {
            self.x = x
            self.y = y
            self.z = z
        }
        
        /// Accesses the row of the `Basis` at the given index.
        public subscript(rowIndex: Int) -> Vector3 {
            get {
                switch rowIndex {
                case 0: x
                case 1: y
                case 2: z
                default: fatalError("Attempting to read row \(rowIndex) from basis.")
                }
            }
            set(newValue) {
                switch rowIndex {
                case 0: x = newValue
                case 1: y = newValue
                case 2: z = newValue
                default: fatalError("Attempting to set row \(rowIndex) on basis.")
                }
            }
        }
        
        fileprivate mutating func transpose() {
            swap(&x.y, &y.x)
            swap(&x.z, &z.x)
            swap(&y.z, &z.y)
        }
    }
}

extension Basis.Rows: CustomStringConvertible {
    public var description: String {
        "(x: \(x), y: \(y), z: \(z))"
    }
}

extension Basis.Rows: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Basis.Rows(x: \(x), y: \(y), z: \(z))"
    }
}

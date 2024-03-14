
/// A 4×4 matrix for 3D projective transformations.
///
/// This type can represent transformations such as translation,
/// rotation, scaling, shearing, and perspective division.
/// It consists of four ``Vector4`` columns.
///
/// For purely linear transformations (translation, rotation, and scale),
/// it is recommended to use ``Transform3D``,
/// as it is more performant and requires less memory.
///
/// >note: `Projection` is used internally as ``Camera3D``'s projection matrix.
///
/// ## Topics
///
/// ### Creating Projection
///
/// - ``Projection/init(x:y:z:w:)``
/// - ``Projection/init(transform3D:)``
///
/// - ``Projection/depthCorrection(flipY:)``
/// - ``Projection/fitAABB(_:)``
/// - ``Projection/forHMD(eye:aspect:intraocularDist:displayWidth:displayToLens:oversample:zNear:zFar:)``
/// - ``Projection/frustum(left:right:bottom:top:zNear:zFar:)``
/// - ``Projection/frustumAspect(size:aspect:offset:zNear:zFar:flipFov:)``
/// - ``Projection/lightAtlasRect(_:)``
/// - ``Projection/orthogonal(left:right:bottom:top:zNear:zFar:)``
/// - ``Projection/orthogonalAspect(size:aspect:zNear:zFar:flipFov:)``
/// - ``Projection/perspective(fovy:aspect:zNear:zFar:flipFov:)``
/// - ``Projection/perspectiveForHMD(fovy:aspect:zNear:zFar:flipFov:eye:intraocularDist:convergenceDist:)``
///
/// ### Special Values
///
/// - ``Projection/identity``
/// - ``Projection/init()``
/// - ``Projection/zero``
///
/// ### Geometric Properties
///
/// - ``Projection/x``
/// - ``Projection/y``
/// - ``Projection/z``
/// - ``Projection/w``
/// - ``Projection/subscript(_:)``
///
/// - ``Projection/determinant``
/// - ``Projection/aspect``
/// - ``Projection/fov``
/// - ``Projection/fovY(fovX:aspect:)``
/// - ``Projection/lodMultiplier``
/// - ``Projection/pixelsPerMetter(forPixelWidth:)``
/// - ``Projection/isOrthogonal``
///
/// ### Clipping Planes
///
/// - ``Projection/Planes``
/// - ``Projection/plane(for:)``
/// - ``Projection/viewportHalfExtents``
/// - ``Projection/farPlaneHalfExtents``
/// - ``Projection/zFar``
/// - ``Projection/zNear``
///
/// ### Inversion
///
/// - ``Projection/inverse()``
/// - ``Projection/invert()``
///
/// ### Transformation
///
/// - ``Projection/flippedY()``
/// - ``Projection/flipY()``
/// - ``Projection/jitterOffseted(_:)``
/// - ``Projection/addJitterOffset(_:)``
/// - ``Projection/adjustedPerspective(zNear:)``
/// - ``Projection/adjustPerspective(zNear:)``
public struct Projection: Equatable, Hashable {
    /// The projection matrix's X vector (column 0).
    public var x: Vector4
    
    /// The projection matrix's Y vector (column 1).
    public var y: Vector4
    
    /// The projection matrix's Z vector (column 2).
    public var z: Vector4
    
    /// The projection matrix's W vector (column 3).
    public var w: Vector4
    
    // MARK: - Initializers
    
    /// Creates a new projection from the four given vectors (matrix columns).
    public init(x: Vector4, y: Vector4, z: Vector4, w: Vector4) {
        self.x = x
        self.y = y
        self.z = z
        self.w = w
    }
    
    internal init(
        _ xx: FloatingPointType, _ xy: FloatingPointType, _ xz: FloatingPointType, _ xw: FloatingPointType,
        _ yx: FloatingPointType, _ yy: FloatingPointType, _ yz: FloatingPointType, _ yw: FloatingPointType,
        _ zx: FloatingPointType, _ zy: FloatingPointType, _ zz: FloatingPointType, _ zw: FloatingPointType,
        _ wx: FloatingPointType, _ wy: FloatingPointType, _ wz: FloatingPointType, _ ww: FloatingPointType
    ) {
        self.x = Vector4(x: xx, y: xy, z: xz, w: xw)
        self.y = Vector4(x: yx, y: yy, z: yz, w: yw)
        self.z = Vector4(x: zx, y: zy, z: zz, w: zw)
        self.w = Vector4(x: wx, y: wy, z: wz, w: ww)
    }
    
    /// Creates a new projection as a copy of the given Transform3D.
    public init(transform3D: Transform3D) {
        self.x = Vector4(
            transform3D.basis.rows[0][0],
            transform3D.basis.rows[1][0],
            transform3D.basis.rows[2][0],
            0.0
        )
        self.y = Vector4(
            transform3D.basis.rows[0][1],
            transform3D.basis.rows[1][1],
            transform3D.basis.rows[2][1],
            0.0
        )
        self.z = Vector4(
            transform3D.basis.rows[0][2],
            transform3D.basis.rows[1][2],
            transform3D.basis.rows[2][2],
            0.0
        )
        self.w = Vector4(
            transform3D.origin.x,
            transform3D.origin.y,
            transform3D.origin.z,
            1.0
        )
    }
    
    /// Creates a default-initialized `Projection` set to `identity`.
    public init() {
        self = .identity
    }
}

// MARK: - Special Values

extension Projection {
    /// A projection with no transformation defined.
    ///
    /// When applied to other data structures, no transformation is performed.
    public static var identity: Projection {
        Projection(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)
    }
    
    /// A projection with all values initialized to `0`.
    ///
    /// When applied to other data structures, they will be zeroed.
    public static var zero: Projection {
        Projection(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
    }
}

// MARK: Operators

extension Projection {
    /// The projection of a 4D vector by a projection matrix.
    public static func * (lhs: Projection, rhs: Vector4) -> Vector4 {
        Vector4(
            lhs[0][0] * rhs.x + lhs[1][0] * rhs.y + lhs[2][0] * rhs.z + lhs[3][0] * rhs.w,
            lhs[0][1] * rhs.x + lhs[1][1] * rhs.y + lhs[2][1] * rhs.z + lhs[3][1] * rhs.w,
            lhs[0][2] * rhs.x + lhs[1][2] * rhs.y + lhs[2][2] * rhs.z + lhs[3][2] * rhs.w,
            lhs[0][3] * rhs.x + lhs[1][3] * rhs.y + lhs[2][3] * rhs.z + lhs[3][3] * rhs.w
        )
    }
    
    /// The inverse projection of a 4D vector by a transpose of a projection matrix.
    ///
    /// For transforming by inverse of an affine transformation (e.g. with scaling)
    /// `transform.inverse() * vector` can be used instead.
    /// See `Projection`'s ``Projection/inverse()``.
    public static func * (lhs: Vector4, rhs: Projection) -> Vector4 {
        Vector4(
            rhs[0][0] * lhs.x + rhs[0][1] * lhs.y + rhs[0][2] * lhs.z + rhs[0][3] * lhs.w,
            rhs[1][0] * lhs.x + rhs[1][1] * lhs.y + rhs[1][2] * lhs.z + rhs[1][3] * lhs.w,
            rhs[2][0] * lhs.x + rhs[2][1] * lhs.y + rhs[2][2] * lhs.z + rhs[2][3] * lhs.w,
            rhs[3][0] * lhs.x + rhs[3][1] * lhs.y + rhs[3][2] * lhs.z + rhs[3][3] * lhs.w
        )
    }
    
    /// Updates the vector with the inverse projection by a transpose of a projection matrix.
    public static func *= (lhs: inout Vector4, rhs: Projection) {
        lhs = lhs * rhs
    }
    
    internal static func * (lhs: Projection, rhs: Vector3) -> Vector3 {
        var ret = Vector3()
        ret.x = lhs[0][0] * rhs.x + lhs[1][0] * rhs.y + lhs[2][0] * rhs.z + lhs[3][0]
        ret.y = lhs[0][1] * rhs.x + lhs[1][1] * rhs.y + lhs[2][1] * rhs.z + lhs[3][1]
        ret.z = lhs[0][2] * rhs.x + lhs[1][2] * rhs.y + lhs[2][2] * rhs.z + lhs[3][2]
        let w = lhs[0][3] * rhs.x + lhs[1][3] * rhs.y + lhs[2][3] * rhs.z + lhs[3][3]
        return ret / w
    }
    
    /// The combined transformations of a projection and another one.
    public static func * (lhs: Projection, rhs: Projection) -> Projection {
        var newMatrix = Projection()
        
        var j = 0
        while j < 4 {
            var i = 0
            while i < 4 {
                var ab: FloatingPointType = 0
                var k = 0
                while k < 4 {
                    ab += lhs[k][i] * rhs[j][k]
                    k += 1
                }
                newMatrix[j][i] = ab
                i += 1
            }
            j += 1
        }

        return newMatrix
    }
    
    /// Updates the projection with the combined
    /// transformations of a projection and another one.
    public static func *= (lhs: inout Projection, rhs: Projection) {
        lhs = lhs * rhs
    }
}
    
// MARK: Functions and variables

extension Projection {
    /// Creates a new projection that projects positions
    /// from a depth range of -1 to 1 to one that ranges from 0 to 1.
    ///
    /// - Parameter flipY: A Boolean value indicating whether the projected positions
    /// are flipped vertically.
    public static func depthCorrection(flipY: Bool) -> Projection {
        Projection(
            x: Vector4(
                1,
                0.0,
                0.0,
                0.0
            ),
            y: Vector4(
                0.0,
                flipY ? -1 : 1,
                0.0,
                0.0
            ),
            z: Vector4(
                0.0,
                0.0,
                0.5,
                0.0
            ),
            w: Vector4(
                0.0,
                0.0,
                0.5,
                1.0
            )
        )
    }
    
    /// Creates a new projection that projects positions into the given 2D rectangle.
    public static func lightAtlasRect(_ rect: Rect2) -> Projection {
        Projection(
            x: Vector4(
                rect.size.width,
                0.0,
                0.0,
                0.0
            ),
            y: Vector4(
                0.0,
                rect.size.height,
                0.0,
                0.0
            ),
            z: Vector4(
                0.0,
                0.0,
                1.0,
                0.0
            ),
            w: Vector4(
                rect.position.x,
                rect.position.y,
                0.0,
                1.0
            )
        )
    }
    
    /// Creates a new projection that projects positions using a perspective projection.
    ///
    /// - Parameters:
    ///   - fovy: The Y-axis field of view (in degrees).
    ///   - aspect: The X:Y aspect ratio.
    ///   - zNear: The near depth clipping plane.
    ///   - zFar: The far depth clipping plane.
    ///   - flipFov: A Boolean value indicating whether the
    ///   projection's field of view is flipped over its diagonal.
    public static func perspective(
        fovy: FloatingPointType,
        aspect: FloatingPointType,
        zNear: FloatingPointType,
        zFar: FloatingPointType,
        flipFov: Bool = false
    ) -> Projection {
        var fovy = fovy
        if flipFov {
            fovy = Projection.fovY(fovX: fovy, aspect: 1.0 / aspect)
        }

        let radians = (fovy / 2).degToRad
        let deltaZ = zFar - zNear
        let sine = sin(radians)

        if (deltaZ == 0) || (sine == 0) || (aspect == 0) {
            return .zero
        }
        let cotangent = cos(radians) / sine

        var projection = Projection.identity

        projection[0][0] = cotangent / aspect
        projection[1][1] = cotangent
        projection[2][2] = -(zFar + zNear) / deltaZ
        projection[2][3] = -1
        projection[3][2] = -2 * zNear * zFar / deltaZ
        projection[3][3] = 0
        
        return projection
    }
    
    /// Creates a new projection that projects positions using a perspective projection.
    ///
    /// - Parameters:
    ///   - fovy: The Y-axis field of view (in degrees).
    ///   - aspect: The X:Y aspect ratio.
    ///   - zNear: The near depth clipping plane.
    ///   - zFar: The far depth clipping plane.
    ///   - flipFov: A Boolean value indicating whether the
    ///   projection's field of view is flipped over its diagonal.
    ///   - eye: 1 if the projection is created for the left eye, or 2 for the right eye.
    ///   - intraocularDist: The distance between eyes.
    ///   - convergenceDist: The distance to a point that can be focused on.
    public static func perspectiveForHMD(
        fovy: FloatingPointType,
        aspect: FloatingPointType,
        zNear: FloatingPointType,
        zFar: FloatingPointType,
        flipFov: Bool,
        eye: Int,
        intraocularDist: FloatingPointType,
        convergenceDist: FloatingPointType
    ) -> Projection {
        var fovy = fovy
        if flipFov {
            fovy = Projection.fovY(fovX: fovy, aspect: 1.0 / aspect)
        }

        let ymax = zNear * tan((fovy / 2.0).degToRad)
        let xmax = ymax * aspect
        let frustumshift = (intraocularDist / 2.0) * zNear / convergenceDist

        let left: FloatingPointType
        let right: FloatingPointType
        let modeltranslation: FloatingPointType
        switch eye {
            case 1: // left eye
                left = -xmax + frustumshift;
                right = xmax + frustumshift;
                modeltranslation = intraocularDist / 2.0;
            case 2: // right eye
                left = -xmax - frustumshift;
                right = xmax - frustumshift;
                modeltranslation = -intraocularDist / 2.0;
            default: // mono, should give the same result as set_perspective(p_fovy_degrees,p_aspect,p_z_near,p_z_far,p_flip_fov)
                left = -xmax;
                right = xmax;
                modeltranslation = 0.0;
        }
        
        let projection = Projection.frustum(
            left: left,
            right: right,
            bottom: -ymax,
            top: ymax,
            zNear: zNear,
            zFar: zFar
        )

        // translate matrix by (modeltranslation, 0.0, 0.0)
        var cm = Projection.identity
        cm[3][0] = modeltranslation
        return projection * cm
    }
    
    /// Creates a new projection for projecting positions onto a head-mounted display.
    ///
    /// - Parameters:
    ///   - eye: 1 if the projection is created for the left eye, or 2 for the right eye.
    ///   - aspect: The X:Y aspect ratio.
    ///   - intraocularDist: The distance between eyes.
    ///   - displayWidth: The display width.
    ///   - displayToLens: The distance to lens.
    ///   - oversample: The oversampling factor.
    ///   - zNear: The near depth clipping plane.
    ///   - zFar: The far depth clipping plane.
    public static func forHMD(
        eye: Int,
        aspect: FloatingPointType,
        intraocularDist: FloatingPointType,
        displayWidth: FloatingPointType,
        displayToLens: FloatingPointType,
        oversample: FloatingPointType,
        zNear: FloatingPointType,
        zFar: FloatingPointType
    ) -> Projection {
        // we first calculate our base frustum on our values without taking our lens magnification into account.
        var f1 = (intraocularDist * 0.5) / displayToLens
        var f2 = ((displayWidth - intraocularDist) * 0.5) / displayToLens
        var f3 = (displayWidth / 4.0) / displayToLens

        // now we apply our oversample factor to increase our FOV. how much we oversample is always a balance we strike between performance and how much
        // we're willing to sacrifice in FOV.
        let add = ((f1 + f2) * (oversample - 1.0)) / 2.0
        f1 += add
        f2 += add
        f3 *= oversample

        // always apply KEEP_WIDTH aspect ratio
        f3 /= aspect

        switch eye {
        case 1: // left eye
            return Projection.frustum(
                left: -f2 * zNear,
                right: f1 * zNear,
                bottom: -f3 * zNear,
                top: f3 * zNear,
                zNear: zNear,
                zFar: zFar
            )
        case 2: // right eye
            return Projection.frustum(
                left: -f1 * zNear,
                right: f2 * zNear,
                bottom: -f3 * zNear,
                top: f3 * zNear,
                zNear: zNear,
                zFar: zFar
            )
        default: // mono, does not apply here!
            return .zero
        }
    }
    
    /// Creates a new projection that projects positions using
    /// an orthogonal projection with the given clipping planes.
    public static func orthogonal(
        left: FloatingPointType,
        right: FloatingPointType,
        bottom: FloatingPointType,
        top: FloatingPointType,
        zNear: FloatingPointType,
        zFar: FloatingPointType
    ) -> Projection {
        var projection = Projection.identity

        projection[0][0] = 2.0 / (right - left)
        projection[3][0] = -((right + left) / (right - left))
        projection[1][1] = 2.0 / (top - bottom)
        projection[3][1] = -((top + bottom) / (top - bottom))
        projection[2][2] = -2.0 / (zFar - zNear)
        projection[3][2] = -((zFar + zNear) / (zFar - zNear))
        projection[3][3] = 1.0
        
        return projection
    }
    
    /// Creates a new projection that projects
    /// positions using an orthogonal projection.
    ///
    /// - Parameters:
    ///   - size: The size.
    ///   - aspect: The X:Y aspect ratio.
    ///   - zNear: The near clipping plane.
    ///   - zFar: The far clipping plane.
    ///   - flipFov: A Boolean value indicating whether the
    ///   projection's field of view is flipped over its diagonal.
    public static func orthogonalAspect(
        size: FloatingPointType,
        aspect: FloatingPointType,
        zNear: FloatingPointType,
        zFar: FloatingPointType,
        flipFov: Bool = false
    ) -> Projection {
        let size = flipFov ? size : size * aspect

        return Projection.orthogonal(
            left: -size / 2,
            right: +size / 2,
            bottom: -size / aspect / 2,
            top: +size / aspect / 2,
            zNear: zNear,
            zFar: zFar
        )
    }
    
    /// Creates a new projection that projects
    /// positions in a frustum with the given clipping planes.
    public static func frustum(
        left: FloatingPointType,
        right: FloatingPointType,
        bottom: FloatingPointType,
        top: FloatingPointType,
        zNear: FloatingPointType,
        zFar: FloatingPointType
    ) -> Projection {
        if right <= left {
            godotPrintError("right <= left should not be true. Returning Projection zero.")
            return .zero
        }
        if top <= bottom {
            godotPrintError("top <= bottom should not be true. Returning Projection zero.")
            return .zero
        }
        if zFar <= zNear {
            godotPrintError("zFar <= zNear should not be true. Returning Projection zero.")
            return .zero
        }

        let x = 2 * zNear / (right - left)
        let y = 2 * zNear / (top - bottom)

        let a = (right + left) / (right - left)
        let b = (top + bottom) / (top - bottom)
        let c = -(zFar + zNear) / (zFar - zNear)
        let d = -2 * zFar * zNear / (zFar - zNear)

        return Projection(
            x: Vector4(x, 0, 0, 0),
            y: Vector4(0, y, 0, 0),
            z: Vector4(a, b, c, -1),
            w: Vector4(0, 0, d, 0)
        )
    }
    
    /// Creates a new projection that projects positions in a frustum.
    /// with the given size, X:Y aspect ratio, offset, and clipping planes.
    ///
    /// - Parameters:
    ///   - size: The size.
    ///   - aspect: The X:Y aspect ratio.
    ///   - offset: The offset.
    ///   - zNear: The near clipping plane.
    ///   - zFar: The far clipping plane.
    ///   - flipFov: A Boolean value indicating whether the
    ///   projection's field of view is flipped over its diagonal.
    public static func frustumAspect(
        size: FloatingPointType,
        aspect: FloatingPointType,
        offset: Vector2,
        zNear: FloatingPointType,
        zFar: FloatingPointType,
        flipFov: Bool = false
    ) -> Projection {
        let size = flipFov ? size : size * aspect
        
        return Projection.frustum(
            left: -size / 2 + offset.x,
            right: +size / 2 + offset.x,
            bottom: -size / aspect / 2 + offset.y,
            top: +size / aspect / 2 + offset.y,
            zNear: zNear,
            zFar: zFar
        )
    }
    
    /// Creates a new projection that scales a given
    /// projection to fit around a given AABB in projection space.
    public static func fitAABB(_ aabb: AABB) -> Projection {
        let min = aabb.position
        let max = aabb.position + aabb.size

        var projection = Projection.zero
        
        projection[0][0] = 2 / (max.x - min.x)
        projection[1][0] = 0
        projection[2][0] = 0
        projection[3][0] = -(max.x + min.x) / (max.x - min.x)

        projection[0][1] = 0
        projection[1][1] = 2 / (max.y - min.y)
        projection[2][1] = 0
        projection[3][1] = -(max.y + min.y) / (max.y - min.y)

        projection[0][2] = 0
        projection[1][2] = 0
        projection[2][2] = 2 / (max.z - min.z)
        projection[3][2] = -(max.z + min.z) / (max.z - min.z)

        projection[0][3] = 0
        projection[1][3] = 0
        projection[2][3] = 0
        projection[3][3] = 1
        
        return projection
    }
    
    /// A scalar value that is the signed factor by which areas are scaled by the matrix.
    ///
    /// If the sign is negative, the matrix flips the orientation of the area.
    ///
    /// The determinant can be used to calculate the invertibility
    /// of a matrix or solve linear systems of equations
    /// involving the matrix, among other applications.
    public var determinant: FloatingPointType {
        self[0][3] * self[1][2] * self[2][1] * self[3][0] - self[0][2] * self[1][3] * self[2][1] * self[3][0] -
        self[0][3] * self[1][1] * self[2][2] * self[3][0] + self[0][1] * self[1][3] * self[2][2] * self[3][0] +
        self[0][2] * self[1][1] * self[2][3] * self[3][0] - self[0][1] * self[1][2] * self[2][3] * self[3][0] -
        self[0][3] * self[1][2] * self[2][0] * self[3][1] + self[0][2] * self[1][3] * self[2][0] * self[3][1] +
        self[0][3] * self[1][0] * self[2][2] * self[3][1] - self[0][0] * self[1][3] * self[2][2] * self[3][1] -
        self[0][2] * self[1][0] * self[2][3] * self[3][1] + self[0][0] * self[1][2] * self[2][3] * self[3][1] +
        self[0][3] * self[1][1] * self[2][0] * self[3][2] - self[0][1] * self[1][3] * self[2][0] * self[3][2] -
        self[0][3] * self[1][0] * self[2][1] * self[3][2] + self[0][0] * self[1][3] * self[2][1] * self[3][2] +
        self[0][1] * self[1][0] * self[2][3] * self[3][2] - self[0][0] * self[1][1] * self[2][3] * self[3][2] -
        self[0][2] * self[1][1] * self[2][0] * self[3][3] + self[0][1] * self[1][2] * self[2][0] * self[3][3] +
        self[0][2] * self[1][0] * self[2][1] * self[3][3] - self[0][0] * self[1][2] * self[2][1] * self[3][3] -
        self[0][1] * self[1][0] * self[2][2] * self[3][3] + self[0][0] * self[1][1] * self[2][2] * self[3][3]
    }
    
    /// Returns this projection with the near clipping distance adjusted to a given distance.
    ///
    /// >note: The original projection must be a perspective projection.
    public func adjustedPerspective(zNear: FloatingPointType) -> Projection {
        var copy = self
        copy.adjustPerspective(zNear: zNear)
        return copy
    }
    
    /// Adjusts the near clipping plane to a given distance.
    ///
    /// >note: The original projection must be a perspective projection.
    public mutating func adjustPerspective(zNear: FloatingPointType) {
        let zfar = self.zFar
        let znear = zNear

        let deltaZ = zfar - znear
        self[2][2] = -(zfar + znear) / deltaZ
        self[3][2] = -2 * znear * zfar / deltaZ
    }
    
    /// Returns the clipping plane of the projection.
    public func plane(for plane: Planes) -> Plane {
        switch plane {
        case .near:
            var newPlane = Plane(
                a: self[adjacentIndex: 3] + self[adjacentIndex: 2],
                b: self[adjacentIndex: 7] + self[adjacentIndex: 6],
                c: self[adjacentIndex: 11] + self[adjacentIndex: 10],
                d: self[adjacentIndex: 15] + self[adjacentIndex: 14]
            )

            newPlane.normal = -newPlane.normal
            newPlane.normalize()
            return newPlane
        case .far:
            var newPlane = Plane(
                a: self[adjacentIndex: 3] - self[adjacentIndex: 2],
                b: self[adjacentIndex: 7] - self[adjacentIndex: 6],
                c: self[adjacentIndex: 11] - self[adjacentIndex: 10],
                d: self[adjacentIndex: 15] - self[adjacentIndex: 14]
            )

            newPlane.normal = -newPlane.normal
            newPlane.normalize()
            return newPlane
        case .left:
            var newPlane = Plane(
                a: self[adjacentIndex: 3] + self[adjacentIndex: 0],
                b: self[adjacentIndex: 7] + self[adjacentIndex: 4],
                c: self[adjacentIndex: 11] + self[adjacentIndex: 8],
                d: self[adjacentIndex: 15] + self[adjacentIndex: 12]
            )

            newPlane.normal = -newPlane.normal
            newPlane.normalize()
            return newPlane
        case .top:
            var newPlane = Plane(
                a: self[adjacentIndex: 3] - self[adjacentIndex: 1],
                b: self[adjacentIndex: 7] - self[adjacentIndex: 5],
                c: self[adjacentIndex: 11] - self[adjacentIndex: 9],
                d: self[adjacentIndex: 15] - self[adjacentIndex: 13]
            )

            newPlane.normal = -newPlane.normal
            newPlane.normalize()
            return newPlane
        case .right:
            var newPlane = Plane(
                a: self[adjacentIndex: 3] - self[adjacentIndex: 0],
                b: self[adjacentIndex: 7] - self[adjacentIndex: 4],
                c: self[adjacentIndex: 11] - self[adjacentIndex: 8],
                d: self[adjacentIndex: 15] - self[adjacentIndex: 12]
            )

            newPlane.normal = -newPlane.normal
            newPlane.normalize()
            return newPlane
        case .bottom:
            var newPlane = Plane(
                a: self[adjacentIndex: 3] + self[adjacentIndex: 1],
                b: self[adjacentIndex: 7] + self[adjacentIndex: 5],
                c: self[adjacentIndex: 11] + self[adjacentIndex: 9],
                d: self[adjacentIndex: 15] + self[adjacentIndex: 13]
            )

            newPlane.normal = -newPlane.normal
            newPlane.normalize()
            return newPlane
        }
    }
    
    /// Returns this projection with the signs of the values of the Y column flipped.
    public func flippedY() -> Projection {
        var copy = self
        copy.flipY()
        return copy
    }
    
    /// Flips the signs of the values of the Y column.
    public mutating func flipY() {
        self[1].x = -self[1].x
        self[1].y = -self[1].y
        self[1].z = -self[1].z
        self[1].w = -self[1].w
    }
    
    /// Returns this projection with the X and Y values from the
    /// given 2D vector added to the first and second
    /// values of the final column respectively.
    public func jitterOffseted(_ offset: Vector2) -> Projection {
        var copy = self
        copy.addJitterOffset(offset)
        return copy
    }
    
    /// Replaces this projection with the X and Y values from the
    /// given 2D vector added to the first and second
    /// values of the final column respectively.
    public mutating func addJitterOffset(_ offset: Vector2) {
        self[3][0] += offset.x
        self[3][1] += offset.y
    }
    
    /// Returns the vertical field of view of the projection
    /// associated with the given horizontal field of view and aspect ratio.
    ///
    /// - Parameters:
    ///   - fovX: The horizontal field of view in degrees.
    ///   - aspect: The aspect ratio in degrees.
    public static func fovY(
        fovX: FloatingPointType,
        aspect: FloatingPointType
    ) -> FloatingPointType {
        (atan(aspect * tan(fovX.degToRad * 0.5)) * 2.0).radToDeg
    }
    
    /// The distance for the projection beyond which positions are clipped.
    public var zFar: FloatingPointType {
        var newPlane = Plane(
            a: self[adjacentIndex: 3] - self[adjacentIndex: 2],
            b: self[adjacentIndex: 7] - self[adjacentIndex: 6],
            c: self[adjacentIndex: 11] - self[adjacentIndex: 10],
            d: self[adjacentIndex: 15] - self[adjacentIndex: 14]
        )

        newPlane.normal = -newPlane.normal
        newPlane.normalize()

        return newPlane.d
    }
    
    /// The distance for the projection before which positions are clipped.
    public var zNear: FloatingPointType {
        var newPlane = Plane(
            a: self[adjacentIndex: 3] + self[adjacentIndex: 2],
            b: self[adjacentIndex: 7] + self[adjacentIndex: 6],
            c: self[adjacentIndex: 11] + self[adjacentIndex: 10],
            d: -self[adjacentIndex: 15] + self[adjacentIndex: 14]
        )

        newPlane.normalize()

        return newPlane.d
    }
    
    /// The X:Y aspect ratio of the projection's viewport.
    public var aspect: FloatingPointType {
        let vpHe = viewportHalfExtents
        return vpHe.x / vpHe.y
    }
    
    /// The horizontal field of view of the projection (in degrees).
    public var fov: FloatingPointType {
        var rightPlane = Plane(
            a: self[adjacentIndex: 3] - self[adjacentIndex: 0],
            b: self[adjacentIndex: 7] - self[adjacentIndex: 4],
            c: self[adjacentIndex: 11] - self[adjacentIndex: 8],
            d: -self[adjacentIndex: 15] + self[adjacentIndex: 12]
        )
        rightPlane.normalize()

        if (self[adjacentIndex: 8] == 0) && (self[adjacentIndex: 9] == 0) {
            return (acos(abs(rightPlane.normal.x))).radToDeg * 2.0
        } else {
            // our frustum is asymmetrical need to calculate the left planes angle separately..
            var leftPlane = Plane(
                a: self[adjacentIndex: 3] + self[adjacentIndex: 0],
                b: self[adjacentIndex: 7] + self[adjacentIndex: 4],
                c: self[adjacentIndex: 11] + self[adjacentIndex: 8],
                d: self[adjacentIndex: 15] + self[adjacentIndex: 12]
            )
            leftPlane.normalize()

            return (acos(abs(leftPlane.normal.x))).radToDeg + (acos(abs(rightPlane.normal.x))).radToDeg
        }
    }
    
    /// A Boolean value indicating whether the projection performs an orthogonal projection.
    public var isOrthogonal: Bool {
        self[3][3] == 1.0
    }
    
    /// The dimensions of the viewport plane that the
    /// projection projects positions onto, divided by two.
    public var viewportHalfExtents: Vector2 {
        //--- Near Plane ---//
        var nearPlane = Plane(
            a: self[adjacentIndex: 3] + self[adjacentIndex: 2],
            b: self[adjacentIndex: 7] + self[adjacentIndex: 6],
            c: self[adjacentIndex: 11] + self[adjacentIndex: 10],
            d: -self[adjacentIndex: 15] - self[adjacentIndex: 14]
        )
        nearPlane.normalize()
        
        //--- Right Plane ---//
        var rightPlane = Plane(
            a: self[adjacentIndex: 3] - self[adjacentIndex: 0],
            b: self[adjacentIndex: 7] - self[adjacentIndex: 4],
            c: self[adjacentIndex: 11] - self[adjacentIndex: 8],
            d: -self[adjacentIndex: 15] + self[adjacentIndex: 12]
        )
        rightPlane.normalize()
        
        var topPlane = Plane(
            a: self[adjacentIndex: 3] - self[adjacentIndex: 1],
            b: self[adjacentIndex: 7] - self[adjacentIndex: 5],
            c: self[adjacentIndex: 11] - self[adjacentIndex: 9],
            d: -self[adjacentIndex: 15] + self[adjacentIndex: 13]
        )
        topPlane.normalize()
        
        guard let res = nearPlane.intersection(with: rightPlane, and: topPlane) else {
            godotPrintError("Could not find intersection between near, right and top plane. Returning zero 2D vector.")
            return .zero
        }
        
        return Vector2(res.x, res.y)
    }
    
    /// The dimensions of the far clipping plane of the projection, divided by two.
    public var farPlaneHalfExtents: Vector2 {
        //--- Far Plane ---//
        var farPlane = Plane(
            a: self[adjacentIndex: 3] - self[adjacentIndex: 2],
            b: self[adjacentIndex: 7] - self[adjacentIndex: 6],
            c: self[adjacentIndex: 11] - self[adjacentIndex: 10],
            d: -self[adjacentIndex: 15] + self[adjacentIndex: 14]
        )
        farPlane.normalize()
        
        //--- Right Plane ---//
        var rightPlane = Plane(
            a: self[adjacentIndex: 3] - self[adjacentIndex: 0],
            b: self[adjacentIndex: 7] - self[adjacentIndex: 4],
            c: self[adjacentIndex: 11] - self[adjacentIndex: 8],
            d: -self[adjacentIndex: 15] + self[adjacentIndex: 12]
        )
        rightPlane.normalize()
        
        var topPlane = Plane(
            a: self[adjacentIndex: 3] - self[adjacentIndex: 1],
            b: self[adjacentIndex: 7] - self[adjacentIndex: 5],
            c: self[adjacentIndex: 11] - self[adjacentIndex: 9],
            d: -self[adjacentIndex: 15] + self[adjacentIndex: 13]
        )
        topPlane.normalize()
        
        guard let res = farPlane.intersection(with: rightPlane, and: topPlane) else {
            godotPrintError("Could not find intersection between far, right and top plane. Returning zero 2D vector.")
            return .zero
        }
        
        return Vector2(res.x, res.y)
    }
    
    /// Returns the projection that performs the inverse of
    /// this projection's projective transformation.
    public func inverse() -> Projection {
        var copy = self
        copy.invert()
        return copy
    }
    
    /// Updates this projection with the one that performs the inverse of
    /// this projection's projective transformation.
    public mutating func invert() {
        var i = 0
        var j = 0
        var k = 0
        var pvt_i = SIMD4<Int>(), pvt_j = SIMD4<Int>() /* Locations of pivot matrix */
        var pvt_val: FloatingPointType = 0.0 /* Value of current pivot element */
        var hold: FloatingPointType = 0.0 /* Temporary storage */
        var determinant: FloatingPointType = 1.0
        
        while k < 4 {
            /** Locate k'th pivot element **/
            pvt_val = self[k][k] /** Initialize for search **/
            pvt_i[k] = k
            pvt_j[k] = k
            var i = k
            while i < 4 {
                j = k
                while j < 4 {
                    if abs(self[i][j]) > abs(pvt_val) {
                        pvt_i[k] = i
                        pvt_j[k] = j
                        pvt_val = self[i][j]
                    }
                    
                    j += 1
                }
                
                i += 1
            }

            /** Product of pivots, gives determinant when finished **/
            determinant *= pvt_val
            if determinant.isApproximatelyZero {
                return /** Matrix is singular (zero determinant). **/
            }

            /** "Interchange" rows (with sign change stuff) **/
            i = pvt_i[k]
            if i != k { /** If rows are different **/
                j = 0
                while j < 4 {
                    hold = -self[k][j]
                    self[k][j] = self[i][j]
                    self[i][j] = hold
                    
                    j += 1
                }
            }

            /** "Interchange" columns **/
            j = pvt_j[k]
            if j != k { /** If columns are different **/
                i = 0
                while i < 4 {
                    hold = -self[i][k]
                    self[i][k] = self[i][j]
                    self[i][j] = hold
                    
                    i += 1
                }
            }

            /** Divide column by minus pivot value **/
            i = 0
            while i < 4 {
                if i != k {
                    self[i][k] /= (-pvt_val)
                }
                
                i += 1
            }

            /** Reduce the matrix **/
            i = 0
            while i < 4 {
                hold = self[i][k]
                
                j = 0
                while j < 4 {
                    if i != k && j != k {
                        self[i][j] += hold * self[k][j]
                    }
                    
                    j += 1
                }
                
                i += 1
            }

            /** Divide row by pivot **/
            j = 0
            while j < 4 {
                if j != k {
                    self[k][j] /= pvt_val
                }
                
                j += 1
            }

            /** Replace pivot by reciprocal (at last we can touch it). **/
            self[k][k] = 1.0 / pvt_val
            
            k += 1
        }

        /* That was most of the work, one final pass of row/column interchange */
        /* to finish */
        k = 4 - 2
        while k >= 0 { /* Don't need to work with 1 by 1 corner*/
            i = pvt_j[k] /* Rows to swap correspond to pivot COLUMN */
            if i != k { /* If rows are different */
                j = 0
                while j < 4 {
                    hold = self[k][j]
                    self[k][j] = -self[i][j]
                    self[i][j] = hold
                    
                    j += 1
                }
            }

            j = pvt_i[k] /* Columns to swap correspond to pivot ROW */
            if j != k { /* If columns are different */
                i = 0
                while i < 4 {
                    hold = self[i][k]
                    self[i][k] = -self[i][j]
                    self[i][j] = hold
                    
                    i += 1
                }
            }
            
            k -= 1
        }
    }
    
    /// Returns the number of pixels with the given pixel
    /// width displayed per meter, after this projection is applied.
    public func pixelsPerMetter(forPixelWidth pixelWidth: Int) -> Int {
        let result = self * Vector3(1, 0, -1)

        return Int(result.x * 0.5 + 0.5 * FloatingPointType(pixelWidth))
    }
    
    /// The factor by which the visible level of detail is scaled by the projection.
    public var lodMultiplier: FloatingPointType {
        if isOrthogonal {
            return viewportHalfExtents.x
        } else {
            let zn = zNear
            let width = viewportHalfExtents.x * 2.0
            return 1.0 / (zn / width)
        }
        
        // Usage is lod_size / (lod_distance * multiplier) < threshold
    }
    
    /// Accesses the column of the projection at the given index.
    ///
    /// Indices are in the following order: `x`, `y`, `z`, `w`.
    public subscript(columnIndex: Int) -> Vector4 {
        get {
            switch columnIndex {
            case 0: x
            case 1: y
            case 2: z
            case 3: w
            default: fatalError("Attempting to read column \(columnIndex) from projection.")
            }
        }
        set(newValue) {
            switch columnIndex {
            case 0: x = newValue
            case 1: y = newValue
            case 2: z = newValue
            case 3: w = newValue
            default: fatalError("Attempting to set column \(columnIndex) on projection.")
            }
        }
    }
    
    /// Accesses the element at the given index.
    internal subscript(adjacentIndex index: Int) -> FloatingPointType {
        get {
            switch index {
            case 0: x.x
            case 1: x.y
            case 2: x.z
            case 3: x.w
            case 4: y.x
            case 5: y.y
            case 6: y.z
            case 7: y.w
            case 8: z.x
            case 9: z.y
            case 10: z.z
            case 11: z.w
            case 12: w.x
            case 13: w.y
            case 14: w.z
            case 15: w.w
            default: fatalError()
            }
        }
    }
}

// MARK: - Codable

extension Projection: Codable {
    public func encode(to encoder: Encoder) throws {
        var unkeyedContainer = encoder.unkeyedContainer()
        try unkeyedContainer.encode(x)
        try unkeyedContainer.encode(y)
        try unkeyedContainer.encode(z)
        try unkeyedContainer.encode(w)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        let xAxis = try container.decode(Vector4.self)
        let yAxis = try container.decode(Vector4.self)
        let zAxis = try container.decode(Vector4.self)
        let wAxis = try container.decode(Vector4.self)
        self.init(x: xAxis, y: yAxis, z: zAxis, w: wAxis)
    }
}

// MARK: - CustomStringConvertible

extension Projection: CustomStringConvertible {
    public var description: String {
        "(x: \(x), y: \(y), z: \(z), w: \(w))"
    }
}

extension Projection: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Projection(x: \(x), y: \(y), z: \(z), w: \(w))"
    }
}

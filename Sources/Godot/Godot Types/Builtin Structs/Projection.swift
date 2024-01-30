
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
/// - ``init(x:y:z:w:)``
/// - ``init(transform3D:)``
///
/// - ``depthCorrection(flipY:)``
/// - ``fitAABB(_:)``
/// - ``forHMD(eye:aspect:intraocularDist:displayWidth:displayToLens:oversample:zNear:zFar:)``
/// - ``frustum(left:right:bottom:top:zNear:zFar:)``
/// - ``frustumAspect(size:aspect:offset:zNear:zFar:flipFov:)``
/// - ``lightAtlasRect(_:)``
/// - ``orthogonal(left:right:bottom:top:zNear:zFar:)``
/// - ``orthogonalAspect(size:aspect:zNear:zFar:flipFov:)``
/// - ``perspective(fovy:aspect:zNear:zFar:flipFov:)``
/// - ``perspectiveForHMD(fovy:aspect:zNear:zFar:flipFov:eye:intraocularDist:convergenceDist:)``
///
/// ### Special Values
///
/// - ``identity``
/// - ``init()``
/// - ``zero``
///
/// ### Geometric Properties
///
/// - ``x``
/// - ``y``
/// - ``z``
/// - ``w``
/// - ``subscript(_:)``
/// 
/// - ``determinant``
/// - ``aspect``
/// - ``farPlaneHalfExtents``
/// - ``fov``
/// - ``fovY(fovX:aspect:)``
/// - ``lodMultiplier``
/// - ``pixelsPerMetter(forPixelWidth:)``
/// - ``projectionPlane(_:)``
/// - ``viewportHalfExtents``
/// - ``zFar``
/// - ``zNear``
/// - ``isOrthogonal``
///
/// ### Transformation
///
/// - ``flippedY``
/// - ``inverted``
/// - ``jitterOffseted(_:)``
/// - ``perspectiveZNearAdjusted(_:)``
public struct Projection {
    /// The projection matrix's X vector (column 0).
    public var x: Vector4
    
    /// The projection matrix's Y vector (column 1).
    public var y: Vector4
    
    /// The projection matrix's Z vector (column 2).
    public var z: Vector4
    
    /// The projection matrix's W vector (column 3).
    public var w: Vector4
    
    /// Creates a `Projection` from four `Vector4` values (matrix columns).
    public init(x: Vector4, y: Vector4, z: Vector4, w: Vector4) {
        self.x = x
        self.y = y
        self.z = z
        self.w = w
    }
}

extension Projection {
    // MARK: Constructors
    
    internal init(
        _ xAxisX: FloatingPointType, _ xAxisY: FloatingPointType, _ xAxisZ: FloatingPointType, _ xAxisW: FloatingPointType,
        _ yAxisX: FloatingPointType, _ yAxisY: FloatingPointType, _ yAxisZ: FloatingPointType, _ yAxisW: FloatingPointType,
        _ zAxisX: FloatingPointType, _ zAxisY: FloatingPointType, _ zAxisZ: FloatingPointType, _ zAxisW: FloatingPointType,
        _ wAxisX: FloatingPointType, _ wAxisY: FloatingPointType, _ wAxisZ: FloatingPointType, _ wAxisW: FloatingPointType
    ) {
        self.init(
            x: Vector4(x: xAxisX, y: xAxisY, z: xAxisZ, w: xAxisW),
            y: Vector4(x: yAxisX, y: yAxisY, z: yAxisZ, w: yAxisW),
            z: Vector4(x: zAxisX, y: zAxisY, z: zAxisZ, w: zAxisW),
            w: Vector4(x: wAxisX, y: wAxisY, z: wAxisZ, w: wAxisW)
        )
    }
    
    /// Creates a `Projection` as a copy of the given Transform3D.
    public init(transform3D: Transform3D) {
        self = Self._constructor_transform3d(from: transform3D)
    }
    
    /// Creates a default-initialized `Projection` set to `identity`.
    public init() {
        self = .identity
    }
    
    // MARK: Constants
    
    /// A `Projection` with no transformation defined.
    ///
    /// When applied to other data structures, no transformation is performed.
    public static var identity: Projection {
        Projection(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)
    }
    
    /// A `Projection` with all values initialized to 0.
    ///
    /// When applied to other data structures, they will be zeroed.
    public static var zero: Projection {
        Projection(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
    }
    
    // MARK: Operators
    
    /// Projects (multiplies) the given `Vector4` by the `Projection` matrix.
    public static func * (lhs: Projection, rhs: Vector4) -> Vector4 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// Returns a `Projection` that applies the
    /// combined transformations of the `Projection` and another one.
    public static func * (lhs: Projection, rhs: Projection) -> Projection {
        Self._operatorMultiply(lhs, rhs)
    }
    
    // MARK: Methods & variables
    
    /// Creates a new `Projection` that projects positions
    /// from a depth range of -1 to 1 to one that ranges from 0 to 1.
    ///
    /// - Parameter flipY: A Boolean value indicating whether the projected positions
    /// are flipped vertically.
    public static func depthCorrection(flipY: Bool) -> Projection {
        _createDepthCorrection(flipY: flipY)
    }
    
    /// Creates a new `Projection` that projects positions into the given `Rect2`.
    public static func lightAtlasRect(_ rect: Rect2) -> Projection {
        _createLightAtlasRect(rect)
    }
    
    /// Creates a new `Projection` that projects positions using a perspective projection.
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
        _createPerspective(fovy: fovy, aspect: aspect, zNear: zNear, zFar: zFar, flipFov: flipFov)
    }
    
    /// Creates a new `Projection` that projects positions using a perspective projection.
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
        _createPerspectiveHmd(fovy: fovy, aspect: aspect, zNear: zNear, zFar: zFar, flipFov: flipFov, eye: eye, intraocularDist: intraocularDist, convergenceDist: convergenceDist)
    }
    
    /// Creates a new `Projection` for projecting positions onto a head-mounted display.
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
        _createForHmd(eye: eye, aspect: aspect, intraocularDist: intraocularDist, displayWidth: displayWidth, displayToLens: displayToLens, oversample: oversample, zNear: zNear, zFar: zFar)
    }
    
    /// Creates a new `Projection` that projects positions using
    /// an orthogonal projection with the given clipping planes.
    public static func orthogonal(
        left: FloatingPointType,
        right: FloatingPointType,
        bottom: FloatingPointType,
        top: FloatingPointType,
        zNear: FloatingPointType,
        zFar: FloatingPointType
    ) -> Projection {
        _createOrthogonal(left: left, right: right, bottom: bottom, top: top, zNear: zNear, zFar: zFar)
    }
    
    /// Creates a new `Projection` that projects
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
        _createOrthogonalAspect(size: size, aspect: aspect, zNear: zNear, zFar: zFar, flipFov: flipFov)
    }
    
    /// Creates a new `Projection` that projects
    /// positions in a frustum with the given clipping planes.
    public static func frustum(
        left: FloatingPointType,
        right: FloatingPointType,
        bottom: FloatingPointType,
        top: FloatingPointType,
        zNear: FloatingPointType,
        zFar: FloatingPointType
    ) -> Projection {
        _createFrustum(left: left, right: right, bottom: bottom, top: top, zNear: zNear, zFar: zFar)
    }
    
    /// Creates a new `Projection` that projects positions in a frustum. with the given size, X:Y aspect ratio, offset, and clipping planes.
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
        _createFrustumAspect(size: size, aspect: aspect, offset: offset, zNear: zNear, zFar: zFar, flipFov: flipFov)
    }
    
    /// Creates a new `Projection` that scales a given
    /// projection to fit around a given AABB in projection space.
    public static func fitAABB(_ aabb: AABB) -> Projection {
        _createFitAabb(aabb)
    }
    
    /// A scalar value that is the signed factor by which areas are scaled by the matrix.
    ///
    /// If the sign is negative, the matrix flips the orientation of the area.
    ///
    /// The determinant can be used to calculate the invertibility
    /// of a matrix or solve linear systems of equations
    /// involving the matrix, among other applications.
    public var determinant: FloatingPointType {
        _determinant()
    }
    
    /// Returns a `Projection` with the near clipping distance adjusted to a given distance.
    ///
    /// >note: The original `Projection` must be a perspective projection.
    public func perspectiveZNearAdjusted(_ zNear: FloatingPointType) -> Projection {
        _perspectiveZnearAdjusted(newZnear: zNear)
    }
    
    /// Returns the clipping plane of the `Projection`.
    public func projectionPlane(_ plane: Planes) -> Plane {
        _projectionPlane(Int(plane.rawValue))
    }
    
    /// The `Projection` with the signs of the values of the Y column flipped.
    public var flippedY: Projection {
        _flippedY()
    }
    
    /// Returns a `Projection` with the X and Y values from the
    /// given `Vector2` added to the first and second
    /// values of the final column respectively.
    public func jitterOffseted(_ offset: Vector2) -> Projection {
        _jitterOffseted(offset: offset)
    }
    
    /// Returns the vertical field of view of the projection
    /// associated with the given horizontal field of view and aspect ratio.
    ///
    /// - Parameters:
    ///   - fovX: The horizontal field of view in degrees.
    ///   - aspect: The aspect ratio in degrees.
    public static func fovY(fovX: FloatingPointType, aspect: FloatingPointType) -> FloatingPointType {
        _fovy(fovx: fovX, aspect: aspect)
    }
    
    /// The distance for the `Projection` beyond which positions are clipped.
    public var zFar: FloatingPointType {
        _zFar()
    }
    
    /// The distance for the Projection before which positions are clipped.
    public var zNear: FloatingPointType {
        _zNear()
    }
    
    /// The X:Y aspect ratio of the `Projection`'s viewport.
    public var aspect: FloatingPointType {
        _aspect()
    }
    
    /// The horizontal field of view of the projection (in degrees).
    public var fov: FloatingPointType {
        _fov()
    }
    
    /// A Boolean value indicating whether the `Projection` performs an orthogonal projection.
    public var isOrthogonal: Bool {
        _isOrthogonal()
    }
    
    /// The dimensions of the viewport plane that the
    /// `Projection` projects positions onto, divided by two.
    public var viewportHalfExtents: Vector2 {
        _viewportHalfExtents()
    }
    
    /// The dimensions of the far clipping plane of the projection, divided by two.
    public var farPlaneHalfExtents: Vector2 {
        _farPlaneHalfExtents()
    }
    
    /// A `Projection` that performs the inverse of
    /// the `Projection`'s projective transformation.
    public var inverted: Projection {
        _inverse()
    }
    
    /// Returns the number of pixels with the given pixel
    /// width displayed per meter, after the `Projection` is applied.
    public func pixelsPerMetter(forPixelWidth pixelWidth: Int) -> Int {
        _pixelsPerMeter(forPixelWidth: pixelWidth)
    }
    
    /// The factor by which the visible level of detail is scaled by the `Projection`.
    public var lodMultiplier: FloatingPointType {
        _lodMultiplier()
    }
    
    /// Accesses the column of the `Projection` at the given index.
    ///
    /// Indices are in the following order: `x`, `y`, `z`, `w`.
    public subscript(columnIndex: Int) -> Vector4 {
        get {
            switch columnIndex {
            case 0: x
            case 1: y
            case 2: z
            case 3: w
            default: fatalError("Attempting to retrieve column \(columnIndex) from projection.")
            }
        }
        set(newValue) {
            switch columnIndex {
            case 0: x = newValue
            case 1: y = newValue
            case 2: z = newValue
            case 3: w = newValue
            default: fatalError("Attempting to set column \(columnIndex) from projection.")
            }
        }
    }
}

extension Projection: Equatable, Hashable {}

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

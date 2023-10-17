
public struct Projection {
    public var xAxis: Vector4
    public var yAxis: Vector4
    public var zAxis: Vector4
    public var wAxis: Vector4
    
    public init(xAxis: Vector4, yAxis: Vector4, zAxis: Vector4, wAxis: Vector4) {
        self.xAxis = xAxis
        self.yAxis = yAxis
        self.zAxis = zAxis
        self.wAxis = wAxis
    }
}

extension Projection {
    public init<T>(xAxisX: T, xAxisY: T, xAxisZ: T, xAxisW: T,
                   yAxisX: T, yAxisY: T, yAxisZ: T, yAxisW: T,
                   zAxisX: T, zAxisY: T, zAxisZ: T, zAxisW: T,
                   wAxisX: T, wAxisY: T, wAxisZ: T, wAxisW: T) where T : BinaryFloatingPoint {
        self.init(xAxis: Vector4(x: xAxisX, y: xAxisY, z: xAxisZ, w: xAxisW),
                  yAxis: Vector4(x: yAxisX, y: yAxisY, z: yAxisZ, w: yAxisW),
                  zAxis: Vector4(x: zAxisX, y: zAxisY, z: zAxisZ, w: zAxisW),
                  wAxis: Vector4(x: wAxisX, y: wAxisY, z: wAxisZ, w: wAxisW))
    }
    
    public init<T>(xAxisX: T, xAxisY: T, xAxisZ: T, xAxisW: T,
                   yAxisX: T, yAxisY: T, yAxisZ: T, yAxisW: T,
                   zAxisX: T, zAxisY: T, zAxisZ: T, zAxisW: T,
                   wAxisX: T, wAxisY: T, wAxisZ: T, wAxisW: T) where T : BinaryInteger {
        self.init(xAxis: Vector4(x: xAxisX, y: xAxisY, z: xAxisZ, w: xAxisW),
                  yAxis: Vector4(x: yAxisX, y: yAxisY, z: yAxisZ, w: yAxisW),
                  zAxis: Vector4(x: zAxisX, y: zAxisY, z: zAxisZ, w: zAxisW),
                  wAxis: Vector4(x: wAxisX, y: wAxisY, z: wAxisZ, w: wAxisW))
    }
    
    public init(transform3D: Transform3D) {
        self = Self._constructor_transform3d(from: transform3D)
    }
    
    public init() {
        self.init(xAxis: Vector4(), yAxis: Vector4(), zAxis: Vector4(), wAxis: Vector4())
    }
    
    // MARK: Operators
    
    public static func == (lhs: Projection, rhs: some ConvertibleToVariant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func * (lhs: Projection, rhs: Vector4) -> Vector4 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    public static func * (lhs: Projection, rhs: Projection) -> Projection {
        Self._operatorMultiply(lhs, rhs)
    }
    
    // MARK: Methods & variables
    
    public static func depthCorrection(flipY: Bool) -> Projection {
        _createDepthCorrection(flipY: flipY)
    }
    
    public static func lightAtlasRect(_ rect: Rect2) -> Projection {
        _createLightAtlasRect(rect)
    }
    
    public static func perspective(
        fovy: Real,
        aspect: Real,
        zNear: Real,
        zFar: Real,
        flipFov: Bool = false
    ) -> Projection {
        _createPerspective(fovy: fovy, aspect: aspect, zNear: zNear, zFar: zFar, flipFov: flipFov)
    }
    
    public static func perspectiveHMD(
        fovy: Real,
        aspect: Real,
        zNear: Real,
        zFar: Real,
        flipFov: Bool,
        eye: Int,
        intraocularDist: Real,
        convergenceDist: Real
    ) -> Projection {
        _createPerspectiveHmd(fovy: fovy, aspect: aspect, zNear: zNear, zFar: zFar, flipFov: flipFov, eye: eye, intraocularDist: intraocularDist, convergenceDist: convergenceDist)
    }
    
    public static func forHMD(
        eye: Int,
        aspect: Real,
        intraocularDist: Real,
        displayWidth: Real,
        displayToLens: Real,
        oversample: Real,
        zNear: Real,
        zFar: Real
    ) -> Projection {
        _createForHmd(eye: eye, aspect: aspect, intraocularDist: intraocularDist, displayWidth: displayWidth, displayToLens: displayToLens, oversample: oversample, zNear: zNear, zFar: zFar)
    }
    
    public static func orthogonal(
        left: Real,
        right: Real,
        bottom: Real,
        top: Real,
        zNear: Real,
        zFar: Real
    ) -> Projection {
        _createOrthogonal(left: left, right: right, bottom: bottom, top: top, zNear: zNear, zFar: zFar)
    }
    
    public static func orthogonalAspect(
        size: Real,
        aspect: Real,
        zNear: Real,
        zFar: Real,
        flipFov: Bool = false
    ) -> Projection {
        _createOrthogonalAspect(size: size, aspect: aspect, zNear: zNear, zFar: zFar, flipFov: flipFov)
    }
    
    public static func frustum(
        left: Real,
        right: Real,
        bottom: Real,
        top: Real,
        zNear: Real,
        zFar: Real
    ) -> Projection {
        _createFrustum(left: left, right: right, bottom: bottom, top: top, zNear: zNear, zFar: zFar)
    }
    
    public static func frustumAspect(
        size: Real,
        aspect: Real,
        offset: Vector2,
        zNear: Real,
        zFar: Real,
        flipFov: Bool = false
    ) -> Projection {
        _createFrustumAspect(size: size, aspect: aspect, offset: offset, zNear: zNear, zFar: zFar, flipFov: flipFov)
    }
    
    public static func fitAABB(_ aabb: AABB) -> Projection {
        _createFitAabb(aabb)
    }
    
    public var determinant: Real {
        _determinant()
    }
    
    public func perspectiveZNearAdjusted(_ zNear: Real) -> Projection {
        _perspectiveZnearAdjusted(newZnear: zNear)
    }
    
    public func projectionPlane(_ plane: Int) -> Plane {
        _projectionPlane(plane)
    }
    
    public var flippedY: Projection {
        _flippedY()
    }
    
    public func jitterOffseted(_ offset: Vector2) -> Projection {
        _jitterOffseted(offset: offset)
    }
    
    public static func fovY(fovX: Real, aspect: Real) -> Real {
        _fovy(fovx: fovX, aspect: aspect)
    }
    
    public var zFar: Real {
        _zFar()
    }
    
    public var zNear: Real {
        _zNear()
    }
    
    public var aspect: Real {
        _aspect()
    }
    
    public var fov: Real {
        _fov()
    }
    
    public var isOrthogonal: Bool {
        _isOrthogonal()
    }
    
    public var viewportHalfExtents: Vector2 {
        _viewportHalfExtents()
    }
    
    public var farPlaneHalfExtents: Vector2 {
        _farPlaneHalfExtents()
    }
    
    public var inversed: Projection {
        _inverse()
    }
    
    public func pixelsPerMetter(forPixelWidth pixelWidth: Int) -> Int {
        _pixelsPerMeter(forPixelWidth: pixelWidth)
    }
    
    public var lodMultiplier: Real {
        _lodMultiplier()
    }
}

// MARK: - Extensions

extension Projection: Equatable, Hashable {}

extension Projection: Codable {
    public func encode(to encoder: Encoder) throws {
        try [xAxis, yAxis, zAxis, wAxis].encode(to: encoder)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        xAxis = try container.decode(Vector4.self)
        yAxis = try container.decode(Vector4.self)
        zAxis = try container.decode(Vector4.self)
        wAxis = try container.decode(Vector4.self)
    }
}

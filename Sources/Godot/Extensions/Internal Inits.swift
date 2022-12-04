import Foundation

// Inits used only for static properties inside the Godot target.

internal extension Basis {
    init(_ xAxisX: Float, _ xAxisY: Float, _ xAxisZ: Float,
         _ yAxisX: Float, _ yAxisY: Float, _ yAxisZ: Float,
         _ zAxisX: Float, _ zAxisY: Float, _ zAxisZ: Float) {
        self.init(x: Vector3(x: xAxisX, y: xAxisY, z: xAxisZ),
                  y: Vector3(x: yAxisX, y: yAxisY, z: yAxisZ),
                  z: Vector3(x: zAxisX, y: zAxisY, z: zAxisZ))
    }
}

internal extension Color {
    init(_ r: Float, _ g: Float, _ b: Float, _ a: Float) {
        self.init(r: r, g: g, b: b, a: a)
    }
}

internal extension Plane {
    init(_ a: Float, _ b: Float, _ c: Float, _ d: Float) {
        self.init(normal: Vector3(x: a, y: b, z: c), d: d)
    }
}

internal extension Projection {
    init(_ xAxisX: Float, _ xAxisY: Float, _ xAxisZ: Float, _ xAxisW: Float,
         _ yAxisX: Float, _ yAxisY: Float, _ yAxisZ: Float, _ yAxisW: Float,
         _ zAxisX: Float, _ zAxisY: Float, _ zAxisZ: Float, _ zAxisW: Float,
         _ wAxisX: Float, _ wAxisY: Float, _ wAxisZ: Float, _ wAxisW: Float) {
        self.init(x: Vector4(x: xAxisX, y: xAxisY, z: xAxisZ, w: xAxisW),
                  y: Vector4(x: yAxisX, y: yAxisY, z: yAxisZ, w: yAxisW),
                  z: Vector4(x: zAxisX, y: zAxisY, z: zAxisZ, w: zAxisW),
                  w: Vector4(x: wAxisX, y: wAxisY, z: wAxisZ, w: wAxisW))
    }
}

internal extension Quaternion {
    init(_ x: Float, _ y: Float, _ z: Float, _ w: Float) {
        self.init(x: x, y: y, z: z, w: w)
    }
}

internal extension Transform2D {
    init(_ xAxisX: Float, _ xAxisY: Float,
         _ yAxisX: Float, _ yAxisY: Float,
         _ originX: Float, _ originY: Float) {
        self.init(x: Vector2(x: xAxisX, y: xAxisY),
                  y: Vector2(x: yAxisX, y: yAxisY),
                  origin: Vector2(x: originX, y: originY))
    }
}

internal extension Transform3D {
    init(_ xAxisX: Float, _ xAxisY: Float, _ xAxisZ: Float,
         _ yAxisX: Float, _ yAxisY: Float, _ yAxisZ: Float,
         _ zAxisX: Float, _ zAxisY: Float, _ zAxisZ: Float,
         _ originX: Float, _ originY: Float, _ originZ: Float) {
        self.init(basis: Basis(x: Vector3(x: xAxisX, y: xAxisY, z: xAxisZ),
                               y: Vector3(x: yAxisX, y: yAxisY, z: yAxisZ),
                               z: Vector3(x: zAxisX, y: zAxisY, z: zAxisZ)),
                  origin: Vector3(x: originX, y: originY, z: originZ))
    }
}

internal extension Vector2 {
    init(_ x: Float, _ y: Float) {
        self.init(x: x, y: y)
    }
}

internal extension Vector2i {
    init(_ x: Int, _ y: Int) {
        self.init(x: x, y: y)
    }
}

internal extension Vector3 {
    init(_ x: Float, _ y: Float, _ z: Float) {
        self.init(x: x, y: y, z: z)
    }
}

internal extension Vector3i {
    init(_ x: Int, _ y: Int, _ z: Int) {
        self.init(x: x, y: y, z: z)
    }
}

internal extension Vector4 {
    init(_ x: Float, _ y: Float, _ z: Float, _ w: Float) {
        self.init(x: x, y: y, z: z, w: w)
    }
}

internal extension Vector4i {
    init(_ x: Int, _ y: Int, _ z: Int, _ w: Int) {
        self.init(x: x, y: y, z: z, w: w)
    }
}

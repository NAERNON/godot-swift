import Foundation

// Inits used only for static properties inside the Godot target.

internal extension Basis {
    init(_ xAxisX: Double, _ xAxisY: Double, _ xAxisZ: Double,
         _ yAxisX: Double, _ yAxisY: Double, _ yAxisZ: Double,
         _ zAxisX: Double, _ zAxisY: Double, _ zAxisZ: Double) {
        self.init(xAxis: Vector3(x: xAxisX, y: xAxisY, z: xAxisZ),
                  yAxis: Vector3(x: yAxisX, y: yAxisY, z: yAxisZ),
                  zAxis: Vector3(x: zAxisX, y: zAxisY, z: zAxisZ))
    }
}

internal extension Color {
    init(_ r: Double, _ g: Double, _ b: Double, _ a: Double) {
        self.init(r: r, g: g, b: b, a: a)
    }
}

internal extension Plane {
    init(_ a: Double, _ b: Double, _ c: Double, _ d: Double) {
        self.init(a: a, b: b, c: c, d: d)
    }
}

internal extension Projection {
    init(_ xAxisX: Double, _ xAxisY: Double, _ xAxisZ: Double, _ xAxisW: Double,
         _ yAxisX: Double, _ yAxisY: Double, _ yAxisZ: Double, _ yAxisW: Double,
         _ zAxisX: Double, _ zAxisY: Double, _ zAxisZ: Double, _ zAxisW: Double,
         _ wAxisX: Double, _ wAxisY: Double, _ wAxisZ: Double, _ wAxisW: Double) {
        self.init(xAxis: Vector4(x: xAxisX, y: xAxisY, z: xAxisZ, w: xAxisW),
                  yAxis: Vector4(x: yAxisX, y: yAxisY, z: yAxisZ, w: yAxisW),
                  zAxis: Vector4(x: zAxisX, y: zAxisY, z: zAxisZ, w: zAxisW),
                  wAxis: Vector4(x: wAxisX, y: wAxisY, z: wAxisZ, w: wAxisW))
    }
}

internal extension Quaternion {
    init(_ x: Double, _ y: Double, _ z: Double, _ w: Double) {
        self.init(x: x, y: y, z: z, w: w)
    }
}

internal extension Transform2D {
    init(_ xAxisX: Double, _ xAxisY: Double,
         _ yAxisX: Double, _ yAxisY: Double,
         _ originX: Double, _ originY: Double) {
        self.init(xAxis: Vector2(x: xAxisX, y: xAxisY),
                  yAxis: Vector2(x: yAxisX, y: yAxisY),
                  origin: Vector2(x: originX, y: originY))
    }
}

internal extension Transform3D {
    init(_ xAxisX: Double, _ xAxisY: Double, _ xAxisZ: Double,
         _ yAxisX: Double, _ yAxisY: Double, _ yAxisZ: Double,
         _ zAxisX: Double, _ zAxisY: Double, _ zAxisZ: Double,
         _ originX: Double, _ originY: Double, _ originZ: Double) {
        self.init(xAxis: Vector3(x: xAxisX, y: xAxisY, z: xAxisZ),
                  yAxis: Vector3(x: yAxisX, y: yAxisY, z: yAxisZ),
                  zAxis: Vector3(x: zAxisX, y: zAxisY, z: zAxisZ),
                  origin: Vector3(x: originX, y: originY, z: originZ))
    }
}

internal extension Vector2 {
    init(_ x: Double, _ y: Double) {
        self.init(x: x, y: y)
    }
}

internal extension Vector2i {
    init(_ x: Int, _ y: Int) {
        self.init(x: x, y: y)
    }
}

internal extension Vector3 {
    init(_ x: Double, _ y: Double, _ z: Double) {
        self.init(x: x, y: y, z: z)
    }
}

internal extension Vector3i {
    init(_ x: Int, _ y: Int, _ z: Int) {
        self.init(x: x, y: y, z: z)
    }
}

internal extension Vector4 {
    init(_ x: Double, _ y: Double, _ z: Double, _ w: Double) {
        self.init(x: x, y: y, z: z, w: w)
    }
}

internal extension Vector4i {
    init(_ x: Int, _ y: Int, _ z: Int, _ w: Int) {
        self.init(x: x, y: y, z: z, w: w)
    }
}

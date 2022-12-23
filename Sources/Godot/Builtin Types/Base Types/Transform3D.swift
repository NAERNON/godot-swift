import Foundation

public struct Transform3D {
    public var basis: Basis
    public var origin: Vector3
    
    public init(basis: Basis, origin: Vector3) {
        self.basis = basis
        self.origin = origin
    }
    
    public init() {
        self.init(basis: Basis(), origin: Vector3())
    }
    
    public init(xAxisX: Real, xAxisY: Real, xAxisZ: Real,
                yAxisX: Real, yAxisY: Real, yAxisZ: Real,
                zAxisX: Real, zAxisY: Real, zAxisZ: Real,
                originX: Real, originY: Real, originZ: Real) {
        self.init(basis: Basis(x: Vector3(x: xAxisX, y: xAxisY, z: xAxisZ),
                               y: Vector3(x: yAxisX, y: yAxisY, z: yAxisZ),
                               z: Vector3(x: zAxisX, y: zAxisY, z: zAxisZ)),
                  origin: Vector3(x: originX, y: originY, z: originZ))
    }
}

extension Transform3D: Equatable, Hashable {}

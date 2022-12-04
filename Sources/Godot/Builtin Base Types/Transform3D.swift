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
}

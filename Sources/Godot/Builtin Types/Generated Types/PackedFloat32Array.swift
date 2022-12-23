import Foundation

extension PackedFloat32Array {
    public init() {
        self = Self._constructor()
    }
    
    public init(_ value: PackedFloat32Array) {
        self = Self._constructor(value)
    }
}

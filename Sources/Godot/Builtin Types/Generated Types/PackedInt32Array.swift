import Foundation

extension PackedInt32Array {
    public init() {
        self = Self._constructor()
    }
    
    public init(_ value: PackedInt32Array) {
        self = Self._constructor(value)
    }
}

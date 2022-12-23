import Foundation

extension PackedVector3Array {
    public init() {
        self = Self._constructor()
    }
    
    public init(_ value: PackedVector3Array) {
        self = Self._constructor(value)
    }
}

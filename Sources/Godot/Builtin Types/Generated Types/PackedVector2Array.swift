import Foundation

extension PackedVector2Array {
    public init() {
        self = Self._constructor()
    }
    
    public init(_ value: PackedVector2Array) {
        self = Self._constructor(value)
    }
}

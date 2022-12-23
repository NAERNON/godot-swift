import Foundation

extension PackedFloat64Array {
    public init() {
        self = Self._constructor()
    }
    
    public init(_ value: PackedFloat64Array) {
        self = Self._constructor(value)
    }
}

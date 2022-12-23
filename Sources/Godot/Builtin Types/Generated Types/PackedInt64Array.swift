import Foundation

extension PackedInt64Array {
    public init() {
        self = Self._constructor()
    }
    
    public init(_ value: PackedInt64Array) {
        self = Self._constructor(value)
    }
}

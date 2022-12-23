import Foundation

extension PackedColorArray {
    public init() {
        self = Self._constructor()
    }
    
    public init(_ value: PackedColorArray) {
        self = Self._constructor(value)
    }
}

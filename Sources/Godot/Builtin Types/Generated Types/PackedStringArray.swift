import Foundation

extension PackedStringArray {
    public init() {
        self = Self._constructor()
    }
    
    public init(_ value: PackedStringArray) {
        self = Self._constructor(value)
    }
}

import Foundation

extension RID {
    public init() {
        self = Self._constructor()
    }
    
    public init(_ value: RID) {
        self = Self._constructor(value)
    }
}

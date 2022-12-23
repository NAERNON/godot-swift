import Foundation

extension Signal {
    public init() {
        self = Self._constructor()
    }
    
    public init(_ value: Signal) {
        self = Self._constructor(value)
    }
}

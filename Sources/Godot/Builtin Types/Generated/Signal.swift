import Foundation

extension Signal {
    public init() {
        self = Self._constructor()
    }
    
    public init(_ value: Signal) {
        self = Self._constructor(value)
    }
    
    public init(object: Object, signal: StringName) {
        self = Self._constructor(object: object, signal: signal)
    }
}

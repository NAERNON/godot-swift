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
    
    // MARK: Operators
    
    public static func == (lhs: Signal, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: Signal) -> Bool {
        Self._operatorEqual(rhs, lhs)
    }
}

// MARK: - Extensions

extension Signal: Equatable {
    public static func == (lhs: Signal, rhs: Signal) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}

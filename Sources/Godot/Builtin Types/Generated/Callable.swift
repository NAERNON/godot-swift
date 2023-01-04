import Foundation

extension Callable {
    public init() {
        self = Self._constructor()
    }
    
    public init(_ value: Callable) {
        self = Self._constructor(from: value)
    }
    
    public init(object: Object, method: StringName) {
        self = Self._constructor(object: object, method: method)
    }
    
    // MARK: Operators
    
    public static func == (lhs: Callable, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: Callable) -> Bool {
        Self._operatorEqual(rhs, lhs)
    }
}

// MARK: - Extensions

extension Callable: Equatable {
    public static func == (lhs: Callable, rhs: Callable) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}

extension Callable: Hashable {
    public var hashValue: Int { _hash() }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(_hash())
    }
}

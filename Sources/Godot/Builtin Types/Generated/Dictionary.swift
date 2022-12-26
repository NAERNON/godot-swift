import Foundation

extension Dictionary {
    public init() {
        self = Self._constructor()
    }
    
    public init(_ value: Dictionary) {
        self = value._duplicate()
    }
    
    // MARK: Operators
    
    public static func == (lhs: Dictionary, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: Dictionary) -> Bool {
        Self._operatorEqual(rhs, lhs)
    }
}

// MARK: - Extensions

extension Dictionary: Equatable {
    public static func == (lhs: Dictionary, rhs: Dictionary) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}

extension Dictionary: Hashable {
    public var hashValue: Int { _hash() }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(_hash())
    }
}

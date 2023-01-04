import Foundation

extension RID {
    public init() {
        self = Self._constructor()
    }
    
    public init(_ value: RID) {
        self = Self._constructor(from: value)
    }
    
    // MARK: Operators
    
    public static func == (lhs: RID, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: RID) -> Bool {
        Self._operatorEqual(rhs, lhs)
    }
}

// MARK: - Extensions

extension RID: Equatable {
    public static func == (lhs: RID, rhs: RID) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}

extension RID: Comparable {
    public static func < (lhs: RID, rhs: RID) -> Bool {
        Self._operatorLess(lhs, rhs)
    }
    
    public static func <= (lhs: RID, rhs: RID) -> Bool {
        Self._operatorLessEqual(lhs, rhs)
    }
    
    public static func > (lhs: RID, rhs: RID) -> Bool {
        Self._operatorGreater(lhs, rhs)
    }
    
    public static func >= (lhs: RID, rhs: RID) -> Bool {
        Self._operatorGreaterEqual(lhs, rhs)
    }
}

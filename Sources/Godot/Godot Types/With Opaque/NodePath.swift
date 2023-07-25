import Foundation

extension NodePath {
    public init() {
        self = Self._constructor()
    }
    
    public init(_ value: NodePath) {
        self = Self._constructor_nodepath(from: value)
    }
    
    public init(string: String) {
        self = Self._constructor_string(from: string)
    }
        
    // MARK: Operators
    
    public static func == (lhs: NodePath, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: NodePath) -> Bool {
        Self._operatorEqual(rhs, lhs)
    }
}

// MARK: - Extensions

extension NodePath: Equatable {
    public static func == (lhs: NodePath, rhs: NodePath) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}

extension NodePath: Hashable {
    public var hashValue: Int { _hash() }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(_hash())
    }
}

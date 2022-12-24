import Foundation

extension NodePath {
    public init() {
        self = Self._constructor()
    }
    
    public init(_ value: NodePath) {
        self = Self._constructor(value)
    }
    
    public init(string: String) {
        self = Self._constructor(string)
    }
}

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

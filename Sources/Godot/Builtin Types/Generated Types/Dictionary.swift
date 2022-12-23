import Foundation

extension Dictionary {
    public init() {
        self = Self._constructor()
    }
    
    public init(_ value: Dictionary) {
        self = value._duplicate()
    }
}

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

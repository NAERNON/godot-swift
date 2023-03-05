import Foundation
import GodotExtensionHeaders

extension StringName {
    public init() {
        self = Self._constructor()
    }
    
    public init(swiftString: Swift.String) {
        self = Self._constructor(from: String(swiftString: swiftString))
    }
    
    public init(_ value: StringName) {
        self = Self._constructor(from: value)
    }
    
    public init(string: String) {
        self = Self._constructor(from: string)
    }
    
    // MARK: Operators
    
    public static func == (lhs: StringName, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: StringName) -> Bool {
        Self._operatorEqual(rhs, lhs)
    }
    
    public static func == (lhs: StringName, rhs: String) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}

// MARK: - Extensions

extension StringName: ExpressibleByStringLiteral, ExpressibleByStringInterpolation {
    public init(stringLiteral value: Swift.String) {
        self.init(swiftString: value)
    }
}

extension StringName: Equatable {
    public static func == (lhs: StringName, rhs: StringName) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}

extension StringName: Hashable {
    public var hashValue: Int { _hash() }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(_hash())
    }
}

extension StringName: Codable {
    public func encode(to encoder: Encoder) throws {
        try Swift.String(godotStringName: self).encode(to: encoder)
    }
    
    public init(from decoder: Decoder) throws {
        self.init(swiftString: try Swift.String(from: decoder))
    }
}
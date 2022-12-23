import Foundation

extension StringName {
    public init(swiftString: Swift.String) {
        self.init(string: String(swiftString: swiftString))
    }
    
    public init(_ value: StringName) {
        self.init(stringName: value)
    }
}

extension StringName: ExpressibleByStringLiteral, ExpressibleByStringInterpolation {
    public init(stringLiteral value: Swift.String) {
        self.init(swiftString: value)
    }
}

extension StringName: Hashable {
    public var hashValue: Int { _hash() }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(_hash())
    }
}

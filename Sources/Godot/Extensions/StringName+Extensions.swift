import Foundation

extension StringName {
    public init(swiftString: Swift.String) {
        self.init(string: String(swiftString: swiftString))
    }
}

extension StringName: ExpressibleByStringLiteral {
    public init(stringLiteral value: Swift.String) {
        self.init(swiftString: value)
    }
}

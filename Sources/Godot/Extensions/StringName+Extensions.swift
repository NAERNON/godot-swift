import Foundation

extension StringName {
    public init(swiftString: Swift.String) {
        self.init(string: String(swiftString: swiftString))
    }
}

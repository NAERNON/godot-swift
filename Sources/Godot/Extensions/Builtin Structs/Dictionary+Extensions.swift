import Foundation

extension Dictionary {
    public init(_ value: Dictionary) {
        self = value.duplicate()
    }
}

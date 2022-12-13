import Foundation

extension Array {
    public init(_ value: Array) {
        self = value.duplicate()
    }
}

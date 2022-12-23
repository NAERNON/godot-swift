import Foundation

extension Dictionary {
    public init(_ value: Dictionary) {
        self = value._duplicate()
    }
}

extension Dictionary: Hashable {
    public var hashValue: Int { _hash() }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(_hash())
    }
}

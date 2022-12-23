import Foundation

extension Callable {
    public init(_ value: Callable) {
        self.init(callable: value)
    }
}

extension Callable: Hashable {
    public var hashValue: Int { _hash() }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(_hash())
    }
}

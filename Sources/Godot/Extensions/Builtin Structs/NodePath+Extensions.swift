import Foundation

extension NodePath {
    public init(_ value: NodePath) {
        self.init(nodePath: value)
    }
}

extension NodePath: Hashable {
    public var hashValue: Int { _hash() }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(_hash())
    }
}

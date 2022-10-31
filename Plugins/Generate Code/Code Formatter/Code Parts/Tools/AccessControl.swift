import Foundation

public enum AccessControl: Comparable {
    case `private`
    case `fileprivate`
    case `internal`
    case `public`
    
    var keyword: Keyword {
        switch self {
        case .private:
            return .private
        case .fileprivate:
            return .fileprivate
        case .internal:
            return .internal
        case .public:
            return .public
        }
    }
}

public protocol AccessControlCode: SwiftCode {
    func `private`() -> Self
    func `fileprivate`() -> Self
    func `internal`() -> Self
    func `public`() -> Self
    func accessControl(_ accessControl: AccessControl?) -> Self
}

extension AccessControlCode {
    public func `private`() -> Self {
        self.accessControl(.private)
    }
    
    public func `fileprivate`() -> Self {
        self.accessControl(.fileprivate)
    }
    
    public func `internal`() -> Self {
        self.accessControl(.internal)
    }
    
    public func `public`() -> Self {
        self.accessControl(.public)
    }
}

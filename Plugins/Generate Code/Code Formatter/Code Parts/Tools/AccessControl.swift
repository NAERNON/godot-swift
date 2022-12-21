import Foundation

public enum AccessControl: Comparable {
    case `private`
    case `fileprivate`
    case `internal`
    case `public`
    case `open`
    
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
        case .open:
            return .open
        }
    }
}

public protocol AccessControlCode: SwiftCode {
    var accessControl: AccessControl? { get set }
    
    func accessControl(_ accessControl: AccessControl?) -> Self
    func `private`() -> Self
    func `fileprivate`() -> Self
    func `internal`() -> Self
    func `public`() -> Self
    func `open`() -> Self
}

extension AccessControlCode {
    public func accessControl(_ accessControl: AccessControl?) -> Self {
        var new = self
        new.accessControl = accessControl
        return new
    }
    
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
    
    public func `open`() -> Self {
        self.accessControl(.open)
    }
}

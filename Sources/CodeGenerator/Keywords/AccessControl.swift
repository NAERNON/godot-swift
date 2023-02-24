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

public extension Code {
    @CodeBuilder
    func accessControl(_ accessControl: AccessControl?) -> some Code {
        if let accessControl {
            keyword(accessControl.keyword)
        } else {
            self
        }
    }
    
    func `private`() -> some Code {
        self.accessControl(.private)
    }
    
    func `fileprivate`() -> some Code {
        self.accessControl(.fileprivate)
    }
    
    func `internal`() -> some Code {
        self.accessControl(.internal)
    }
    
    func `public`() -> some Code {
        self.accessControl(.public)
    }
    
    func `open`() -> some Code {
        self.accessControl(.open)
    }
}

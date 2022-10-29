import Foundation

public protocol AccessibleCode: SwiftCode {
    var accessControl: AccessControl { get set }
    
    func `private`() -> Self
    func `fileprivate`() -> Self
    func `public`() -> Self
}

extension AccessibleCode {
    public func accessControl(_ accessControl: AccessControl) -> Self {
        var new = self
        new.accessControl = accessControl
        return new
    }
    
    public func `private`() -> Self {
        var new = self
        new.accessControl = .private
        return new
    }
    
    public func `fileprivate`() -> Self {
        var new = self
        new.accessControl = .fileprivate
        return new
    }
    
    public func `public`() -> Self {
        var new = self
        new.accessControl = .public
        return new
    }
}

public enum AccessControl {
    case `private`
    case `fileprivate`
    case `internal`
    case hiddenInternal
    case `public`
    
    public var keyword: String? {
        switch self {
        case .private: return "private"
        case .fileprivate: return "fileprivate"
        case .internal: return "internal"
        case .hiddenInternal: return nil
        case .public: return "public"
        }
    }
    
    public var keywordWithSpace: String {
        if let keyword {
            return keyword + " "
        }
        return ""
    }
}

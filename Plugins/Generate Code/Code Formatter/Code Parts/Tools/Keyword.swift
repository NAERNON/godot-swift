import Foundation

extension _AlignableLine {
    func keywords(_ keywords: Keyword...) -> _AlignableLine {
        self.keywords(keywords)
    }
    
    func keywords(_ keywords: [Keyword]) -> _AlignableLine {
        _AlignableLine(components: keywords.codeStringComponents()) + self
    }
}

extension String {
    func keywords(_ keywords: Keyword...) -> _AlignableLine {
        self.keywords(keywords)
    }
    
    func keywords(_ keywords: [Keyword]) -> _AlignableLine {
        _AlignableLine(components: keywords.codeStringComponents() + [self])
    }
}

public enum Keyword {
    case `static`
    
    case `private`
    case `fileprivate`
    case `internal`
    case `public`
    case `final`
    
    case `mutating`
    
    fileprivate var string: String {
        switch self {
        case .static: return "static"
        case .private: return "private"
        case .fileprivate: return "fileprivate"
        case .internal: return "internal"
        case .public: return "public"
        case .final: return "final"
        case .mutating: return "mutating"
        }
    }
    
    /// An Integer value defining the order of the keywords.
    /// A greater value indicates a keyword placed before.
    /// It also defines exclusivity. Therefore, two keywords with the same value
    /// cannot be together on the same statement.
    fileprivate var priority: Int {
        switch self {
        case .private, .fileprivate, .internal, .public:
            return 100
        case .mutating:
            return 75
        case .static:
            return 50
        case .final:
            return 10
        }
    }
}

private extension Array where Element == Keyword {
    func codeStringComponents() -> [String] {
        var priorityToKeyword = [Int : Keyword]()
        // The latest keyword with the same priority is used.
        for keyword in self {
            priorityToKeyword[keyword.priority] = keyword
        }
        
        return priorityToKeyword.values
            .sorted { $0.priority > $1.priority }
            .map { $0.string + " " }
    }
}

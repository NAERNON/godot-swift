import Foundation

struct _KeywordsCode<Content>: SwiftCode where Content: SwiftCode {
    let keywords: [Keyword]
    let content: () -> Content
    
    init(_ keywords: [Keyword], @CodeBuilder content: @escaping () -> Content) {
        self.keywords = keywords
        self.content = content
    }
    
    var body: Never { fatalError() }
    
    func keywordsWithSpaceString() -> String {
        var priorityToKeyword = [Int : Keyword]()
        // The latest keyword with the same priority is used.
        for keyword in keywords {
            priorityToKeyword[keyword.priority] = keyword
        }
        
        return priorityToKeyword.values
            .sorted { $0.priority < $1.priority }
            .reduce("") { partialResult, keyword in
                partialResult + keyword.string + " "
            }
    }
}

extension SwiftCode {
    public func prefixed(by keywords: [Keyword]) -> some SwiftCode {
        _KeywordsCode(keywords) {
            self
        }
    }
}

public enum Keyword {
    case `static`
    
    case `private`
    case `fileprivate`
    case `internal`
    case `public`
    
    fileprivate var string: String {
        switch self {
        case .static: return "static"
        case .private: return "private"
        case .fileprivate: return "fileprivate"
        case .internal: return "internal"
        case .public: return "public"
        }
    }
    
    /// An Integer value defining the order of the keywords.
    /// A greater value indicates a keyword placed before.
    /// It also defines exclusivity. Therefore, two keywords with the same value
    /// cannot be together on the same statement.
    fileprivate var priority: Int {
        switch self {
        case .static:
            return 10
        case .private, .fileprivate, .internal, .public:
            return 100
        }
    }
}

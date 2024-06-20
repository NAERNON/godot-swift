import SwiftSyntax

enum AccessControl: Comparable {
    case `private`
    case `internal`
    case `public`
    case `open`
    
    var keyword: Keyword {
        switch self {
        case .open: .open
        case .public: .public
        case .internal: .internal
        case .private: .private
        }
    }
}

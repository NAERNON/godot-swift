
enum AccessControl: Comparable {
    case `private`
    case `internal`
    case `public`
    case `open`
    
    var keyword: Syntax {
        switch self {
        case .open: "open"
        case .public: "public"
        case .internal: "internal"
        case .private: "private"
        }
    }
}

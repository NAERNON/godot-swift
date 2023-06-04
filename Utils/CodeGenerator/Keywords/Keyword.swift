import Foundation

public enum Keyword {
    case `private`
    case `fileprivate`
    case `internal`
    case `public`
    case `open`
    
    case `static`
    case `class`
    
    case `final`
    case `override`
    case `mutating`
    case `required`
    case convenience
    case privateSet
    case filePrivateSet
    
    fileprivate var string: String {
        switch self {
        case .static: return "static"
        case .class: return "class"
        case .private: return "private"
        case .fileprivate: return "fileprivate"
        case .internal: return "internal"
        case .public: return "public"
        case .open: return "open"
        case .final: return "final"
        case .override: return "override"
        case .mutating: return "mutating"
        case .required: return "required"
        case .convenience: return "convenience"
        case .privateSet: return "private(set)"
        case .filePrivateSet: return "fileprivate(set)"
        }
    }
}

public extension Code {
    func keyword(_ keyword: Keyword) -> some Code {
        prefix(keyword.string + " ")
    }
    
    @CodeBuilder
    func `static`(_ state: Bool = true) -> some Code {
        if state {
            keyword(.static)
        } else {
            self
        }
    }
    
    @CodeBuilder
    func `class`(_ state: Bool = true) -> some Code {
        if state {
            keyword(.class)
        } else {
            self
        }
    }
    
    @CodeBuilder
    func `final`(_ state: Bool = true) -> some Code {
        if state {
            keyword(.final)
        } else {
            self
        }
    }
    
    @CodeBuilder
    func `override`(_ state: Bool = true) -> some Code {
        if state {
            keyword(.override)
        } else {
            self
        }
    }
    
    @CodeBuilder
    func `mutating`(_ state: Bool = true) -> some Code {
        if state {
            keyword(.mutating)
        } else {
            self
        }
    }
    
    @CodeBuilder
    func `required`(_ state: Bool = true) -> some Code {
        if state {
            keyword(.required)
        } else {
            self
        }
    }
    
    @CodeBuilder
    func convenience(_ state: Bool = true) -> some Code {
        if state {
            keyword(.convenience)
        } else {
            self
        }
    }
    
    @CodeBuilder
    func privateSet(_ state: Bool = true) -> some Code {
        if state {
            keyword(.privateSet)
        } else {
            self
        }
    }
    
    @CodeBuilder
    func fileprivateSet(_ state: Bool = true) -> some Code {
        if state {
            keyword(.filePrivateSet)
        } else {
            self
        }
    }
}

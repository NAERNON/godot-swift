import Foundation

enum AccessControl: Comparable {
    case `private`
    case `fileprivate`
    case `internal`
    case `public`
    case `open`
    
    init?(accessibility: String?) {
        guard let accessibility else {
            return nil
        }
#warning("Check all accessibility")
        switch accessibility {
        case "source.lang.swift.accessibility.open": self = .open
        case "source.lang.swift.accessibility.public": self = .public
        case "source.lang.swift.accessibility.internal": self = .internal
        case "source.lang.swift.accessibility.fileprivate": self = .fileprivate
        case "source.lang.swift.accessibility.private": self = .private
        default: return nil
        }
    }
}

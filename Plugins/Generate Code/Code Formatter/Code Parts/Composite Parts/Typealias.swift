import Foundation

public struct Typealias: SwiftCode, AccessControlCode {
    let newType: String
    let type: String
    private var accessControl: AccessControl? = nil
    
    public init(_ newType: String, type: String) {
        self.newType = newType
        self.type = type
    }
    
    public var body: some SwiftCode {
        "typealias \(newType) = \(type)".keywords(keywords)
    }
    
    private var keywords: [Keyword] {
        if let accessControl {
            return [accessControl.keyword]
        }
        return []
    }
    
    // MARK: Modifiers
    
    public func accessControl(_ accessControl: AccessControl?) -> Typealias {
        var new = self
        new.accessControl = accessControl
        return new
    }
}

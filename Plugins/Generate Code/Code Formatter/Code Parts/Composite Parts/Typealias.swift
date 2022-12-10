import Foundation

public struct Typealias: SwiftCode, AccessControlCode {
    let newType: String
    let type: String
    public var accessControl: AccessControl? = nil
    
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
}

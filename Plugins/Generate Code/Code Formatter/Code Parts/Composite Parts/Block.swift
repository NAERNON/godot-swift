import Foundation

public struct Block<Content>: SwiftCode, AccessControlCode where Content: SwiftCode {
    let statement: String
    let content: () -> Content
    private var accessControl: AccessControl? = nil
    
    public init(_ statement: String, @CodeBuilder content: @escaping () -> Content) {
        self.statement = statement
        self.content = content
    }
    
    public var body: some SwiftCode {
        "\(statement) {".keywords(keywords)
        content().indentation()
        "}"
    }
    
    private var keywords: [Keyword] {
        if let accessControl {
            return [accessControl.keyword]
        }
        return []
    }
    
    // MARK: Modifiers
    
    public func accessControl(_ accessControl: AccessControl?) -> Block {
        var new = self
        new.accessControl = accessControl
        return new
    }
}

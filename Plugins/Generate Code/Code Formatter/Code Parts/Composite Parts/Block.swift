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

#warning("Necessary ? If used only by if.")
public struct BlockWithFallback<Content, Fallback>: SwiftCode where Content: SwiftCode, Fallback: SwiftCode {
    let statement: String
    let content: () -> Content
    let fallbackStatement: String
    let fallback: () -> Fallback
    
    public init(_ statement: String,
                @CodeBuilder content: @escaping () -> Content,
                fallbackStatement: String,
                @CodeBuilder fallback: @escaping () -> Fallback) {
        self.statement = statement
        self.content = content
        self.fallbackStatement = fallbackStatement
        self.fallback = fallback
    }
    
    public var body: some SwiftCode {
        "\(statement) {"
        content().indentation()
        "} \(fallbackStatement) {"
        fallback().indentation()
        "}"
    }
}

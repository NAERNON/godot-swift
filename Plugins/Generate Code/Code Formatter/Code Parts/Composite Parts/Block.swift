import Foundation

public struct Block<Content>: SwiftCode where Content: SwiftCode {
    let statement: String
    let content: () -> Content
    private var keywords: [Keyword] = []
    
    public init(_ statement: String, @CodeBuilder content: @escaping () -> Content) {
        self.statement = statement
        self.content = content
    }
    
    public var body: some SwiftCode {
        "\(statement) {".keywords(keywords)
        content().indentation()
        "}"
    }
    
    // MARK: Modifiers
    
    public func keywords(_ keywords: [Keyword]) -> Block<Content> {
        var new = self
        new.keywords = new.keywords + keywords
        return new
    }
}

public struct BlockWithFallback<Content, Fallback>: SwiftCode where Content: SwiftCode, Fallback: SwiftCode {
    let statement: String
    let content: () -> Content
    let fallbackStatement: String
    let fallback: () -> Fallback
    private var keywords: [Keyword] = []
    
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
        "\(statement) {".keywords(keywords)
        content().indentation()
        "} \(fallbackStatement) {"
        fallback().indentation()
        "}"
    }
    
    // MARK: Modifiers
    
    public func keywords(_ keywords: [Keyword]) -> BlockWithFallback<Content, Fallback> {
        var new = self
        new.keywords = new.keywords + keywords
        return new
    }
}

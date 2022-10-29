import Foundation

public struct Block<Content>: SwiftCode, AccessibleCode where Content: SwiftCode {
    let statement: String
    let content: () -> Content
    public var accessControl: AccessControl = .hiddenInternal
    
    public init(_ statement: String, @CodeBuilder content: @escaping () -> Content) {
        self.statement = statement
        self.content = content
    }
    
    public var body: some SwiftCode {
        "\(accessControl.keywordWithSpace)\(statement) {"
        content().indentation()
        "}"
    }
}

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

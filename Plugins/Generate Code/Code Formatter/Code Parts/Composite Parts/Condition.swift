import Foundation

public struct Condition<Content>: SwiftCode where Content: SwiftCode {
    let condition: String
    let content: () -> Content
    
    public init(_ condition: String, @CodeBuilder content: @escaping () -> Content) {
        self.condition = condition
        self.content = content
    }
    
    public var body: some SwiftCode {
        Block("if \(condition)") {
            content()
        }
    }
}

public struct ConditionElse<Content, ElseContent>: SwiftCode where Content: SwiftCode, ElseContent: SwiftCode {
    let condition: String
    let content: () -> Content
    let elseContent: () -> ElseContent
    
    public init(_ condition: String,
                @CodeBuilder content: @escaping () -> Content,
                @CodeBuilder else elseContent: @escaping () -> ElseContent) {
        self.condition = condition
        self.content = content
        self.elseContent = elseContent
    }
    
    public var body: some SwiftCode {
        BlockWithFallback("if \(condition)", content: {
            content()
        }, fallbackStatement: "else") {
            elseContent()
        }
    }
}

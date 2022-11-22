import Foundation

public struct Guard<Content>: SwiftCode where Content: SwiftCode {
    let condition: String
    let content: () -> Content
    
    public init(condition: String,
                @CodeBuilder else content: @escaping () -> Content) {
        self.condition = condition
        self.content = content
    }
    
    public var body: some SwiftCode {
        "guard \(condition) else {"
        content().indentation()
        "}"
    }
}

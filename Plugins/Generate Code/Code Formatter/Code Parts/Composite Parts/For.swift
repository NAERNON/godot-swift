import Foundation

public struct For<Content>: SwiftCode where Content: SwiftCode {
    let loopContent: String
    let content: () -> Content
    
    public init(_ loopContent: String,
                @CodeBuilder else content: @escaping () -> Content) {
        self.loopContent = loopContent
        self.content = content
    }
    
    public var body: some SwiftCode {
        "for \(loopContent) {"
        content().indentation()
        "}"
    }
}

import Foundation

struct Comment<Content>: SwiftCode where Content: SwiftCode {
    enum CommentType {
        case line
        case doc
        case block
    }
    
    let type: CommentType
    let content: () -> Content
    
    init(type: CommentType, @CodeBuilder content: @escaping () -> Content) {
        self.type = type
        self.content = content
    }
    
    var body: some SwiftCode {
        switch type {
        case .line:
            LinesPrefix("// ", content: content)
        case .doc:
            LinesPrefix("/// ", content: content)
        case .block:
            "/*"
            LinesPrefix(" ", content: content)
            " */"
        }
    }
}

extension SwiftCode {
    public func commented() -> some SwiftCode {
        Comment(type: .line) {
            self
        }
    }
}

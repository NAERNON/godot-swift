import Foundation

public enum CommentStyle {
    case line
    case doc
    case block
}

public struct Comment<Content>: SwiftCode where Content: SwiftCode {
    let style: CommentStyle
    let content: () -> Content
    
    public init(style: CommentStyle, @CodeBuilder content: @escaping () -> Content) {
        self.style = style
        self.content = content
    }
    
    public var body: some SwiftCode {
        switch style {
        case .line:
            content().linesPrefixed(by: "// ")
        case .doc:
            content().linesPrefixed(by: "/// ")
        case .block:
            "/*"
            content().linesPrefixed(by: " ")
            " */"
        }
    }
}

extension SwiftCode {
    public func comment(style: CommentStyle = .line) -> some SwiftCode {
        Comment(style: style) {
            self
        }
    }
}

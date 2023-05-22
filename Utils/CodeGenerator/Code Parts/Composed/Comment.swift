import Foundation

public enum CommentStyle {
    case line
    case doc
    case block
}

public struct Comment<Content>: Code where Content : Code {
    let style: CommentStyle
    let content: () -> Content
    
    public init(_ style: CommentStyle = .line, @CodeBuilder content: @escaping () -> Content) {
        self.style = style
        self.content = content
    }
    
    public var body: some Code {
        switch style {
        case .line:
            content().indent(prefix: "// ")
        case .doc:
            content().indent(prefix: "/// ")
        case .block:
            "/*"
            content().indent(prefix: " ")
            " */"
        }
    }
}

public extension Code {
    func comment(_ style: CommentStyle = .line) -> some Code {
        Comment(style) {
            self
        }
    }
    
    func documentation(@CodeBuilder _ content: @escaping () -> some Code) -> some Code {
        Container {
            Comment(.doc) {
                content()
            }
            
            self
        }
    }
}

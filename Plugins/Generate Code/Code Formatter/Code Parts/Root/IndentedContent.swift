import Foundation

/// A code with each lined being prefixed by a given `String`.
struct IndentedContent<Content>: Code, RootCode
where Content : Code {
    let indent: String
    let content: () -> Content
    
    init(_ indent: String, @CodeBuilder content: @escaping () -> Content) {
        self.indent = indent
        self.content = content
    }
    
    var body: Never { fatalError() }
    
    func formattedCode() -> FormattedCode {
        content().formatted().indented(by: indent)
    }
}

public extension Code {
    func indent(prefix: String) -> some Code {
        IndentedContent(prefix) { self }
    }
}

public extension Code {
    func whitespaceIndent(_ spaces: Int) -> some Code {
        indent(prefix: String(repeating: " ", count: spaces))
    }
    
    func indent(_ level: Int = 1) -> some Code {
        whitespaceIndent(level * 4)
    }
}

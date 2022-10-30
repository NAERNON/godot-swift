import Foundation

/// A code with each lined being prefixed by a given `String`.
struct _LinesPrefixedContent<Content>: SwiftCode where Content: SwiftCode {
    let prefix: String
    let prefixAtIndentationLevel: Bool
    let content: () -> Content
    
    init(_ prefix: String, atIndentationLevel: Bool, @CodeBuilder content: @escaping () -> Content) {
        self.prefix = prefix
        self.prefixAtIndentationLevel = atIndentationLevel
        self.content = content
    }
    
    var body: Never { fatalError() }
}

extension SwiftCode {
    public func linesPrefixed(by prefix: String, atIndentationLevel: Bool = true) -> some SwiftCode {
        _LinesPrefixedContent(prefix, atIndentationLevel: atIndentationLevel) {
            self
        }
    }
}

import Foundation

/// A code with each lined being prefixed by a given `String`.
struct Prefix<Content>: SwiftCode where Content: SwiftCode {
    let prefix: String
    let prefixAtIndentationLevel: Bool
    let content: () -> Content
    
    init(_ prefix: String, atIndentationLevel: Bool = true, @CodeBuilder content: @escaping () -> Content) {
        self.prefix = prefix
        self.prefixAtIndentationLevel = atIndentationLevel
        self.content = content
    }
    
    var body: Never { fatalError() }
}

extension SwiftCode {
    public func prefixed(by prefix: String, atIndentationLevel: Bool = true) -> some SwiftCode {
        Prefix(prefix, atIndentationLevel: atIndentationLevel) {
            self
        }
    }
}

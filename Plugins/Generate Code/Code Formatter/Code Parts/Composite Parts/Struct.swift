import Foundation

public struct Struct<Content>: SwiftCode where Content: SwiftCode {
    let name: String
    let extensions: [String]
    let content: () -> Content
    fileprivate var keywords: [Keyword] = []
    
    public init(_ name: String,
                extensions: [String] = [],
                @CodeBuilder content: @escaping () -> Content) {
        self.name = name
        self.extensions = extensions
        self.content = content
    }
    
    public var body: some SwiftCode {
        BlockWithExtension(type: "struct", name: name, extensions: extensions, content: content)
            .prefixed(by: keywords)
    }
    
    // MARK: Modifiers
    
    func `private`() -> Struct {
        var new = self
        new.keywords.append(.private)
        return new
    }
    
    func `public`() -> Struct {
        var new = self
        new.keywords.append(.public)
        return new
    }
}

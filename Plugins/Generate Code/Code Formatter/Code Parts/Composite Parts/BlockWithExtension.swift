import Foundation

/// A block with an extension like `Type: Extension1, Extension2`.
public struct BlockWithExtension<Content>: SwiftCode where Content: SwiftCode {
    let type: String
    let name: String
    let extensions: [String]
    let content: () -> Content
    private var keywords: [Keyword] = []
    
    public init(type: String,
                name: String,
                extensions: [String],
                @CodeBuilder content: @escaping () -> Content) {
        self.type = type
        self.name = name
        self.extensions = extensions
        self.content = content
    }
    
    public var body: some SwiftCode {
        Block(blockHeader()) {
            content()
        }.keywords(keywords)
    }
    
    private func blockHeader() -> String {
        var header = type + " " + name
        
        guard !extensions.isEmpty else {
            return header
        }
        
        header += ":"
        for (index, extensionName) in extensions.enumerated() {
            if index > 0 {
                header += ","
            }
            
            header += " " + extensionName
        }
        
        return header
    }
    
    // MARK: Modifiers
    
    public func keywords(_ keywords: [Keyword]) -> BlockWithExtension<Content> {
        var new = self
        new.keywords = new.keywords + keywords
        return new
    }
}

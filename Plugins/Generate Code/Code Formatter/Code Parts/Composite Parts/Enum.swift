import Foundation

public struct Enum<Content>: SwiftCode where Content: SwiftCode {
    let name: String
    let type: String?
    let content: () -> Content
    fileprivate var keywords: [Keyword] = []
    
    public init(_ name: String,
                type: String? = nil,
                @CodeBuilder content: @escaping () -> Content) {
        self.name = name
        self.type = type
        self.content = content
    }
    
    public init<T>(_ name: String,
                   type: T.Type,
                   @CodeBuilder content: @escaping () -> Content) {
        self.init(name, type: String(describing: T.self), content: content)
    }
    
    public var body: some SwiftCode {
        Block(enumString) {
            content()
        }.prefixed(by: keywords)
    }
    
    private var enumString: String {
        var string = ""
        string += "enum " + name
        if let type {
            string += ": " + type
        }
        return string
    }
    
    // MARK: Modifiers
    
    public func `private`() -> some SwiftCode {
        var new = self
        new.keywords.append(.private)
        return new
    }
    
    public func `public`() -> some SwiftCode {
        var new = self
        new.keywords.append(.public)
        return new
    }
}

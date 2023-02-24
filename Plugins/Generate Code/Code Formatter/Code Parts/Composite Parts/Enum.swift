import Foundation

public struct Enum<Content>: Code where Content : Code {
    let name: String
    let type: String?
    let extensions: [String]
    let content: () -> Content
    
    public init(_ name: String,
                type: String? = nil,
                extensions: [String] = [],
                @CodeBuilder content: @escaping () -> Content) {
        self.name = name
        self.type = type
        self.extensions = extensions
        self.content = content
    }
    
    public init<T>(_ name: String,
                   type: T.Type,
                   extensions: [String] = [],
                   @CodeBuilder content: @escaping () -> Content) {
        self.init(name, type: String(describing: T.self), extensions: extensions, content: content)
    }
    
    public var body: some Code {
        _Construct(type: "enum", name: name, extensions: enumExtensions) {
            content()
        }
    }
    
    private var enumExtensions: [String] {
        if let type {
            return [type] + extensions
        } else {
            return [] + extensions
        }
    }
}

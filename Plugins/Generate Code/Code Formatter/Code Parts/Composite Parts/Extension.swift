import Foundation

public struct Extension<Content>: Code where Content : Code {
    let name: String
    let extensions: [String]
    let content: () -> Content
    
    public init(_ name: String,
                extensions: [String] = [],
                @CodeBuilder content: @escaping () -> Content) {
        self.name = name
        self.extensions = extensions
        self.content = content
    }
    
    public var body: some Code {
        _Construct(type: "extension", name: name, extensions: extensions) {
            content()
        }
    }
}

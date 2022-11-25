import Foundation

public struct CStringDefinition<Content>: SwiftCode where Content: SwiftCode {
    let string: String
    let name: String
    let content: () -> Content
    
    public init(string: String, name: String, @CodeBuilder content: @escaping () -> Content) {
        self.string = string
        self.name = name
        self.content = content
    }
    
    public var body: some SwiftCode {
        "\"\(string)\".withCString { \(name) in"
        content().indentation()
        "}"
    }
}

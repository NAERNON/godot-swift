import Foundation

public struct For<Content>: Code where Content : Code {
    let loopContent: String
    let content: () -> Content
    
    public init(_ loopContent: String,
                @CodeBuilder else content: @escaping () -> Content) {
        self.loopContent = loopContent
        self.content = content
    }
    
    public var body: some Code {
        "for \(loopContent)".curlyBraces {
            content()
        }
    }
}

import Foundation

public struct Align<Content>: Code, RootCode
where Content : Code {
    let offset: Int
    let content: () -> Content
    
    public init(offset: Int = 0, @CodeBuilder content: @escaping () -> Content) {
        self.offset = offset
        self.content = content
    }
    
    public var body: Never { fatalError() }
    
    func formattedCode() -> FormattedCode {
        content().formatted().aligned(offset: offset)
    }
}

public extension Code {
    func align(offset: Int = 0) -> some Code {
        Align(offset: offset) { self }
    }
}

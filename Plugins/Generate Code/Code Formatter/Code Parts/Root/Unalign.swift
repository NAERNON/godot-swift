import Foundation

public struct Unalign<Content>: Code, RootCode
where Content : Code {
    let content: () -> Content
    
    public init(@CodeBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    public var body: Never { fatalError() }
    
    func formattedCode() -> FormattedCode {
        content().formatted().unaligned()
    }
}

public extension Code {
    func unalign() -> some Code {
        Unalign { self }
    }
}

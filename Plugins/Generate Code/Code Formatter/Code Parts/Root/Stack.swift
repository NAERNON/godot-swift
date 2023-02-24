import Foundation

public struct Stack<Content>: Code, RootCode
where Content : Code {
    let spacing: Int
    let content: () -> Content
    
    public init(spacing: Int = 1, @CodeBuilder content: @escaping () -> Content) {
        self.spacing = spacing
        self.content = content
    }
    
    public var body: Never { fatalError() }
    
    func formattedCode() -> FormattedCode {
        content().formatted().interspace(lineCount: spacing).contained()
    }
}

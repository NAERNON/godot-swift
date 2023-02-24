import Foundation

public struct Space: Code, RootCode {
    let lineCount: Int
    
    public init(_ lineCount: Int = 1) {
        self.lineCount = lineCount
    }
    
    public var body: Never { fatalError() }
    
    func formattedCode() -> FormattedCode {
        .stack(.init(repeating: .emptyLine, count: lineCount)).contained()
    }
}

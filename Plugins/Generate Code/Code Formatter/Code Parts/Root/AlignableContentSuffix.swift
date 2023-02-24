import Foundation

public struct AlignableContentSuffix<Content>: Code, RootCode where Content : Code {
    let alignedString: String
    let content: () -> Content
    
    public init(alignedString: String, @CodeBuilder content: @escaping () -> Content) {
        self.alignedString = alignedString
        self.content = content
    }
    
    public var body: Never { fatalError() }
    
    func formattedCode() -> FormattedCode {
        var lines = [String]()
        alignedString.enumerateLines { line, stop in
            lines.append(line)
        }
        
        var formattedLines = [FormattedCode]()
        for (index, line) in lines.enumerated() {
            if index == 0 {
                formattedLines.append(.alignedLine("", alignedPart: line))
            } else {
                formattedLines.append(.line(line))
            }
        }
        
        return content().formatted().suffixed(by: .stack(formattedLines)).contained()
    }
}

public extension Code {
    func alignableSuffix(string: String) -> some Code {
        AlignableContentSuffix(alignedString: string) {
            self
        }
    }
}

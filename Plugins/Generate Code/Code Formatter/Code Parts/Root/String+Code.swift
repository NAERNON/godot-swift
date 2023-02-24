import Foundation

extension String: Code, RootCode {
    public var body: Never { fatalError() }
    
    func formattedCode() -> FormattedCode {
        var lines = [String]()
        enumerateLines { line, stop in
            lines.append(line)
        }
        
        return .stack(lines.map { .line($0) }).contained()
    }
}


// MARK: - Syntax

struct Syntax: ExpressibleByStringLiteral, ExpressibleByStringInterpolation {
    fileprivate enum Block {
        case string(String)
        case syntax(Syntax)
    }
    
    fileprivate let blocks: [Block]
    
    fileprivate init(blocks: [Block]) {
        self.blocks = blocks
    }
    
    init() {
        blocks = []
    }
    
    init(
        separator: Syntax = .newline,
        @SyntaxGroupBuilder builder: () throws -> SyntaxGroup
    ) rethrows {
        self = try builder().syntax(separator: separator)
    }
    
    init(
        _ header: Syntax,
        separator: Syntax = .newline,
        @SyntaxGroupBuilder builder: () throws -> SyntaxGroup
    ) rethrows {
        self = """
        \(header) {
            \(try builder().syntax(separator: separator))
        }
        """
    }
    
    init(_ string: String) {
        blocks = [.string(string)]
    }
    
    init(stringLiteral value: String) {
        self.init(value)
    }
    
    init(stringInterpolation: StringInterpolation) {
        blocks = stringInterpolation.rawData
    }
}

extension Syntax {
    static func newlines(_ count: Int) -> Syntax {
        Syntax(String(repeating: "\n", count: count))
    }
    
    static var newline: Syntax {
        newlines(1)
    }
    
    var isEmpty: Bool {
        blocks.isEmpty
    }
    
    func formatted() -> String {
        var formatted = String()
        append(blocks: blocks, in: &formatted, indentation: 0)
        return formatted
    }
    
    private func append(
        blocks: [Block],
        in formatted: inout String,
        indentation: Int
    ) {
        var localIndentation = 0
        let indentationString = String(repeating: " ", count: indentation)
        
        for block in blocks {
            switch block {
            case .string(let string):
                let lines = string.split(separator: "\n", omittingEmptySubsequences: false)
                for (index, line) in lines.enumerated() {
                    if index != 0 {
                        formatted.append("\n")
                        formatted.append(indentationString)
                    }
                    formatted.append(contentsOf: line)
                    
                    localIndentation = 0
                    for char in line {
                        if char == " " { localIndentation += 1 }
                        else { break }
                    }
                }
            case .syntax(let syntax):
                append(
                    blocks: syntax.blocks,
                    in: &formatted,
                    indentation: indentation + localIndentation
                )
            }
        }
    }
    
    static func + (lhs: Syntax, rhs: Syntax) -> Syntax {
        self.init(blocks: lhs.blocks + rhs.blocks)
    }
    
    static func += (lhs: inout Syntax, rhs: Syntax) {
        lhs = lhs + rhs
    }
}

// MARK: - StringInterpolation

extension Syntax {
    struct StringInterpolation: StringInterpolationProtocol {
        fileprivate var rawData = [Block]()
        
        init(literalCapacity: Int, interpolationCount: Int) {}
        
        mutating func appendLiteral(_ literal: String) {
            rawData.append(.string(literal))
        }
        
        mutating func appendInterpolation(_ string: some StringProtocol) {
            rawData.append(.string(String(string)))
        }
        
        mutating func appendInterpolation(_ syntax: Syntax) {
            rawData.append(.syntax(syntax))
        }
        
        mutating func appendInterpolation(_ syntax: Syntax?) {
            if let syntax {
                rawData.append(.syntax(syntax))
            }
        }
        
        mutating func appendInterpolation(_ syntaxGroup: SyntaxGroup) {
            rawData.append(.syntax(syntaxGroup.syntax(separator: .newline)))
        }
        
        mutating func appendInterpolation(_ value: some BinaryInteger) {
            rawData.append(.string(String(value)))
        }
        
        mutating func appendInterpolation<T>(_ type: T.Type) {
            rawData.append(.string(String(describing: type)))
        }
    }
}

// MARK: - Join

extension Collection where Element == Syntax {
    func joined(separator: Syntax = "") -> Syntax {
        var blocks = [Syntax.Block]()
        
        var index = self.startIndex
        while index != self.endIndex {
            blocks.append(.syntax(self[index]))
            
            formIndex(after: &index)
            
            if index != self.endIndex {
                blocks.append(.syntax(separator))
            }
        }
        
        return Syntax(blocks: blocks)
    }
}

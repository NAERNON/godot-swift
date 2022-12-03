import Foundation

public struct CodeFormatter {
    public init() {}
    
    public func codeString(from swiftCode: some SwiftCode) -> String {
        guard let startTree = swiftCode.codeTree() else {
            return ""
        }
        
        var stack: [(tree: CodeTree, options: [CodeTreeOption])] = [(startTree, [])]
        var lines: [CodeLine] = []
        /// A dictionary with the key as the start line of the alignment range, and the value the end line and the offset of the alignment.
        var alignmentRanges: [Int : (endLine: Int, offset: Int)] = [:]
        
        var alignmentStart: Int?
        var alignmentOffset = 0
        
        while !stack.isEmpty {
            let (tree, options) = stack.removeFirst()
            let lineIndex = lines.count
            
            switch tree {
            case .line(let codeLine):
                var preLineComponents = [String]()
                var prefixComponents = [String]()
                
                var isAlignedOptionOn = false
                for option in options {
                    switch option {
                    case .aligned(let offset):
                        isAlignedOptionOn = true
                        alignmentOffset = offset
                    case .prefix(let string):
                        prefixComponents.append(string)
                    case .preLine(let string):
                        preLineComponents.append(string)
                    }
                }
                
                if isAlignedOptionOn && alignmentStart == nil {
                    alignmentStart = lineIndex
                } else if !isAlignedOptionOn,
                          let start = alignmentStart {
                    alignmentRanges[start] = (lineIndex, alignmentOffset)
                    alignmentStart = nil
                }
                
                lines.append(codeLine.prefixed(by: preLineComponents + prefixComponents))
            case .group(let subtrees, let option):
                let newOptions = (options + [option]).compactMap { $0 }
                let newSubtrees = subtrees.map({ subtree in
                    (subtree, newOptions)
                })
                
                stack = newSubtrees + stack
            }
        }
        
        // If the last line is also aligned, we need to check if at the end of the stack.
        if let start = alignmentStart {
            alignmentRanges[start] = (lines.count, alignmentOffset)
        }
        
        let stringLines = alignedStringCodeLines(fromLines: lines, alignmentRanges: alignmentRanges)
        return codeString(fromStringLines: stringLines)
    }
    
    private func codeString(fromStringLines lines: [String]) -> String {
        var codeString = ""
        for (index, line) in lines.enumerated() {
            codeString.append(line)
            
            if index < lines.count - 1 {
                codeString.append("\n")
            }
        }
        
        return codeString
    }
    
    private func alignedStringCodeLines(fromLines lines: [CodeLine],
                                        alignmentRanges: [Int : (endLine: Int, offset: Int)]) -> [String] {
        var stringLines = [String]()
        var lineIndex = 0
        while lineIndex < lines.count {
            guard let (endLineIndex, offset) = alignmentRanges[lineIndex] else {
                stringLines.append(lines[lineIndex].codeString(alignmentLength: nil))
                lineIndex += 1
                continue
            }
            
            let alignableLines = lines[lineIndex..<endLineIndex]
            stringLines.append(contentsOf: alignedStringCodeLines(fromLines: alignableLines,
                                                                  offset: offset))
            lineIndex = endLineIndex
        }
        
        return stringLines
    }
    
    private func alignedStringCodeLines<Data: Sequence>(fromLines lines: Data, offset: Int) -> [String]
    where Data.Element == CodeLine
    {
        guard offset >= 0 else {
            print("Offset in aligned code negative (\(offset)). Block is skipped.")
            return []
        }
        
        let maxLength: Int? = lines.filter { $0.isAlignable }.map { $0.alignableLength }.reduce(nil) { partialResult, length in
            if let partialResult, let length {
                return max(partialResult, length)
            } else if let length {
                return length
            } else {
                return partialResult
            }
        }
        
        var stringLines = [String]()
        for line in lines {
            let alignmentLength: Int?
            if let maxLength {
                alignmentLength = maxLength + offset
            } else {
                alignmentLength = nil
            }
            
            stringLines.append(line.codeString(alignmentLength: alignmentLength))
        }
        
        return stringLines
    }
}

// MARK: - Code Line

private struct CodeLine {
    let mainString: String
    let alignableComponent: String?
    
    var isAlignable: Bool { alignableComponent != nil }
    
    init(components: [String], alignableComponent: String?) {
        self.mainString = components.reduce("", { partialResult, component in
            partialResult + component
        })
        self.alignableComponent = alignableComponent
    }
    
    func prefixed(by components: [String]) -> CodeLine {
        CodeLine(components: components + [mainString],
                 alignableComponent: alignableComponent)
    }
    
    var alignableLength: Int? {
        mainString.count
    }
    
    func codeString(alignmentLength: Int?) -> String {
        guard let alignmentLength,
              let alignableComponent else {
            if let alignableComponent {
                return mainString + alignableComponent
            } else {
                return mainString
            }
        }
        
        return mainString + String(repeating: " ", count: alignmentLength - mainString.count) + alignableComponent
    }
}

// MARK: - Code Tree

private enum CodeTree {
    case line(CodeLine)
    case group(subtrees: [CodeTree], option: CodeTreeOption?)
    
    func option(_ option: CodeTreeOption) -> CodeTree {
        .group(subtrees: [self], option: option)
    }
}

private enum CodeTreeOption {
    /// The tree should be aligned with the given offset.
    case aligned(Int)
    /// The tree should be prefixed with the given `String`.
    case prefix(String)
    /// The tree should be prefixed with the given `String` at the beginning of the line.
    case preLine(String)
}

// MARK: - Swift Code extensions

private protocol SwiftRootCode: SwiftCode {
    func rootCodeTree() -> CodeTree?
}

extension SwiftCode {
    fileprivate func codeTree() -> CodeTree? {
#warning("Remove the any keyword")
        if let rootCode = self as? (any SwiftRootCode) {
            return rootCode.rootCodeTree()
        }
        
        return body.codeTree()
    }
}

extension String: SwiftRootCode {
    fileprivate func rootCodeTree() -> CodeTree? {
        var lines = [String]()
        self.enumerateLines(invoking: { line, stop in
            lines.append(line)
        })
        if lines.isEmpty {
            lines.append("")
        }
        
        return .group(subtrees: lines.map {
            .line(CodeLine(components: [$0],
                           alignableComponent: nil))
        }, option: nil)
    }
}

extension EmptyCode: SwiftRootCode {
    fileprivate func rootCodeTree() -> CodeTree? {
        nil
    }
}

extension _AlignedContent: SwiftRootCode {
    fileprivate func rootCodeTree() -> CodeTree? {
        guard let tree = content().codeTree() else {
            return nil
        }
        
        return tree.option(.aligned(offset))
    }
}

extension _AlignableLine: SwiftRootCode {
    fileprivate func rootCodeTree() -> CodeTree? {
        guard !containsNewLinesCharacter() else {
            print("Cannot create line components code because one component contains a line break.")
            return nil
        }
        return .line(CodeLine(components: [mainCodeString], alignableComponent: alignableCode))
    }
}

extension ForEach: SwiftRootCode {
    fileprivate func rootCodeTree() -> CodeTree? {
        .group(subtrees: data.compactMap { content($0).codeTree() },
               option: nil)
    }
}

extension _IndentedContent: SwiftRootCode {
    fileprivate func rootCodeTree() -> CodeTree? {
        guard let tree = content().codeTree() else {
            return nil
        }
        
        let spacesCount: Int
        switch indentation {
        case .spaces(let spaces):
            spacesCount = spaces
        case .level(let level):
            spacesCount = level * 4
        }
        let indentationString = String(repeating: " ", count: spacesCount)
        return tree.option(.prefix(indentationString))
    }
}

extension _LinesPrefixedContent: SwiftRootCode {
    fileprivate func rootCodeTree() -> CodeTree? {
        guard let tree = content().codeTree() else {
            return nil
        }
        
        if prefixAtIndentationLevel {
            return tree.option(.prefix(prefix))
        } else {
            return tree.option(.preLine(prefix))
        }
    }
}

extension _ConditionalContent: SwiftRootCode {
    fileprivate func rootCodeTree() -> CodeTree? {
        if isTrue {
            return trueContent!().codeTree()
        } else {
            return falseContent!().codeTree()
        }
    }
}

extension _TupleCode2: SwiftRootCode {
    fileprivate func rootCodeTree() -> CodeTree? {
        .group(subtrees: [code0.codeTree(),
                          code1.codeTree()].compactMap { $0 },
               option: nil)
    }
}

extension _TupleCode3: SwiftRootCode {
    fileprivate func rootCodeTree() -> CodeTree? {
        .group(subtrees: [code0.codeTree(),
                          code1.codeTree(),
                          code2.codeTree()].compactMap { $0 },
               option: nil)
    }
}

extension _TupleCode4: SwiftRootCode {
    fileprivate func rootCodeTree() -> CodeTree? {
        .group(subtrees: [code0.codeTree(),
                          code1.codeTree(),
                          code2.codeTree(),
                          code3.codeTree()].compactMap { $0 },
               option: nil)
    }
}

extension _TupleCode5: SwiftRootCode {
    fileprivate func rootCodeTree() -> CodeTree? {
        .group(subtrees: [code0.codeTree(),
                          code1.codeTree(),
                          code2.codeTree(),
                          code3.codeTree(),
                          code4.codeTree()].compactMap { $0 },
               option: nil)
    }
}

extension _TupleCode6: SwiftRootCode {
    fileprivate func rootCodeTree() -> CodeTree? {
        .group(subtrees: [code0.codeTree(),
                          code1.codeTree(),
                          code2.codeTree(),
                          code3.codeTree(),
                          code4.codeTree(),
                          code5.codeTree()].compactMap { $0 },
               option: nil)
    }
}

extension _TupleCode7: SwiftRootCode {
    fileprivate func rootCodeTree() -> CodeTree? {
        .group(subtrees: [code0.codeTree(),
                          code1.codeTree(),
                          code2.codeTree(),
                          code3.codeTree(),
                          code4.codeTree(),
                          code5.codeTree(),
                          code6.codeTree()].compactMap { $0 },
               option: nil)
    }
}

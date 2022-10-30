import Foundation

private typealias CodeLine = [String]

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
            case .line(let components):
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
                
                lines.append(preLineComponents + prefixComponents + components)
            case .group(let subtrees, let option):
                let newOptions = (options + [option]).compactMap { $0 }
                let newSubtrees = subtrees.map({ subtree in
                    (subtree, newOptions)
                })
                
                stack = newSubtrees + stack
            }
        }
        
        lines = alignedCodeLines(fromLines: lines, alignmentRanges: alignmentRanges)
        
        return codeString(fromLines: lines)
    }
    
    private func codeString(fromLines lines: [CodeLine]) -> String {
        var codeString = ""
        for (index, line) in lines.enumerated() {
            for component in line {
                codeString.append(component)
            }
            
            if index < lines.count - 1 {
                codeString.append("\n")
            }
        }
        
        return codeString
    }
    
    private func alignedCodeLines(fromLines lines: [CodeLine],
                                  alignmentRanges: [Int : (endLine: Int, offset: Int)]) -> [CodeLine] {
        var returnLines = [CodeLine]()
        var lineIndex = 0
        while lineIndex < lines.count {
            guard let (endLineIndex, offset) = alignmentRanges[lineIndex] else {
                returnLines.append(lines[lineIndex])
                lineIndex += 1
                continue
            }
            
            returnLines.append(contentsOf: alignedCodeLines(fromLines: lines[lineIndex..<endLineIndex].map { $0 },
                                                           offset: offset))
            lineIndex = endLineIndex
        }
        
        return returnLines
    }
    
    private func alignedCodeLines(fromLines lines: [CodeLine], offset: Int) -> [CodeLine] {
        guard offset >= 0 else {
            print("Offset in aligned code negative (\(offset)). Block is skipped.")
            return []
        }
        
        var lengthsOfAllComponentsButLast = [Int?]()
        for line in lines {
            guard line.count > 1,
                  !line.last!.trimmingCharacters(in: .whitespaces).isEmpty else {
                lengthsOfAllComponentsButLast.append(nil)
                continue
            }
            
            let count = line[0..<(line.count-1)].reduce(0) { partialResult, string in
                partialResult + string.count
            }
            lengthsOfAllComponentsButLast.append(count)
        }
        
        let maxLength: Int? = lengthsOfAllComponentsButLast.reduce(nil) { partialResult, length in
            if let partialResult, let length {
                return max(partialResult, length)
            } else if let length {
                return length
            } else {
                return partialResult
            }
        }
        
        guard let maxLength else { return lines }
        
        var newLines = [CodeLine]()
        for lineIndex in 0..<lines.count {
            var line = lines[lineIndex]
            guard let length = lengthsOfAllComponentsButLast[lineIndex] else {
                newLines.append(line)
                continue
            }
            
            line.insert(String(repeating: " ", count: maxLength - length + offset), at: line.count - 1)
            newLines.append(line)
        }
        
        return newLines
    }
}

// MARK: - Code Tree

private enum CodeTree {
    /// A code line is made of several `String`. This is used to separate code parts (usefull for alignment).
    case line(components: [String])
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
        return .group(subtrees: lines.map { .line(components: [$0]) },
                      option: nil)
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

extension _CodeComponentsLine: SwiftRootCode {
    fileprivate func rootCodeTree() -> CodeTree? {
        guard !components.contains(where: { $0.contains("\n") }) else {
            print("Cannot create line components code because one component contains a line break.")
            return nil
        }
        return .line(components: components)
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
        
        let indentationString = String(repeating: " ", count: indentation ?? 4)
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

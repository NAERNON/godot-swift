import Foundation

public struct CodeFormatter {
    public init() {}
    
    public func codeString(from swiftCode: some SwiftCode) -> String {
        guard let startTree = swiftCode.codeTree() else {
            return ""
        }
        
        var stack: [(tree: CodeTree, options: [CodeTreeOption])] = [(startTree, [])]
        var lines: [[String]] = []
        
        while !stack.isEmpty {
            let (tree, options) = stack.removeFirst()
            switch tree {
            case .line(let components):
                var preLineComponents = [String]()
                var prefixComponents = [String]()
                for option in options {
                    switch option {
                    case .aligned:
                        break
                    case .prefix(let string):
                        prefixComponents.append(string)
                    case .preLine(let string):
                        preLineComponents.append(string)
                    }
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
        
        var finalCodeString = ""
        for (index, line) in lines.enumerated() {
            for component in line {
                finalCodeString.append(component)
            }
            
            if index < lines.count - 1 {
                finalCodeString.append("\n")
            }
        }
        return finalCodeString
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
    /// The tree should be aligned.
    case aligned
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

extension _Aligned: SwiftRootCode {
    fileprivate func rootCodeTree() -> CodeTree? {
        guard let tree = content().codeTree() else {
            return nil
        }
        
        return tree.option(.aligned)
    }
}

extension _LineComponentsCode: SwiftRootCode {
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

extension _Indentation: SwiftRootCode {
    fileprivate func rootCodeTree() -> CodeTree? {
        guard let tree = content().codeTree() else {
            return nil
        }
        
        let indentationString = String(repeating: " ", count: indentation ?? 4)
        return tree.option(.prefix(indentationString))
    }
}

extension _LinesPrefix: SwiftRootCode {
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

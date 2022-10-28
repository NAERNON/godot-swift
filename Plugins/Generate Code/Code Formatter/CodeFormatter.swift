import Foundation

public struct CodeFormatter {
    let indentationWidth: Int
    fileprivate(set) var currentIndentation = 0
    
    public init(indentationWidth: Int) {
        self.indentationWidth = indentationWidth
    }
    
    public func codeString(from swiftCode: some SwiftCode) -> String {
        optionalCodeString(from: swiftCode) ?? ""
    }
    
    fileprivate func optionalCodeString(from swiftCode: some SwiftCode) -> String? {
        if let baseCode = swiftCode as? (any SwiftBaseCode) {
            return baseCode.codeString(with: self)
        } else {
            return optionalCodeString(from: swiftCode.body)
        }
    }
}

// MARK: - Swift base code

private protocol SwiftBaseCode: SwiftCode {
    func codeString(with formatter: CodeFormatter) -> String?
}

extension String: SwiftBaseCode {
    func codeString(with formatter: CodeFormatter) -> String? {
        var codeString = ""
        let whitespaces = String(repeating: " ", count: formatter.currentIndentation)
        self.enumerateLines { line, stop in
            codeString += whitespaces + line + "\n"
        }
        _ = codeString.popLast()
        return codeString
    }
}

extension EmptyCode: SwiftBaseCode {
    func codeString(with formatter: CodeFormatter) -> String? {
        return nil
    }
}

extension ForEach: SwiftBaseCode {
    func codeString(with formatter: CodeFormatter) -> String? {
        data.map { formatter.optionalCodeString(from: content($0)) }
            .arrayCodeString()
    }
}

extension ForEachAligned: SwiftBaseCode {
    func codeString(with formatter: CodeFormatter) -> String? {
        let generatedContents = data.map { content($0) }
        let maxAlignmentLength = generatedContents.map({ $0.alignableContentLength }).max() ?? 0
        let alignmentLength = maxAlignmentLength + additionalAlignmentLength
        
        return generatedContents.map { formatter.optionalCodeString(from: $0.aligned(alignmentLength)) }
            .arrayCodeString()
    }
}

extension Indentation: SwiftBaseCode {
    func codeString(with formatter: CodeFormatter) -> String? {
        var newFormatter = formatter
        newFormatter.currentIndentation += indentation ?? formatter.indentationWidth
        
        return newFormatter.optionalCodeString(from: content())
    }
}

extension ConditionalContent: SwiftBaseCode {
    func codeString(with formatter: CodeFormatter) -> String? {
        if isTrue {
            return formatter.optionalCodeString(from: trueContent!())
        } else {
            return formatter.optionalCodeString(from: falseContent!())
        }
    }
}

extension TupleCode2: SwiftBaseCode {
    func codeString(with formatter: CodeFormatter) -> String? {
        [formatter.optionalCodeString(from: code0),
         formatter.optionalCodeString(from: code1)]
            .arrayCodeString()
    }
}

extension TupleCode3: SwiftBaseCode {
    func codeString(with formatter: CodeFormatter) -> String? {
        [formatter.optionalCodeString(from: code0),
         formatter.optionalCodeString(from: code1),
         formatter.optionalCodeString(from: code2)]
            .arrayCodeString()
    }
}

extension TupleCode4: SwiftBaseCode {
    func codeString(with formatter: CodeFormatter) -> String? {
        [formatter.optionalCodeString(from: code0),
         formatter.optionalCodeString(from: code1),
         formatter.optionalCodeString(from: code2),
         formatter.optionalCodeString(from: code3)]
            .arrayCodeString()
    }
}

extension TupleCode5: SwiftBaseCode {
    func codeString(with formatter: CodeFormatter) -> String? {
        [formatter.optionalCodeString(from: code0),
         formatter.optionalCodeString(from: code1),
         formatter.optionalCodeString(from: code2),
         formatter.optionalCodeString(from: code3),
         formatter.optionalCodeString(from: code4)]
            .arrayCodeString()
    }
}

private extension Array where Element == String? {
    func arrayCodeString() -> String? {
        let strings = self.compactMap { $0 }
        guard !strings.isEmpty else {
            return nil
        }
        
        var codeString = ""
        for index in 0..<strings.count {
            codeString += strings[index]
            
            if index < strings.count-1 {
                codeString += "\n"
            }
        }
        return codeString
    }
}

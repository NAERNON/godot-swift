import Foundation

public struct CodeFormatter {
    let indentationWidth: Int
    private(set) var currentIndentation = 0
    
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
    
    func withIdentation(_ indentation: Int) -> CodeFormatter {
        var new = self
        new.currentIndentation = indentation
        return new
    }
}

// MARK: - Swift base code

private protocol SwiftBaseCode: SwiftCode {
    func codeString(with formatter: CodeFormatter) -> String?
}

extension String: SwiftBaseCode {
    func codeString(with formatter: CodeFormatter) -> String? {
        return self.linesPrefixed(with: String(repeating: " ", count: formatter.currentIndentation))
    }
}

extension EmptyCode: SwiftBaseCode {
    func codeString(with formatter: CodeFormatter) -> String? {
        return nil
    }
}

extension KeywordsCode: SwiftBaseCode {
    func codeString(with formatter: CodeFormatter) -> String? {
        let unindentedFormatter = formatter.withIdentation(0)
        guard let formattedCodeString = unindentedFormatter.optionalCodeString(from: content()) else {
            return nil
        }
        
        let unindentedCodeString = keywordsWithSpaceString() + formattedCodeString
        return formatter.optionalCodeString(from: unindentedCodeString)
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
        formatter
            .withIdentation(indentation ?? formatter.indentationWidth)
            .optionalCodeString(from: content())
    }
}

extension LinesPrefix: SwiftBaseCode {
    func codeString(with formatter: CodeFormatter) -> String? {
        if prefixAtIndentationLevel {
            let unindentedFormatter = formatter.withIdentation(0)
            guard let formattedCodeString = unindentedFormatter.optionalCodeString(from: content()) else {
                return nil
            }
            
            let unindentedCodeString = formattedCodeString.linesPrefixed(with: self.prefix)
            return formatter.optionalCodeString(from: unindentedCodeString)
        } else {
            guard let formattedCodeString = formatter.optionalCodeString(from: content()) else {
                return nil
            }
            
            return formattedCodeString.linesPrefixed(with: self.prefix)
        }
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

// MARK: - Extension

private extension String {
    func linesPrefixed(with prefix: String) -> String {
        var string = ""
        self.enumerateLines { line, stop in
            string += prefix + line + "\n"
        }
        _ = string.popLast()
        return string
    }
}

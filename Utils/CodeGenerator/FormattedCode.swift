import Foundation

typealias SingleLineString = String

/// A type representing a code in a formatted way.
indirect enum FormattedCode {
    /// **End part:** Defines a line of code.
    case line(SingleLineString)
    /// **End part:** Defines a line of code made of two parts.
    case alignedLine(SingleLineString, alignedPart: SingleLineString)
    /// **Composite part:** Defines a vertical stack of code.
    case stack([FormattedCode])
    /// **Composite part:** Defines a code that isn't subject to modifiers defined outside.
    case container(FormattedCode)
}

// MARK: - Modifiers

extension FormattedCode {
    static let emptyLine = FormattedCode.line("")
    static let empty = FormattedCode.stack([])
    
    func contained() -> FormattedCode {
        .container(self)
    }
    
    var isEmpty: Bool {
        switch self {
        case .line(_), .alignedLine(_, _): return false
        case .stack(let formattedCodes):
            return !formattedCodes.contains { !$0.isEmpty }
        case .container(let formattedCode):
            return formattedCode.isEmpty
        }
    }
    
    // MARK: Indentation
    
    func indented(by indent: String) -> FormattedCode {
        switch self {
        case .line(let string):
            return .line(indent + string)
        case .alignedLine(let string, alignedPart: let alignedPart):
            return .alignedLine(indent + string, alignedPart: alignedPart)
        case .stack(let formattedCodes):
            return .stack(formattedCodes.map { $0.indented(by: indent) })
        case .container(let formattedCode):
            return .container(formattedCode.indented(by: indent))
        }
    }
    
    // MARK: Alignment
    
    func aligned(offset: Int) -> FormattedCode {
        aligned(alignWidth: maxAlignableWidth() + offset)
    }
    
    private func aligned(alignWidth: Int) -> FormattedCode {
        switch self {
        case .line(_):
            return self
        case .alignedLine(let string, alignedPart: let alignedPart):
            let whitespacesCount = max(alignWidth - string.count, 0)
            let whitespaceString = String(repeating: " ", count: whitespacesCount)
            return .line(string + whitespaceString + alignedPart)
        case .stack(let formattedCodes):
            return .stack(formattedCodes.map { $0.aligned(alignWidth: alignWidth) })
        case .container(let formattedCode):
            return .container(formattedCode.aligned(alignWidth: alignWidth))
        }
    }
    
    private func maxAlignableWidth() -> Int {
        switch self {
        case .line(_):
            return 0
        case .alignedLine(let string, _):
            return string.count
        case .stack(let formattedCodes):
            return formattedCodes
                .map { $0.maxAlignableWidth() }
                .max() ?? 0
        case .container(let formattedCode):
            return formattedCode.maxAlignableWidth()
        }
    }
    
    func unaligned() -> FormattedCode {
        switch self {
        case .line(_):
            return self
        case .alignedLine(let string, alignedPart: let alignedPart):
            return .line(string + alignedPart)
        case .stack(let formattedCodes):
            return .stack(formattedCodes.map { $0.unaligned() })
        case .container(let formattedCode):
            return .container(formattedCode.unaligned())
        }
    }
    
    // MARK: Spacing
    
    static func lineSpace(_ count: Int) -> FormattedCode {
        FormattedCode.stack([FormattedCode].init(repeating: .emptyLine, count: count))
    }
    
    func interspace(lineCount: Int) -> FormattedCode {
        switch self {
        case .line(_), .alignedLine(_, _), .container(_):
            return self
        case .stack(let formattedCodes):
            let spaceCode = FormattedCode.lineSpace(lineCount)
            var spacedCodes = [FormattedCode]()
            
            for code in formattedCodes where !code.isEmpty {
                if !spacedCodes.isEmpty {
                    spacedCodes.append(spaceCode)
                }
                spacedCodes.append(code.interspace(lineCount: lineCount))
            }
            
            return .stack(spacedCodes)
        }
    }
    
    func padding(_ lineCount: Int) -> FormattedCode {
        .stack([.lineSpace(lineCount), self, .lineSpace(lineCount)])
    }
    
    func padding(_ side: Side, _ lineCount: Int) -> FormattedCode {
        switch side {
        case .top:
            return .stack([.lineSpace(lineCount), self])
        case .bottom:
            return .stack([self, .lineSpace(lineCount)])
        }
    }
    
    // MARK: Prefix & Suffix
    
    func prefixed(by prefix: FormattedCode) -> FormattedCode {
        switch self {
        case .line(let string):
            switch prefix {
            case .line(let stringPrefix):
                return .line(stringPrefix + string)
            case .alignedLine(let stringPrefix, alignedPart: let alignedPartPrefix):
                return .alignedLine(stringPrefix, alignedPart: alignedPartPrefix + string)
            case .stack(let formattedCodesPrefix):
                var codes = formattedCodesPrefix.filter { !$0.isEmpty }
                guard !codes.isEmpty else {
                    return self
                }
                
                codes[codes.count-1] = codes[codes.count-1]
                    .suffixed(by: self)
                return .stack(codes)
            case .container(let formattedCodePrefix):
                return .container(formattedCodePrefix.suffixed(by: self))
            }
        case .alignedLine(let string, alignedPart: let alignedPart):
            switch prefix {
            case .line(let stringPrefix):
                return .alignedLine(stringPrefix + string, alignedPart: alignedPart)
            case .alignedLine(let stringPrefix, alignedPart: let alignedPartPrefix):
                return .alignedLine(stringPrefix + alignedPartPrefix + string, alignedPart: alignedPart)
            case .stack(let formattedCodesPrefix):
                var codes = formattedCodesPrefix.filter { !$0.isEmpty }
                guard !codes.isEmpty else {
                    return self
                }
                
                codes[codes.count-1] = codes[codes.count-1]
                    .suffixed(by: self)
                return .stack(codes)
            case .container(let formattedCodePrefix):
                return .container(formattedCodePrefix.suffixed(by: self))
            }
        case .stack(let formattedCodes):
            var codes = formattedCodes.filter { !$0.isEmpty }
            guard !codes.isEmpty else {
                return prefix
            }
            
            codes[0] = codes[0]
                .prefixed(by: prefix)
            return .stack(codes)
        case .container(let formattedCode):
            return .container(formattedCode.prefixed(by: prefix))
        }
    }
    
    func suffixed(by suffix: FormattedCode) -> FormattedCode {
        switch self {
        case .line(let string):
            switch suffix {
            case .line(let stringSuffix):
                return .line(string + stringSuffix)
            case .alignedLine(let stringSuffix, alignedPart: let alignedPartSuffix):
                return .alignedLine(string + stringSuffix, alignedPart: alignedPartSuffix)
            case .stack(let formattedCodesSuffix):
                var codes = formattedCodesSuffix.filter { !$0.isEmpty }
                guard !codes.isEmpty else {
                    return self
                }
                
                codes[0] = codes[0]
                    .prefixed(by: self)
                return .stack(codes)
            case .container(let formattedCodeSuffix):
                return .container(formattedCodeSuffix.prefixed(by: self))
            }
        case .alignedLine(let string, alignedPart: let alignedPart):
            switch suffix {
            case .line(let stringSuffix):
                return .alignedLine(string, alignedPart: alignedPart + stringSuffix)
            case .alignedLine(let stringSuffix, alignedPart: let alignedPartSuffix):
                return .alignedLine(string + alignedPart + stringSuffix, alignedPart: alignedPartSuffix)
            case .stack(let formattedCodesSuffix):
                var codes = formattedCodesSuffix.filter { !$0.isEmpty }
                guard !codes.isEmpty else {
                    return self
                }
                
                codes[0] = codes[0]
                    .prefixed(by: self)
                return .stack(codes)
            case .container(let formattedCodeSuffix):
                return .container(formattedCodeSuffix.prefixed(by: self))
            }
        case .stack(let formattedCodes):
            var codes = formattedCodes.filter { !$0.isEmpty }
            guard !codes.isEmpty else {
                return suffix
            }
            
            codes[codes.count-1] = codes[codes.count-1]
                .suffixed(by: suffix)
            return .stack(codes)
        case .container(let formattedCode):
            return .container(formattedCode.suffixed(by: suffix))
        }
    }
}

// MARK: - String generation

extension FormattedCode {
    private func lines() -> [String] {
        switch self {
        case .line(let string):
            return [string]
        case .alignedLine(let string, alignedPart: let alignedPart):
            return [string + alignedPart]
        case .stack(let formattedCodes):
            return formattedCodes.flatMap { $0.lines() }
        case .container(let formattedCode):
            return formattedCode.lines()
        }
    }
    
    func codeString() -> String {
        var string = ""
        for (index, line) in lines().enumerated() {
            if index > 0 {
                string += "\n"
            }
            string += line
        }
        return string
    }
}

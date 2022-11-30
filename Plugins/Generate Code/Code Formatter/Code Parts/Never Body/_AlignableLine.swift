import Foundation

/// A line of code that can be aligned.
public struct _AlignableLine: SwiftCode {
    let mainCodeString: String
    private(set) var alignableCode: String?
    
    init(_ string: String) {
        mainCodeString = string
    }
    
    init(components: [String]) {
        mainCodeString = components.reduce("", { partialResult, component in
            partialResult + component
        })
    }
    
    public var body: Never { fatalError() }
    
    static func + (lhs: _AlignableLine, rhs: _AlignableLine) -> _AlignableLine {
        if let lhsAlignableCode = lhs.alignableCode,
           let rhsAlignableCode = rhs.alignableCode {
            return _AlignableLine(lhs.mainCodeString + lhsAlignableCode + rhs.mainCodeString)
                .alignableCode(rhsAlignableCode)
        } else if let lhsAlignableCode = lhs.alignableCode {
            return _AlignableLine(lhs.mainCodeString + lhsAlignableCode + rhs.mainCodeString)
        } else if let rhsAlignableCode = rhs.alignableCode {
            return _AlignableLine(lhs.mainCodeString + rhs.mainCodeString)
                .alignableCode(rhsAlignableCode)
        } else {
            return _AlignableLine(lhs.mainCodeString + rhs.mainCodeString)
        }
    }
    
    static func + (lhs: _AlignableLine, rhs: String) -> _AlignableLine {
        lhs + _AlignableLine(rhs)
    }
    
    func containsNewLinesCharacter() -> Bool {
        if mainCodeString.unicodeScalars.contains(where: { char in
            CharacterSet.newlines.contains(char)
        }) == true {
            return true
        }
        
        guard let alignableCode else { return false }
        
        return alignableCode.unicodeScalars.contains(where: { char in
            CharacterSet.newlines.contains(char)
        })
    }
    
    // MARK: Modifiers
    
    func alignableCode(_ content: String) -> _AlignableLine {
        var new = self
        new.alignableCode = content
        return new
    }
    
    func unaligned() -> _AlignableLine {
        guard let alignableCode else {
            return self
        }
        
        return _AlignableLine(components: [mainCodeString, alignableCode])
    }
}

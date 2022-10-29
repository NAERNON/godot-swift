import Foundation

public struct Case: SwiftCode, AlignableCode {
    let name: String
    let value: String?
    fileprivate var alignmentLength: Int? = nil
    
    public init(_ name: String,
                value: String? = nil) {
        self.name = name
        self.value = value
    }
    
    init<T>(_ name: String,
            typedValue: T?) where T: CustomStringConvertible {
        self.init(name, value: typedValue?.description)
    }
    
    public var body: some SwiftCode {
        var string = ""
        string += caseWithNameString
        if value != nil {
            string += alignmentString
            string += equalValueString
        }
        return string
    }
    
    private var caseWithNameString: String {
        return "case " + name
    }
    
    public var alignableContentLength: Int {
        caseWithNameString.count + 1
    }
    
    private var alignmentString: String {
        let numberOfAlignmentSpaces: Int
        if let alignmentLength {
            numberOfAlignmentSpaces = max(alignmentLength - alignableContentLength + 1, 0)
        } else {
            numberOfAlignmentSpaces = 1
        }
        
        return String(repeating: " ", count: numberOfAlignmentSpaces)
    }
    
    private var equalValueString: String {
        guard let value else {
            return ""
        }
        
        return "= " + value
    }
}

extension Case {
    public func aligned(_ length: Int) -> some SwiftCode {
        var code = self
        code.alignmentLength = length
        return code
    }
}

import Foundation

public struct Property: SwiftCode {
    let name: String
    let value: String?
    let type: String?
    let isVar: Bool
    let isOptional: Bool
    let isStatic: Bool
    fileprivate var alignmentLength: Int? = nil
    
    init(_ name: String,
         value: String?,
         type: String?,
         isVar: Bool,
         isOptional: Bool,
         isStatic: Bool) {
        self.name = name
        self.value = value
        self.type = type
        self.isVar = isVar
        self.isOptional = isOptional
        self.isStatic = isStatic
    }
    
    public enum TypedValue<T> where T: CustomStringConvertible {
        case none
        case `nil`
        case value(T)
    }
    
    init<T>(_ name: String,
            typedValue: TypedValue<T>,
            type: T.Type,
            isVar: Bool,
            isOptional: Bool,
            isStatic: Bool) where T: CustomStringConvertible {
        
        let valueString: String?
        switch typedValue {
        case .none: valueString = nil
        case .nil: valueString = "nil"
        case .value(let value): valueString = value.description
        }
        
        self.init(name,
                  value: valueString,
                  type: String(describing: T.self),
                  isVar: isVar,
                  isOptional: isOptional,
                  isStatic: isStatic)
    }
    
    public var body: some SwiftCode {
        var string = ""
        string += keywordsString
        string += nameWithTypeString
        if value != nil {
            string += alignmentString
            string += equalValueString
        }
        return string
    }
    
    private var keywordsString: String {
        var string = ""
        if isStatic {
            string += "static "
        }
        string += isVar ? "var" : "let"
        string += " "
        return string
    }
    
    private var nameWithTypeString: String {
        var string = ""
        string += name
        if let type {
            string += ": " + type
        }
        return string
    }
    
    public var alignableContentLength: Int {
        (keywordsString + nameWithTypeString).count + 1
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

extension Property: AlignableCode {
    public func aligned(_ length: Int) -> some SwiftCode {
        var code = self
        code.alignmentLength = length
        return code
    }
}

import Foundation

public struct Property: SwiftCode {
    let name: String
    let value: String?
    let type: String?
    fileprivate var isVar: Bool = false
    fileprivate var isOptional: Bool = false
    fileprivate var alignmentLength: Int? = nil
    fileprivate var keywords: [Keyword] = []
    
    init(_ name: String,
         value: String?,
         type: String?) {
        self.name = name
        self.value = value
        self.type = type
    }
    
    public enum TypedValue<T> where T: CustomStringConvertible {
        case none
        case `nil`
        case value(T)
    }
    
    init<T>(_ name: String,
            typedValue: TypedValue<T>,
            type: T.Type) where T: CustomStringConvertible {
        let valueString: String?
        switch typedValue {
        case .none: valueString = nil
        case .nil: valueString = "nil"
        case .value(let value): valueString = value.description
        }
        
        self.init(name,
                  value: valueString,
                  type: String(describing: T.self))
    }
    
    public var body: some SwiftCode {
        _LineComponentsCode(components: [
            keywordsString,
            nameWithTypeString,
            equalValueString
        ].compactMap { $0 }).keywords(keywords)
    }
    
    private var keywordsString: String {
        isVar ? "var " : "let "
    }
    
    private var nameWithTypeString: String {
        var string = ""
        string += name
        if let type {
            string += ": " + type
        }
        return string
    }
    
    private var equalValueString: String? {
        guard let value else {
            return nil
        }
        
        return " = " + value
    }
    
    // MARK: Modifiers
    
    func variable() -> Property {
        var new = self
        new.isVar = true
        return new
    }
    
    func `optional`() -> Property {
        var new = self
        new.isOptional = true
        return new
    }
    
    func `static`() -> Property {
        var new = self
        new.keywords.append(.static)
        return new
    }
    
    func `private`() -> Property {
        var new = self
        new.keywords.append(.private)
        return new
    }
    
    func `public`() -> Property {
        var new = self
        new.keywords.append(.public)
        return new
    }
}

extension Property {
    public func aligned(_ length: Int) -> some SwiftCode {
        var code = self
        code.alignmentLength = length
        return code
    }
}

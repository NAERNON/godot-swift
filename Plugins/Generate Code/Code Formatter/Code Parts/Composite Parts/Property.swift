import Foundation

public struct Property: SwiftCode, AccessControlCode {
    let name: String
    let value: String?
    let type: String?
    private var isVar: Bool = false
    private var isOptional: Bool = false
    private var isStatic: Bool = false
    private var accessControl: AccessControl? = nil
    
    public init(_ name: String,
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
    
    public init<T>(_ name: String,
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
        _CodeComponentsLine(components: [keywordsString,
                                         nameWithTypeString,
                                         equalValueString].compactMap { $0 })
        .keywords(keywords)
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
    
    private var keywords: [Keyword] {
        var keywords = [Keyword]()
        if isStatic {
            keywords.append(.static)
        }
        if let accessControl {
            keywords.append(accessControl.keyword)
        }
        return keywords
    }
    
    // MARK: Modifiers
    
    public func variable() -> Property {
        var new = self
        new.isVar = true
        return new
    }
    
    public func `optional`() -> Property {
        var new = self
        new.isOptional = true
        return new
    }
    
    public func `static`() -> Property {
        var new = self
        new.isStatic = true
        return new
    }
    
    public func accessControl(_ accessControl: AccessControl?) -> Property {
        var new = self
        new.accessControl = accessControl
        return new
    }
}

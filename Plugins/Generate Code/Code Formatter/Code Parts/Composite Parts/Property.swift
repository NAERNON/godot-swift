import Foundation

// MARK: - Base Property

public protocol _BaseProperty: SwiftCode {
    var body: _AlignableLine { get }
}

public extension _BaseProperty {
    func letDefined() -> _PropertyDefinition<Self> {
        _PropertyDefinition(self, definitionType: .let)
    }
    
    func varDefined() -> _PropertyDefinition<Self> {
        _PropertyDefinition(self, definitionType: .var)
    }
}

// MARK: - Property

public struct Property: SwiftCode, _BaseProperty, _AssignableProperty {
    let name: String
    
    public init(_ name: String) {
        self.name = name
    }
    
    public var body: _AlignableLine {
        _AlignableLine(name)
    }
    
    // MARK: Modifiers
    
    public func selfProperty() -> _SelfProperty {
        _SelfProperty(property: self)
    }
}

// MARK: - Self Property

public struct _SelfProperty: SwiftCode, _BaseProperty, _AssignableProperty {
    private let property: Property
    
    fileprivate init(property: Property) {
        self.property = property
    }
    
    public var body: _AlignableLine {
        _AlignableLine("self." + property.name)
    }
}

// MARK: - Property Definition

private enum DefinitionType {
    case `let`
    case `var`
    
    var codeString: String {
        switch self {
        case .let:
            return "let "
        case .var:
            return "var "
        }
    }
}

public struct _PropertyDefinition<PropertyType: _BaseProperty>: SwiftCode, _AssignableProperty, AccessControlCode {
    private let property: PropertyType
    private let definitionType: DefinitionType
    private var type: String?
    private var isStatic: Bool = false
    private var accessControl: AccessControl? = nil
    
    fileprivate init(_ property: PropertyType, definitionType: DefinitionType) {
        self.property = property
        self.definitionType = definitionType
    }
    
    public var body: _AlignableLine {
        _AlignableLine(definitionType.codeString).keywords(keywords)
        + property.body
        + _AlignableLine(typeCodeString)
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
    
    private var typeCodeString: String {
        if let type {
            return ": " + type
        }
        return ""
    }
    
    // MARK: Modifiers
    
    public func `static`() -> _PropertyDefinition {
        var new = self
        new.isStatic = true
        return new
    }
    
    public func type(_ type: String) -> _PropertyDefinition {
        var new = self
        new.type = type
        return new
    }
    
    public func type<T>(_ type: T.Type) -> _PropertyDefinition {
        self.type(String(describing: type.self))
    }
    
    public func accessControl(_ accessControl: AccessControl?) -> _PropertyDefinition {
        var new = self
        new.accessControl = accessControl
        return new
    }
}

// MARK: - Equals To

public protocol _AssignableProperty {
    var body: _AlignableLine { get }
}

public extension _AssignableProperty {
    func assign(value: String?) -> _PropertyAssignment<Self> {
        _PropertyAssignment(self, value: value ?? "nil")
    }
}

public struct _PropertyAssignment<PropertyType: _AssignableProperty>: SwiftCode {
    private let property: PropertyType
    private let value: String
    private var isAlignable: Bool = true
    
    fileprivate init(_ property: PropertyType, value: String) {
        self.property = property
        self.value = value
    }
    
    public var body: some SwiftCode {
        if isAlignable {
            mainLine
        } else {
            mainLine.unaligned()
        }
    }
    
    private var mainLine: _AlignableLine {
        property.body.alignableCode(" = " + value)
    }
    
    // MARK: Modifiers
    
    public func unaligned() -> _PropertyAssignment {
        var new = self
        new.isAlignable = false
        return new
    }
}

import Foundation

// MARK: - Property

/// A simple property with a name. This is the start for any definition or assignment.
///
/// Ex:
/// ```
/// aValue
/// ```
public struct Property: SwiftCode, _AssignableProperty {
    let name: String
    
    public init(_ name: String) {
        self.name = name
    }
    
    public var body: _AlignableLine {
        _AlignableLine(name)
    }
    
    // MARK: Modifiers
    
    public func selfDefined() -> _SelfDefinedProperty {
        _SelfDefinedProperty(property: self)
    }
    
    public func defined(isVar: Bool) -> _PropertyDefinition {
        _PropertyDefinition(self, definitionType: isVar ? .var : .let)
    }
    
    public func letDefined() -> _PropertyDefinition {
        _PropertyDefinition(self, definitionType: .let)
    }
    
    public func varDefined() -> _PropertyDefinition {
        _PropertyDefinition(self, definitionType: .var)
    }
}

// MARK: - Self Defined Property

/// A property with a self before the name.
///
/// Ex:
/// ```
/// self.aValue
/// ```
public struct _SelfDefinedProperty: SwiftCode, _AssignableProperty {
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

/// A property definition. It can be let defined or var defined.
///
/// Ex:
/// ```
/// let aValue
/// ```
public struct _PropertyDefinition: SwiftCode, _AssignableProperty, AccessControlCode {
    private let property: Property
    private let definitionType: DefinitionType
    private var type: String?
    private var isStatic: Bool = false
    public var accessControl: AccessControl? = nil
    public var isPrivateSet: Bool = false
    
    fileprivate init(_ property: Property, definitionType: DefinitionType) {
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
        if isPrivateSet {
            keywords.append(.privateSet)
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
    
    public func privateSet() -> _PropertyDefinition {
        var new = self
        new.isPrivateSet = true
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
}

// MARK: - Equals To

public protocol _AssignableProperty {
    var body: _AlignableLine { get }
}

public extension _AssignableProperty {
    func assign(value: String?) -> _PropertyAssignment<Self> {
        _PropertyAssignment(self, value: value ?? "nil")
    }
    
    func assignComputed<Content: SwiftCode>(@CodeBuilder content: @escaping () -> Content)
    -> _PropertyComputedAssignment<Self, Content> {
        _PropertyComputedAssignment(self, content: content)
    }
    
    func computed(inline: String) -> _PropertyComputed<Self, EmptyCode> {
        _PropertyComputed(self, inline: inline)
    }
    
    func computed<Content: SwiftCode>(@CodeBuilder content: @escaping () -> Content) -> _PropertyComputed<Self, Content> {
        _PropertyComputed(self, content: content)
    }
}

/// A property assignment. A given property is followed by an `=`and a value.
///
/// Ex:
/// ```
/// let aValue = 3
/// ```
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

/// A property computed assignment. A given property is followed by an `=`and a block.
///
/// Ex:
/// ```
/// let aValue = {
///     3
/// }()
/// ```
public struct _PropertyComputedAssignment<PropertyType: _AssignableProperty, Content: SwiftCode>: SwiftCode {
    private let property: PropertyType
    private let content: () -> Content
    
    fileprivate init(_ property: PropertyType, @CodeBuilder content: @escaping () -> Content) {
        self.property = property
        self.content = content
    }
    
    public var body: some SwiftCode {
        property.body + " = {"
        content().indentation()
        "}()"
    }
}

// MARK: - Computed var

/// A computed property with some content.
///
/// Ex:
/// ```
/// var aValue: Int { 3 }
/// ```
public struct _PropertyComputed<PropertyType: _AssignableProperty, Content: SwiftCode>: SwiftCode {
    private let property: PropertyType
    private let inlineString: String?
    private let content: (() -> Content)?
    
    fileprivate init(_ property: PropertyType, content: @escaping () -> Content) {
        self.property = property
        self.inlineString = nil
        self.content = content
    }
    
    fileprivate init(_ property: PropertyType, inline string: String) {
        self.property = property
        self.inlineString = string
        self.content = nil
    }
    
    public var body: some SwiftCode {
        if let inlineString {
            property.body + " { " + inlineString + " }"
        } else if let content = content?() {
            property.body + " {"
            content.indentation()
            "}"
        }
    }
}

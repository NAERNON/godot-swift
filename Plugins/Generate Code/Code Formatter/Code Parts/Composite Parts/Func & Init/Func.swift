import Foundation

public struct Func<Content>: SwiftCode, AccessControlCode where Content: SwiftCode {
    let name: String
    let parameters: [FunctionParameter]
    let returnType: String?
    let content: () -> Content
    private var accessControl: AccessControl? = nil
    private var isStatic: Bool = false
    private var isFinal: Bool = false
    private var isMutating: Bool = false
    
    public init(name: String,
                parameters: FunctionParameter...,
                returnType: String? = nil,
                @CodeBuilder content: @escaping () -> Content) {
        self.init(name: name,
                  parameters: Array(parameters),
                  returnType: returnType,
                  content: content)
    }
    
    public init(name: String,
                parameters: [FunctionParameter],
                returnType: String? = nil,
                @CodeBuilder content: @escaping () -> Content) {
        self.name = name
        self.parameters = parameters
        self.returnType = returnType
        self.content = content
    }
    
    public var body: some SwiftCode {
        mainLineString.keywords(keywords)
        content().indentation()
        "}"
    }
    
    private var mainLineString: String {
        var string = "func " + name + FunctionParameter.parametersCodeString(parameters)
        if let returnType {
            string += " -> " + returnType
        }
        string += " {"
        return string
    }
    
    private var keywords: [Keyword] {
        var keywords = [Keyword]()
        if isStatic {
            keywords.append(.static)
        }
        if isFinal {
            keywords.append(.final)
        }
        if isMutating {
            keywords.append(.mutating)
        }
        if let accessControl {
            keywords.append(accessControl.keyword)
        }
        return keywords
    }
    
    // MARK: Modifiers
    
    public func accessControl(_ accessControl: AccessControl?) -> Func {
        var new = self
        new.accessControl = accessControl
        return new
    }
    
    public func `static`(_ state: Bool = true) -> Func {
        var new = self
        new.isStatic = state
        return new
    }
    
    public func `final`(_ state: Bool = true) -> Func {
        var new = self
        new.isFinal = state
        return new
    }
    
    public func `mutating`(_ state: Bool = true) -> Func {
        var new = self
        new.isMutating = state
        return new
    }
}

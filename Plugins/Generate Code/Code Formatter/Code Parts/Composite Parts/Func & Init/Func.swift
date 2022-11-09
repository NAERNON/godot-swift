import Foundation

public struct Func<Content>: SwiftCode, AccessControlCode where Content: SwiftCode {
    let name: String
    let parameters: [FunctionParameter]
    let returnType: String?
    let content: () -> Content
    private var accessControl: AccessControl? = nil
    private var isStatic: Bool = false
    
    public init(name: String,
                parameters: FunctionParameter...,
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
    
    public func `static`() -> Func {
        var new = self
        new.isStatic = true
        return new
    }
}

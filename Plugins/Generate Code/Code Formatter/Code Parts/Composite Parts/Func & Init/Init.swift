import Foundation

public struct Init<Content>: SwiftCode, AccessControlCode where Content: SwiftCode {
    let parameters: [FunctionParameter]
    let content: () -> Content
    public var accessControl: AccessControl? = nil
    public var isRequired: Bool = false
    public var isOverride: Bool = false
    public var isThrowing: Bool = false
    
    public init(parameters: FunctionParameter..., @CodeBuilder content: @escaping () -> Content) {
        self.init(parameters: Array(parameters), content: content)
    }
    
    public init(parameters: [FunctionParameter], @CodeBuilder content: @escaping () -> Content) {
        self.parameters = parameters
        self.content = content
    }
    
    public var body: some SwiftCode {
        ("init" + FunctionParameter.parametersCodeString(parameters) + throwsAlignableLine + " {").keywords(keywords)
        content().indentation()
        "}"
    }
    
    private var keywords: [Keyword] {
        var keywords = [Keyword]()
        if isRequired {
            keywords.append(.required)
        }
        if isOverride {
            keywords.append(.override)
        }
        if let accessControl {
            keywords.append(accessControl.keyword)
        }
        return keywords
    }
    
    private var throwsAlignableLine: String {
        isThrowing ? " throws" : ""
    }
    
    // MARK: Modifiers
    
    public func `override`(_ state: Bool = true) -> Init {
        var new = self
        new.isOverride = state
        return new
    }
    
    public func `required`(_ state: Bool = true) -> Init {
        var new = self
        new.isRequired = state
        return new
    }
    
    public func `throws`(_ state: Bool = true) -> Init {
        var new = self
        new.isThrowing = state
        return new
    }
}

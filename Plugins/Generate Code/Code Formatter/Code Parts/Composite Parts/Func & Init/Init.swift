import Foundation

public struct Init<Content>: SwiftCode, AccessControlCode where Content: SwiftCode {
    let parameters: [FunctionParameter]
    let content: () -> Content
    public var accessControl: AccessControl? = nil
    
    public init(parameters: FunctionParameter..., @CodeBuilder content: @escaping () -> Content) {
        self.init(parameters: Array(parameters), content: content)
    }
    
    public init(parameters: [FunctionParameter], @CodeBuilder content: @escaping () -> Content) {
        self.parameters = parameters
        self.content = content
    }
    
    public var body: some SwiftCode {
        ("init" + FunctionParameter.parametersCodeString(parameters) + " {").keywords(keywords)
        content().indentation()
        "}"
    }
    
    private var keywords: [Keyword] {
        if let accessControl {
            return [accessControl.keyword]
        }
        return []
    }
}

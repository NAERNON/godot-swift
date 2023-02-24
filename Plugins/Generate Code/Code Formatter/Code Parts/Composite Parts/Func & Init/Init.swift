import Foundation

public struct Init<Content>: Code where Content : Code {
    let parameters: [FunctionParameter]
    let content: () -> Content
    var isThrowing: Bool = false
    
    public init(parameters: FunctionParameter..., @CodeBuilder content: @escaping () -> Content) {
        self.init(parameters: Array(parameters), content: content)
    }
    
    public init(parameters: [FunctionParameter], @CodeBuilder content: @escaping () -> Content) {
        self.parameters = parameters
        self.content = content
    }
    
    public var body: some Code {
        ("init" + FunctionParameter.parametersCodeString(parameters) + throwsAlignableLine).curlyBraces {
            content()
        }
    }
    
    private var throwsAlignableLine: String {
        isThrowing ? " throws" : ""
    }
    
    // MARK: Modifiers
    
    public func `throws`(_ state: Bool = true) -> Init {
        var new = self
        new.isThrowing = state
        return new
    }
}

import Foundation

public struct Func<Content>: Code where Content : Code {
    let name: String
    let parameters: [FunctionParameter]
    let returnType: String?
    let content: () -> Content
    var isThrowing: Bool = false
    
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
    
    public var body: some Code {
        mainLineString.curlyBraces {
            content()
        }
    }
    
    private var mainLineString: String {
        var string = "func " + name + FunctionParameter.parametersCodeString(parameters)
        if let returnType {
            string += " -> " + returnType
        }
        string += throwsAlignableLine
        return string
    }
    
    private var throwsAlignableLine: String {
        isThrowing ? " throws" : ""
    }
    
    // MARK: Modifiers
    
    public func `throws`(_ state: Bool = true) -> Func {
        var new = self
        new.isThrowing = state
        return new
    }
}

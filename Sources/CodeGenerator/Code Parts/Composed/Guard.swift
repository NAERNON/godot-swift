import Foundation

public struct Guard<Content>: Code where Content : Code {
    let condition: String
    let content: () -> Content
    
    public init(condition: String,
                @CodeBuilder else content: @escaping () -> Content) {
        self.condition = condition
        self.content = content
    }
    
    public var body: some Code {
        "guard \(condition) else".curlyBraces {
            content()
        }
    }
}

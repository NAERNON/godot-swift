import Foundation

public struct Deinit<Content>: Code where Content : Code {
    let content: () -> Content
    
    public init(@CodeBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    public var body: some Code {
        "deinit".curlyBraces {
            content()
        }
    }
}

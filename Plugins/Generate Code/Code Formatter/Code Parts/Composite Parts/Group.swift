import Foundation

public struct Group<Content>: SwiftCode where Content: SwiftCode {
    let content: () -> Content
    
    public init(@CodeBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    public var body: some SwiftCode {
        content()
    }
}

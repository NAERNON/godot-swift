import Foundation

public struct AnySwiftCode: Code, RootCode {
    let content: () -> any Code
    
    public init(@CodeBuilder content: @escaping () -> any Code) {
        self.content = content
    }
    
    public var body: Never { fatalError() }
    
    func formattedCode() -> FormattedCode {
        content().formatted()
    }
}

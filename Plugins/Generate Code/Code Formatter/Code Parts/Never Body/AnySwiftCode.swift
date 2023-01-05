import Foundation

public struct AnySwiftCode: SwiftCode {
    let content: () -> any SwiftCode
    
    public init(@CodeBuilder content: @escaping () -> any SwiftCode) {
        self.content = content
    }
    
    public var body: Never { fatalError() }
}

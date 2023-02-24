import Foundation

public struct EmptyCode: Code, RootCode {
    public init() {}
    
    public var body: Never { fatalError() }
    
    func formattedCode() -> FormattedCode {
        .empty
    }
}

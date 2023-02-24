import Foundation

extension Never: Code, RootCode {
    public var body: Never { fatalError() }
    
    func formattedCode() -> FormattedCode {
        .empty
    }
}

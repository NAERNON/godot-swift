import Foundation

public struct CodeFormatter {
    public init() {}
    
    public func string(from code: some Code) -> String {
        code.formatted().codeString()
    }
}

import Foundation

public struct Throw: Code {
    let throwCode: String
    
    public init(_ throwCode: String) {
        self.throwCode = throwCode
    }
    
    public var body: some Code {
        "throw \(throwCode)"
    }
}

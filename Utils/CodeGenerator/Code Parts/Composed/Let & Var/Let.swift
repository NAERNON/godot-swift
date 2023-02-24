import Foundation

public struct Let: Code {
    let name: String
    
    public init(_ name: String) {
        self.name = name
    }
    
    public var body: some Code {
        "let \(name)"
    }
}

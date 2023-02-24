import Foundation

public struct Var: Code {
    let name: String
    
    public init(_ name: String) {
        self.name = name
    }
    
    public var body: some Code {
        "var \(name)"
    }
}

import Foundation

public struct Typealias: Code {
    let newType: String
    let type: String
    
    public init(_ newType: String, type: String) {
        self.newType = newType
        self.type = type
    }
    
    public var body: some Code {
        "typealias \(newType) = \(type)"
    }
}

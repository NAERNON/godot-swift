import Foundation

public struct Return: Code {
    let value: String?
    
    public init(_ value: String? = nil) {
        self.value = value
    }
    
    public var body: some Code {
        if let value {
            return "return " + value
        } else {
            return "return"
        }
    }
}

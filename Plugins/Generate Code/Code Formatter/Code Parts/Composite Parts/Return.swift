import Foundation

public struct Return: SwiftCode {
    let value: String?
    
    public init(_ value: String? = nil) {
        self.value = value
    }
    
    public var body: some SwiftCode {
        if let value {
            return "return " + value
        } else {
            return "return"
        }
    }
}

import Foundation

public struct Import: Code {
    let framework: String
    
    public init(_ framework: String) {
        self.framework = framework
    }
    
    public var body: some Code {
        "import \(framework)"
    }
    
    public static let foundation = Import("Foundation")
}

import Foundation

public struct Import: SwiftCode {
    let framework: String
    
    public init(_ framework: String) {
        self.framework = framework
    }
    
    public var body: some SwiftCode {
        "import \(framework)"
    }
    
    public static let foundation = Import("Foundation")
}

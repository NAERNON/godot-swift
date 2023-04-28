import Foundation

public struct Import: Code {
    let module: String
    
    public init(_ module: String) {
        self.module = module
    }
    
    public var body: some Code {
        "import \(module)"
    }
    
    public static let foundation = Import("Foundation")
}

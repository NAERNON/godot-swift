import Foundation

struct EmptyCode: SwiftCode {
    public init() {}
    
    public var body: Never { fatalError() }
}

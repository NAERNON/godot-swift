import Foundation

public struct Spacer: SwiftCode {
    let lineCount: Int
    
    public init(lineCount: Int = 1) {
        self.lineCount = lineCount
    }
    
    public var body: some SwiftCode {
        ForEach(0..<lineCount) { _ in
            ""
        }
    }
}

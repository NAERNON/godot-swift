import Foundation

public struct Mark: SwiftCode {
    let text: String
    let isSeparator: Bool
    
    public init(text: String, isSeparator: Bool = false) {
        self.text = text
        self.isSeparator = isSeparator
    }
    
    public var body: some SwiftCode {
        Comment(style: .line) {
            markString
        }
    }
    
    private var markString: String {
        var string = "MARK: "
        if isSeparator {
            string += "- "
        }
        string += text
        return string
    }
}

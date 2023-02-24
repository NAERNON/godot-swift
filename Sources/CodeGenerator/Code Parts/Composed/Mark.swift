import Foundation

public struct Mark: Code {
    let text: String
    let isSeparator: Bool
    
    public init(_ text: String, isSeparator: Bool = false) {
        self.text = text
        self.isSeparator = isSeparator
    }
    
    public var body: some Code {
        Comment(.line) {
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

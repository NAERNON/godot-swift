import Foundation

public struct Deinit<Content>: SwiftCode, AccessControlCode where Content: SwiftCode {
    let content: () -> Content
    public var accessControl: AccessControl? = nil
    
    public init(@CodeBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    public var body: some SwiftCode {
        "deinit {".keywords(keywords)
        content().indentation()
        "}"
    }
    
    private var keywords: [Keyword] {
        var keywords = [Keyword]()
        if let accessControl {
            keywords.append(accessControl.keyword)
        }
        return keywords
    }
}

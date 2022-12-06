import Foundation

public struct Var<Content>: SwiftCode, AccessControlCode where Content: SwiftCode {
    let name: String
    let type: String
    let content: () -> Content
    private var accessControl: AccessControl? = nil
    private var isStatic: Bool = false
    private var isFinal: Bool = false
    
    public init(_ name: String,
                type: String,
                @CodeBuilder content: @escaping () -> Content) {
        self.name = name
        self.type = type
        self.content = content
    }
    
    public var body: some SwiftCode {
        "var \(name): \(type)  {".keywords(keywords)
        content().indentation()
        "}"
    }
    
    private var keywords: [Keyword] {
        var keywords = [Keyword]()
        if isStatic {
            keywords.append(.static)
        }
        if isFinal {
            keywords.append(.final)
        }
        if let accessControl {
            keywords.append(accessControl.keyword)
        }
        return keywords
    }
    
    // MARK: Modifiers
    
    public func accessControl(_ accessControl: AccessControl?) -> Var {
        var new = self
        new.accessControl = accessControl
        return new
    }
    
    public func `static`(_ state: Bool = true) -> Var {
        var new = self
        new.isStatic = state
        return new
    }
    
    public func `final`(_ state: Bool = true) -> Var {
        var new = self
        new.isFinal = state
        return new
    }
}

import Foundation

public struct Enum<Content>: SwiftCode, AccessControlCode where Content: SwiftCode {
    let name: String
    let type: String?
    let content: () -> Content
    private var accessControl: AccessControl? = nil
    
    public init(_ name: String,
                type: String? = nil,
                @CodeBuilder content: @escaping () -> Content) {
        self.name = name
        self.type = type
        self.content = content
    }
    
    public init<T>(_ name: String,
                   type: T.Type,
                   @CodeBuilder content: @escaping () -> Content) {
        self.init(name, type: String(describing: T.self), content: content)
    }
    
    public var body: some SwiftCode {
        Block(enumString) {
            content()
        }.accessControl(accessControl)
    }
    
    private var enumString: String {
        var string = ""
        string += "enum " + name
        if let type {
            string += ": " + type
        }
        return string
    }
    
    // MARK: Modifiers
    
    public func accessControl(_ accessControl: AccessControl?) -> Enum {
        var new = self
        new.accessControl = accessControl
        return new
    }
}

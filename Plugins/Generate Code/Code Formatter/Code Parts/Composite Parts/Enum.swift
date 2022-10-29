import Foundation

public struct Enum<Content>: SwiftCode, AccessibleCode where Content: SwiftCode {
    let name: String
    let type: String?
    let content: () -> Content
    public var accessControl: AccessControl = .hiddenInternal
    
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
}

import Foundation

public struct Enum<Content>: SwiftCode, AccessControlCode where Content: SwiftCode {
    let name: String
    let type: String?
    let content: () -> Content
    public var accessControl: AccessControl? = nil
    
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
        _Construct(type: "enum", name: name, extensions: extensions) {
            content()
        }.accessControl(accessControl)
    }
    
    private var extensions: [String] {
        if let type {
            return [type]
        }
        return []
    }
}

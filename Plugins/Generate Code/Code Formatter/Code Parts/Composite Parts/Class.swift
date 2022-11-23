import Foundation

public struct Class<Content>: SwiftCode, AccessControlCode where Content: SwiftCode {
    let name: String
    let extensions: [String]
    let content: () -> Content
    private var accessControl: AccessControl? = nil
    
    public init(_ name: String,
                extensions: [String] = [],
                @CodeBuilder content: @escaping () -> Content) {
        self.name = name
        self.extensions = extensions
        self.content = content
    }
    
    public var body: some SwiftCode {
        _Construct(type: "class", name: name, extensions: extensions) {
            content()
        }.accessControl(accessControl)
    }
    
    // MARK: Modifiers
    
    public func accessControl(_ accessControl: AccessControl?) -> Class {
        var new = self
        new.accessControl = accessControl
        return new
    }
}

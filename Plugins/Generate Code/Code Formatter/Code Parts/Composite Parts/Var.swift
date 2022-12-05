import Foundation

public struct Var<Content>: SwiftCode, AccessControlCode where Content: SwiftCode {
    let name: String
    let type: String
    let content: () -> Content
    private var accessControl: AccessControl? = nil
    
    public init(_ name: String,
                type: String,
                @CodeBuilder content: @escaping () -> Content) {
        self.name = name
        self.type = type
        self.content = content
    }
    
    public var body: some SwiftCode {
        _Construct(type: "var", name: name, extensions: [type]) {
            content()
        }.accessControl(accessControl)
    }
    
    // MARK: Modifiers
    
    public func accessControl(_ accessControl: AccessControl?) -> Var {
        var new = self
        new.accessControl = accessControl
        return new
    }
}

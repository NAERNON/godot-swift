import Foundation

public struct Struct<Content>: SwiftCode, AccessControlCode where Content: SwiftCode {
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
        BlockWithExtension(type: "struct", name: name, extensions: extensions, content: content)
            .accessControl(accessControl)
    }
    
    // MARK: Modifiers
    
    public func accessControl(_ accessControl: AccessControl?) -> Struct {
        var new = self
        new.accessControl = accessControl
        return new
    }
}

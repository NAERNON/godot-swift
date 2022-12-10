import Foundation

public struct Extension<Content>: SwiftCode, AccessControlCode where Content: SwiftCode {
    let name: String
    let extensions: [String]
    let content: () -> Content
    public var accessControl: AccessControl? = nil
    
    public init(_ name: String,
                extensions: [String] = [],
                @CodeBuilder content: @escaping () -> Content) {
        self.name = name
        self.extensions = extensions
        self.content = content
    }
    
    public var body: some SwiftCode {
        _Construct(type: "extension", name: name, extensions: extensions) {
            content()
        }.accessControl(accessControl)
    }
}

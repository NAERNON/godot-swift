import Foundation

public struct Struct<Content>: SwiftCode, AccessibleCode where Content: SwiftCode {
    let name: String
    let extensions: [String]
    let content: () -> Content
    public var accessControl: AccessControl = .hiddenInternal
    
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
}

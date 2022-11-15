import Foundation

/// A construct is a type defined by a keyword, and that can have extensions.
///
/// Ex:
/// ```
/// class SomeClass: SomeExtension {
///     ...
/// }
/// ```
public struct _Construct<Content>: SwiftCode, AccessControlCode where Content: SwiftCode {
    let type: String
    let name: String
    let content: () -> Content
    let extensions: [String]
    private var accessControl: AccessControl? = nil
    
    public init(type: String, name: String, extensions: [String] = [], @CodeBuilder content: @escaping () -> Content) {
        self.type = type
        self.name = name
        self.extensions = extensions
        self.content = content
    }
    
    public var body: some SwiftCode {
        header().keywords(keywords)
        content().indentation()
        "}"
    }
    
    private func header() -> String {
        var header = type + " " + name
        
        guard !extensions.isEmpty else {
            return header
        }
        
        header += ":"
        for (index, extensionName) in extensions.enumerated() {
            if index > 0 {
                header += ","
            }
            
            header += " " + extensionName
        }
        
        header += " {"
        return header
    }
    
    private var keywords: [Keyword] {
        if let accessControl {
            return [accessControl.keyword]
        }
        return []
    }
    
    // MARK: Modifiers
    
    public func accessControl(_ accessControl: AccessControl?) -> _Construct {
        var new = self
        new.accessControl = accessControl
        return new
    }
}

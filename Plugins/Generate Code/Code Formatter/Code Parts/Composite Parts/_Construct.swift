import Foundation

/// A construct is a type defined by a keyword, and that can have extensions.
///
/// Ex:
/// ```
/// class SomeClass: SomeExtension {
///     ...
/// }
/// ```
struct _Construct<Content>: Code where Content : Code {
    let type: String
    let name: String
    let content: () -> Content
    let extensions: [String]
    
    init(type: String, name: String, extensions: [String] = [], @CodeBuilder content: @escaping () -> Content) {
        self.type = type
        self.name = name
        self.extensions = extensions
        self.content = content
    }
    
    public var body: some Code {
        header().curlyBraces {
            content()
        }
    }
    
    private func header() -> String {
        var header = type + " " + name
        
        if !extensions.isEmpty {
            header += ":"
            for (index, extensionName) in extensions.enumerated() {
                if index > 0 {
                    header += ","
                }
                
                header += " " + extensionName
            }
        }
        
        return header
    }
}

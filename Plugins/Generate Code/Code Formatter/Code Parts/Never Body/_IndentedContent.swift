import Foundation

struct _IndentedContent<Content>: SwiftCode where Content: SwiftCode {
    enum Indentation {
        case level(Int)
        case spaces(Int)
    }
    
    /// The length of the indentation. Can be defined as a level or as spaces.
    let indentation: Indentation
    let content: () -> Content
    
    fileprivate init(_ indentation: Indentation, @CodeBuilder content: @escaping () -> Content) {
        self.indentation = indentation
        self.content = content
    }
    
    var body: Never { fatalError() }
}

extension SwiftCode {
    public func indentation(level: Int = 1) -> some SwiftCode {
        _IndentedContent(.level(level)) {
            self
        }
    }
    
    public func indentation(spaces: Int) -> some SwiftCode {
        _IndentedContent(.spaces(spaces)) {
            self
        }
    }
}

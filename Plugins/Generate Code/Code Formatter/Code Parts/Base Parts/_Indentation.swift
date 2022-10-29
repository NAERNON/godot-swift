import Foundation

struct _Indentation<Content>: SwiftCode where Content: SwiftCode {
    /// The length of the indentation. A `nil` indentation will use the basic indentation.
    let indentation: Int?
    let content: () -> Content
    
    init(_ indentation: Int? = nil, @CodeBuilder content: @escaping () -> Content) {
        self.indentation = indentation
        self.content = content
    }
    
    var body: Never { fatalError() }
}

extension SwiftCode {
    public func indentation(_ indentation: Int? = nil) -> some SwiftCode {
        _Indentation(indentation) {
            self
        }
    }
}

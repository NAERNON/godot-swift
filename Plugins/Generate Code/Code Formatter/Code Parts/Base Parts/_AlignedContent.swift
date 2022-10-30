import Foundation

struct _AlignedContent<Content>: SwiftCode where Content: SwiftCode {
    let offset: Int
    let content: () -> Content
    
    init(_ offset: Int, @CodeBuilder content: @escaping () -> Content) {
        self.offset = offset
        self.content = content
    }
    
    var body: Never { fatalError() }
}


extension SwiftCode {
    func aligned(_ offset: Int = 0) -> some SwiftCode {
        _AlignedContent(offset) {
            self
        }
    }
}

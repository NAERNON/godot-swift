import Foundation

internal struct Padding<Content>: SwiftCode where Content: SwiftCode {
    let topPadding: Int
    let bottomPadding: Int
    let content: () -> Content
    
    public init(top: Int, bottom: Int, @CodeBuilder content: @escaping () -> Content) {
        self.topPadding = top
        self.bottomPadding = bottom
        self.content = content
    }
    
    var body: some SwiftCode {
        Spacer(lineCount: topPadding)
        
        content()
        
        Spacer(lineCount: bottomPadding)
    }
}

extension SwiftCode {
    public func padding(top: Int = 0, bottom: Int = 0) -> some SwiftCode {
        Padding(top: top, bottom: bottom) {
            self
        }
    }
    
    public func topPadding() -> some SwiftCode {
        self.padding(top: 1)
    }
    
    public func bottomPadding() -> some SwiftCode {
        self.padding(bottom: 1)
    }
}

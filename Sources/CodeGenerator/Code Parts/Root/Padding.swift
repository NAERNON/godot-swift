import Foundation

public enum Side {
    case top, bottom
}

struct Padding<Content>: Code, RootCode where Content : Code {
    let topPadding: Int
    let bottomPadding: Int
    let content: () -> Content
    
    init(top: Int, bottom: Int, @CodeBuilder content: @escaping () -> Content) {
        self.topPadding = top
        self.bottomPadding = bottom
        self.content = content
    }
    
    var body: Never { fatalError() }
    
    func formattedCode() -> FormattedCode {
        content().formatted()
            .padding(.top, topPadding)
            .padding(.bottom, bottomPadding)
            .contained()
    }
}

public extension Code {
    func padding(_ lineCount: Int = 1) -> some Code {
        Padding(top: lineCount, bottom: lineCount) { self }
    }
    
    func padding(_ side: Side, _ lineCount: Int = 1) -> some Code {
        Padding(top: side == .top ? lineCount : 0, bottom: side == .bottom ? lineCount : 0) { self }
    }
}

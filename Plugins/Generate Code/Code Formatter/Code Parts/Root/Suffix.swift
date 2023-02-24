import Foundation

struct Suffix<Content, SuffixContent>: Code, RootCode
where Content : Code,
      SuffixContent : Code {
    let suffix: () -> SuffixContent
    let content: () -> Content
    
    init(@CodeBuilder content: @escaping () -> Content,
         @CodeBuilder suffix: @escaping () -> SuffixContent) {
        self.suffix = suffix
        self.content = content
    }
    
    var body: Never { fatalError() }
    
    func formattedCode() -> FormattedCode {
        content().formatted().suffixed(by: suffix().formatted()).contained()
    }
}

public extension Code {
    func suffix(_ suffix: String) -> some Code {
        Suffix { self } suffix: { suffix }
    }
    
    func suffix(@CodeBuilder _ suffix: @escaping () -> some Code) -> some Code {
        Suffix { self } suffix: { suffix() }
    }
}

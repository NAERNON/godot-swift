import Foundation

struct Prefix<Content, PrefixContent>: Code, RootCode
where Content : Code,
      PrefixContent : Code {
    let prefix: () -> PrefixContent
    let content: () -> Content

    init(@CodeBuilder content: @escaping () -> Content,
         @CodeBuilder prefix: @escaping () -> PrefixContent) {
        self.prefix = prefix
        self.content = content
    }

    var body: Never { fatalError() }

    func formattedCode() -> FormattedCode {
        content().formatted().prefixed(by: prefix().formatted()).contained()
    }
}

public extension Code {
    func prefix(_ prefix: String) -> some Code {
        Prefix { self } prefix: { prefix }
    }
    
    func prefix(@CodeBuilder _ prefix: @escaping () -> some Code) -> some Code {
        Prefix { self } prefix: { prefix() }
    }
}

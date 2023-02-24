import Foundation

struct CurlyBraces<Content, BracesContent>: Code
where Content : Code,
      BracesContent : Code {
    let content: () -> Content
    let bracesContent: () -> BracesContent
    
    init(@CodeBuilder content: @escaping () -> Content,
         @CodeBuilder bracesContent: @escaping () -> BracesContent) {
        self.content = content
        self.bracesContent = bracesContent
    }
    
    var body: some Code {
        content().suffix {
            " {"
            bracesContent().indent()
            "}"
        }
    }
}

public extension Code {
    func curlyBraces(@CodeBuilder _ content: @escaping () -> some Code) -> some Code {
        CurlyBraces { self } bracesContent: { content() }
    }
}

import Foundation

struct CurlyBraces<Content, BracesContent>: Code
where Content : Code,
      BracesContent : Code {
    let content: () -> Content
    let additionalText: String?
    let bracesContent: () -> BracesContent
    
    init(@CodeBuilder content: @escaping () -> Content,
         additionalText: String?,
         @CodeBuilder bracesContent: @escaping () -> BracesContent) {
        self.content = content
        self.additionalText = additionalText
        self.bracesContent = bracesContent
    }
    
    var body: some Code {
        content().suffix {
            if let additionalText {
                " { " + additionalText
            } else {
                " {"
            }
            bracesContent().indent()
            "}"
        }
    }
}

public struct CurlyBracesBlock<Content>: Code
where Content : Code {
    let additionalText: String?
    let content: () -> Content
    
    public init(_ additionalText: String? = nil,
                @CodeBuilder content: @escaping () -> Content) {
        self.additionalText = additionalText
        self.content = content
    }
    
    public var body: some Code {
        if let additionalText {
            "{ " + additionalText
        } else {
            "{"
        }
        content().indent()
        "}"
    }
}

public extension Code {
    func curlyBraces(_ additionalText: String? = nil, @CodeBuilder _ content: @escaping () -> some Code) -> some Code {
        CurlyBraces(content: { self }, additionalText: additionalText, bracesContent: content)
    }
}

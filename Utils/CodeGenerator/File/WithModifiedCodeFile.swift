import Foundation

struct WithModifiedCodeFile<Content, CodeContent>: File
where Content : File,
      CodeContent : Code {
    let file: Content
    private let _code: (Content.FileCode) -> CodeContent
    
    init(file: Content, code: @escaping (Content.FileCode) -> CodeContent) {
        self.file = file
        self._code = code
    }
    
    var path: String { file.path }
    
    var code: CodeContent { _code(file.code) }
}

public extension File {
    func withCode(@CodeBuilder _ body: @escaping (FileCode) -> some Code) -> some File {
        WithModifiedCodeFile(file: self) { code in
            body(code)
        }
    }
}

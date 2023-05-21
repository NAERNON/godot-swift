import Foundation

struct PrefixedPathFile<Content>: File where Content : File {
    let file: Content
    let prefix: String
    
    init(file: Content, prefix: String) {
        self.file = file
        self.prefix = prefix
    }
    
    var path: String { prefix + file.path }
    
    var code: Content.FileCode { file.code }
}

public extension File {
    func prefixPath(with prefix: String) -> some File {
        PrefixedPathFile(file: self, prefix: prefix)
    }
    
    func prefixPath(withURL url: URL) -> some File {
        PrefixedPathFile(file: self, prefix: url.path())
    }
    
    func insideFolder(_ folderName: String) -> some File {
        PrefixedPathFile(file: self, prefix: folderName + "/")
    }
}

import Foundation

protocol SwiftFile {
    associatedtype Code: SwiftCode
    
    var path: String { get }
    
    @CodeBuilder
    var code: Code { get }
}

extension SwiftFile {
    func name() -> String {
        path.components(separatedBy: "/").last ?? ""
    }
}

private struct PrefixedPathSwiftFile<Content: SwiftFile>: SwiftFile {
    let file: Content
    let prefix: String
    
    fileprivate init(file: Content, prefix: String) {
        self.file = file
        self.prefix = prefix
    }
    
    var path: String { prefix + file.path }
    
    var code: Content.Code { file.code }
}

extension SwiftFile {
    func insideDirectory(_ folderName: String) -> some SwiftFile {
        PrefixedPathSwiftFile(file: self, prefix: folderName + "/")
    }
}

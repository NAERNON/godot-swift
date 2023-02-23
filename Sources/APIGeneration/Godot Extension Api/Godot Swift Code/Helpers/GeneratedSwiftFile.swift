import Foundation
import CodeGenerator

protocol GeneratedSwiftFile {
    associatedtype FileCode: Code
    
    var path: String { get }
    
    @CodeBuilder
    var code: FileCode { get }
}

extension GeneratedSwiftFile {
    func name() -> String {
        path.components(separatedBy: "/").last ?? ""
    }
}

private struct PrefixedPathSwiftFile<Content: GeneratedSwiftFile>: GeneratedSwiftFile {
    let file: Content
    let prefix: String
    
    fileprivate init(file: Content, prefix: String) {
        self.file = file
        self.prefix = prefix
    }
    
    var path: String { prefix + file.path }
    
    var code: Content.FileCode { file.code }
}

extension GeneratedSwiftFile {
    func insideDirectory(_ folderName: String) -> some GeneratedSwiftFile {
        PrefixedPathSwiftFile(file: self, prefix: folderName + "/")
    }
}

import Foundation
import CodeGenerator

protocol GeneratedFile {
    associatedtype FileCode: Code
    
    var path: String { get }
    
    @CodeBuilder
    var code: FileCode { get }
}

extension GeneratedFile {
    func name() -> String {
        path.components(separatedBy: "/").last ?? ""
    }
}

private struct PrefixedPathFile<Content: GeneratedFile>: GeneratedFile {
    let file: Content
    let prefix: String
    
    fileprivate init(file: Content, prefix: String) {
        self.file = file
        self.prefix = prefix
    }
    
    var path: String { prefix + file.path }
    
    var code: Content.FileCode { file.code }
}

extension GeneratedFile {
    func insideDirectory(_ folderName: String) -> some GeneratedFile {
        PrefixedPathFile(file: self, prefix: folderName + "/")
    }
}

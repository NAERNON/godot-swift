import Foundation

public protocol File {
    associatedtype FileCode: Code
    
    var path: String { get }
    
    @CodeBuilder
    var code: FileCode { get }
}

public extension File {
    var url: URL {
        .init(filePath: path)
    }
    
    var name: String {
        url.lastPathComponent
    }
}

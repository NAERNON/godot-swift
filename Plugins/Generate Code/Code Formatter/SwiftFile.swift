import Foundation

public protocol SwiftFile {
    associatedtype Code: SwiftCode
    
    var name: String { get }
    
    @CodeBuilder
    var code: Code { get }
}

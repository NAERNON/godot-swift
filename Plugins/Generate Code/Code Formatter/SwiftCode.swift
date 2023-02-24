import Foundation

public protocol Code {
    associatedtype Body: Code
    
    @CodeBuilder
    var body: Body { get }
}
